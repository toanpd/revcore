﻿using Data.Structures.Npc;
using Data.Structures.Player;

namespace WorldServer.OuterNetwork.Write
{
    public class SpPlayerExpAndPointUp : OuterNetworkSendPacket
    {
        protected Player Player;
        protected long Added;
        protected Npc Npc;



        public SpPlayerExpAndPointUp(Player p, long added = 0, Npc npc = null)
        {
            Player = p;
            Added = added;
            Npc = npc;
        }

        public override void Write(System.IO.BinaryWriter writer)
        {
            long CurrentExp = Player.Exp - Data.Data.PlayerExperience[Player.Level - 1];
            long MaxExpOfLevel = Data.Data.PlayerExperience[Player.Level] - Data.Data.PlayerExperience[Player.Level - 1];

            if (CurrentExp < 1)
            {
                Player.Exp = Data.Data.PlayerExperience[Player.Level - 1];
                CurrentExp = 0;
            }

            WriteQ(writer, (CurrentExp < 1) ? 0 : CurrentExp); // Current Player Exp
            WriteQ(writer, MaxExpOfLevel); // Max exp of level

            WriteD(writer, 0);
            WriteD(writer, Player.SkillPoint); // Ki Point

            // Crafting
            WriteH(writer, Player.CraftType); // type
            WriteH(writer, Player.CraftLevel); // level
            WriteD(writer, Player.CraftExp); // exp
            //
            if (Player.GetJobLevel() >= 6)
            {
                Player.AscensionPoint += Player.CurrentAscensionPoint;
                if (Player.AscensionPoint >= 50000000) 
                {
                    int FreeSlot = Player.Inventory.GetFreeSlot();
                    if (FreeSlot != -1)
                    {
                        StorageItem item = new StorageItem() { ItemId = 1000000714, Amount = 1 };
                        Global.Global.StorageService.AddItem(Player, Player.Inventory, item);
                    }
                }
                WriteD(writer, Player.AscensionPoint);
                WriteD(writer, Player.CurrentAscensionPoint);
                Player.CurrentAscensionPoint = 0;
            }
            else
            {
                WriteD(writer, 0);
                WriteD(writer, 0);
            }
        }
    }
}

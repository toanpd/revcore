﻿using Data.Structures.Creature;
using Data.Structures.Npc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace WorldServer.OuterNetwork.Write
{
    public class SpNpcMove : OuterNetworkSendPacket
    {
        protected Creature Creature;
        protected int MoveStyle; // 1 normal : 2 run (when see player if agressive)

        public SpNpcMove(Creature creature, float x, float y, float z, int style)
        {
            Creature = creature;
            Creature.Position.X = x;
            Creature.Position.Y = y;
            Creature.Position.Z = z;
            MoveStyle = style;
        }

        public override void Write(System.IO.BinaryWriter writer)
        {
            WriteF(writer, Creature.Position.X);
            WriteF(writer, Creature.Position.Y);
            WriteF(writer, Creature.Position.Z);

            WriteD(writer, -1);
            WriteD(writer, MoveStyle);
            WriteF(writer, Creature.Position.X);
            WriteD(writer, (Creature as Npc).LifeStats.Hp);

            writer.Seek(2, SeekOrigin.Begin);
            WriteH(writer, (int)(Creature as Npc).UID);
            writer.Seek(0, SeekOrigin.End);
        }
    }
}

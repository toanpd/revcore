﻿using Data.Interfaces;
using System;
using System.IO;
using System.Text;
using Utilities;

namespace WorldServer.OuterNetwork
{
    public abstract class OuterNetworkRecvPacket : IRecvPacket
    {
        public BinaryReader Reader;
        public OuterNetworkConnection Connection;

        public void Process(OuterNetworkConnection connection)
        {
            Connection = connection;

            using (Reader = new BinaryReader(new MemoryStream(Connection.Buffer)))
            {
                Read();
            }

            try
            {
                Process();
            }
            catch (Exception ex)
            {
                Log.WarnException("ARecvPacket", ex);
            }
        }

        public abstract void Read();

        public abstract void Process();

        protected int ReadD()
        {
            try
            {
                return Reader.ReadInt32();
            }
            catch (Exception)
            {
                Log.Warn("Missing D for: {0}", GetType());
            }
            return 0;
        }

        protected int ReadC()
        {
            try
            {
                return Reader.ReadByte() & 0xFF;
            }
            catch (Exception)
            {
                Log.Warn("Missing C for: {0}", GetType());
            }
            return 0;
        }

        protected int ReadH()
        {
            try
            {
                return Reader.ReadInt16() & 0xFFFF;
            }
            catch (Exception)
            {
                Log.Warn("Missing H for: {0}", GetType());
            }
            return 0;
        }

        protected double ReadDf()
        {
            try
            {
                return Reader.ReadDouble();
            }
            catch (Exception)
            {
                Log.Warn("Missing DF for: {0}", GetType());
            }
            return 0;
        }

        protected float ReadF()
        {
            try
            {
                return Reader.ReadSingle();
            }
            catch (Exception)
            {
                Log.Warn("Missing F for: {0}", GetType());
            }
            return 0;
        }

        protected long ReadQ()
        {
            try
            {
                return Reader.ReadInt64();
            }
            catch (Exception)
            {
                Log.Warn("Missing Q for: {0}", GetType());
            }
            return 0;
        }

        protected String ReadS()
        {
            Encoding encoding = Encoding.Default;
            String result = "";
            try
            {
                var len = ReadC();
                result = encoding.GetString(ReadB(len));
            }
            catch (Exception)
            {
                Log.Warn("Missing S for: {0}", GetType());
            }
            return result;
        }

        protected String ReadSN()
        {
            Encoding encoding = Encoding.Default;
            String result = "";
            try
            {
                result = encoding.GetString(ReadB(15));
            }
            catch (Exception)
            {
                Log.Warn("Missing SN for: {0}", GetType());
            }
            return result;
        }

        protected byte[] ReadB(int length)
        {
            byte[] result = new byte[length];
            try
            {
                Reader.Read(result, 0, length);
            }
            catch (Exception)
            {
                Log.Warn("Missing byte[] for: {0}", GetType());
            }
            return result;
        }
    }
}

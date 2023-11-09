#if UNITY_EDITOR || !EFRAME_ILR
// This file was generated by a tool; you should avoid making direct changes.
// Consider using 'partial classes' to extend these types
// Input: CPB.tmp

#pragma warning disable CS1591, CS0168, CS0612, CS3021, IDE1006
namespace ILR.Gen.Proto.CPB
{
    public partial class CGI_Hello : EP.U3D.LIBRARY.PROTO.IProto
    {
        private CGI_Hello()
        {
        }

        private int mID;
        public int ID
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.ID({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mID; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.ID({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mID = value; }
        }

        private string mDesc;
        public string Desc
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Desc({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mDesc; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Desc({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mDesc = value; }
        }

        public int Size()
        {
            int size = 0;
            int tsize = 0;
            size += 1; // tag: 8
            tsize = -1;
            {
                var number = ID;
                if (number < 0) size += 10;
                else { size += 1; while (number > 127) { number >>= 7; size++; } }
            }
            if (tsize != -1)
            {
                size += tsize;
                size += 1; while (tsize > 127) { tsize >>= 7; size++; } 
            }
            size += 1; // tag: 18
            tsize = -1;
            tsize = string.IsNullOrEmpty(Desc) ? 0 : System.Text.Encoding.UTF8.GetByteCount(Desc);
            if (tsize != -1)
            {
                size += tsize;
                size += 1; while (tsize > 127) { tsize >>= 7; size++; } 
            }
            return size;
        }

        public void Encode(EP.U3D.LIBRARY.PROTO.ProtoEncoder encoder)
        {
            int start;
            encoder.WriteTag(8);
            encoder.WriteInt32(ID);
            encoder.WriteTag(18);
            encoder.WriteString(Desc);
        }

        public void Decode(EP.U3D.LIBRARY.PROTO.ProtoDecoder decoder, int end = -1)
        {
            ID = 0;
            Desc = "";
            uint tag;
            while ((tag = decoder.ReadTag()) != 0)
            {
                switch (tag)
                {
                    case 8:
                        {
                            ID = decoder.ReadInt32();
                        }
                        break;
                    case 18:
                        {
                            Desc = decoder.ReadString();
                        }
                        break;
                    default:
                        {
                            decoder.ReadEnd(tag);
                            return;
                        }
                }
                if (end != -1 && decoder.Position >= end) return;
            }
        }

        public void Reset()
        {
            mDisposed = false;
            mObtained = false;
            ID = 0;
            Desc = "";
        }

        public CGI_Hello Clone()
        {
            var nobj = Get();
            nobj.ID = ID;
            nobj.Desc = Desc;
            return nobj;
        }

        public EP.U3D.LIBRARY.PROTO.IProto Copy()
        {
            return Clone();
        }

        private bool mObtained;
        public bool Obtain(bool get = false)
        {
            if (!get) mObtained = true;
            return mObtained;
        }

        private static EP.U3D.LIBRARY.PROTO.ObjectPool mPool;
        public EP.U3D.LIBRARY.PROTO.ObjectPool Pool()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.PROTO.ObjectPool(() => new CGI_Hello());
            return mPool;
        }

        public static CGI_Hello Get()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.PROTO.ObjectPool(() => new CGI_Hello());
            var obj = (CGI_Hello)mPool.Get();
            obj.Reset();
            return obj;
        }

        private bool mDisposed;
        public void Put()
        {
            if (mDisposed) return;
            if (mPool == null) mPool = new EP.U3D.LIBRARY.PROTO.ObjectPool(() => new CGI_Hello());
            mDisposed = true;
            mPool.Put(this);
        }
    }

}

#pragma warning restore CS1591, CS0168, CS0612, CS3021, IDE1006
#endif
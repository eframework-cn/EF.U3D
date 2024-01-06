#if UNITY_EDITOR || !EFRAME_ILR
// This file was generated by a tool; you should avoid making direct changes.
// Consider using 'partial classes' to extend these types
// Input: MPB.tmp

#pragma warning disable CS1591, CS0168, CS0612, CS3021, IDE1006
namespace ILR.Gen.Proto.MPB
{
    /// <summary>
    /// 请求结果通知
    /// </summary>
    public partial class GM_Common : EP.U3D.LIBRARY.PROTO.IProto
    {
        private GM_Common()
        {
        }

        private int mResult;
        /// <summary>
        /// 通知类型
        /// </summary>
        public int Result
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Result({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mResult; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Result({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mResult = value; }
        }

        private System.Collections.Generic.List<string> mParams = new System.Collections.Generic.List<string>();
        public System.Collections.Generic.List<string> Params { get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Params({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mParams; }}

        public int Size()
        {
            int size = 0;
            int tsize = 0;
            size += 1; // tag: 8
            tsize = -1;
            {
                var number = Result;
                if (number < 0) size += 10;
                else { size += 1; while (number > 127) { number >>= 7; size++; } }
            }
            if (tsize != -1)
            {
                size += tsize;
                size += 1; while (tsize > 127) { tsize >>= 7; size++; } 
            }
            for(var i = 0; i < Params.Count; i++)
            {
                var itor = Params[i];
                size += 1; // tag: 18
                tsize = -1;
                tsize = string.IsNullOrEmpty(itor) ? 0 : System.Text.Encoding.UTF8.GetByteCount(itor);
                if (tsize != -1)
                {
                    size += tsize;
                    size += 1; while (tsize > 127) { tsize >>= 7; size++; } 
                }
            }
            return size;
        }

        public void Encode(EP.U3D.LIBRARY.PROTO.ProtoEncoder encoder)
        {
            int start;
            encoder.WriteTag(8);
            encoder.WriteInt32(Result);
            for(var i = 0; i < Params.Count; i++)
            {
                var itor = Params[i];
                encoder.WriteTag(18);
                encoder.WriteString(itor);
            }
        }

        public void Decode(EP.U3D.LIBRARY.PROTO.ProtoDecoder decoder, int end = -1)
        {
            Result = 0;
            Params.Clear();
            uint tag;
            while ((tag = decoder.ReadTag()) != 0)
            {
                switch (tag)
                {
                    case 8:
                        {
                            Result = decoder.ReadInt32();
                        }
                        break;
                    case 18:
                        {
                            var o = decoder.ReadString();
                            Params.Add(o);
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
            Result = 0;
            Params.Clear();
        }

        public GM_Common Clone()
        {
            var nobj = Get();
            nobj.Result = Result;
            for(var i = 0; i < Params.Count; i++)
            {
                var itor = Params[i];
                nobj.Params.Add(itor);
            }
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

        private static EP.U3D.LIBRARY.POOL.ObjectPool mPool;
        public EP.U3D.LIBRARY.POOL.ObjectPool Pool()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_Common());
            return mPool;
        }

        public static GM_Common Get()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_Common());
            var obj = (GM_Common)mPool.Get();
            obj.Reset();
            return obj;
        }

        private bool mDisposed;
        public void Put()
        {
            if (mDisposed) return;
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_Common());
            mDisposed = true;
            mPool.Put(this);
        }
    }

    /// <summary>
    /// 请求登录
    /// </summary>
    public partial class GM_LoginReq : EP.U3D.LIBRARY.PROTO.IProto
    {
        private GM_LoginReq()
        {
        }

        private string mAccount;
        public string Account
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Account({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mAccount; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Account({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mAccount = value; }
        }

        private string mPassword;
        public string Password
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Password({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mPassword; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Password({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mPassword = value; }
        }

        public int Size()
        {
            int size = 0;
            int tsize = 0;
            size += 1; // tag: 10
            tsize = -1;
            tsize = string.IsNullOrEmpty(Account) ? 0 : System.Text.Encoding.UTF8.GetByteCount(Account);
            if (tsize != -1)
            {
                size += tsize;
                size += 1; while (tsize > 127) { tsize >>= 7; size++; } 
            }
            size += 1; // tag: 18
            tsize = -1;
            tsize = string.IsNullOrEmpty(Password) ? 0 : System.Text.Encoding.UTF8.GetByteCount(Password);
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
            encoder.WriteTag(10);
            encoder.WriteString(Account);
            encoder.WriteTag(18);
            encoder.WriteString(Password);
        }

        public void Decode(EP.U3D.LIBRARY.PROTO.ProtoDecoder decoder, int end = -1)
        {
            Account = "";
            Password = "";
            uint tag;
            while ((tag = decoder.ReadTag()) != 0)
            {
                switch (tag)
                {
                    case 10:
                        {
                            Account = decoder.ReadString();
                        }
                        break;
                    case 18:
                        {
                            Password = decoder.ReadString();
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
            Account = "";
            Password = "";
        }

        public GM_LoginReq Clone()
        {
            var nobj = Get();
            nobj.Account = Account;
            nobj.Password = Password;
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

        private static EP.U3D.LIBRARY.POOL.ObjectPool mPool;
        public EP.U3D.LIBRARY.POOL.ObjectPool Pool()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_LoginReq());
            return mPool;
        }

        public static GM_LoginReq Get()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_LoginReq());
            var obj = (GM_LoginReq)mPool.Get();
            obj.Reset();
            return obj;
        }

        private bool mDisposed;
        public void Put()
        {
            if (mDisposed) return;
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_LoginReq());
            mDisposed = true;
            mPool.Put(this);
        }
    }

    /// <summary>
    /// 响应登录
    /// </summary>
    public partial class GM_LoginResp : EP.U3D.LIBRARY.PROTO.IProto
    {
        private GM_LoginResp()
        {
        }

        private int mID;
        /// <summary>
        /// 玩家ID
        /// </summary>
        public int ID
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.ID({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mID; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.ID({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mID = value; }
        }

        private int mStatus;
        /// <summary>
        /// 1-服务暂停
        /// </summary>
        public int Status
        {
            get { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Status({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else return mStatus; }
            set { if (mDisposed) throw new System.Exception($"{GetType().FullName}.Status({GetHashCode()}) has been disposed, consider using 'Obtain' to keep reference of it."); else mStatus = value; }
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
            if (Status != 0)
            {
                size += 1; // tag: 16
                tsize = -1;
                {
                    var number = Status;
                    if (number < 0) size += 10;
                    else { size += 1; while (number > 127) { number >>= 7; size++; } }
                }
                if (tsize != -1)
                {
                    size += tsize;
                    size += 1; while (tsize > 127) { tsize >>= 7; size++; } 
                }
            }
            return size;
        }

        public void Encode(EP.U3D.LIBRARY.PROTO.ProtoEncoder encoder)
        {
            int start;
            encoder.WriteTag(8);
            encoder.WriteInt32(ID);
            if (Status != 0)
            {
                encoder.WriteTag(16);
                encoder.WriteInt32(Status);
            }
        }

        public void Decode(EP.U3D.LIBRARY.PROTO.ProtoDecoder decoder, int end = -1)
        {
            ID = 0;
            Status = 0;
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
                    case 16:
                        {
                            Status = decoder.ReadInt32();
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
            Status = 0;
        }

        public GM_LoginResp Clone()
        {
            var nobj = Get();
            nobj.ID = ID;
            nobj.Status = Status;
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

        private static EP.U3D.LIBRARY.POOL.ObjectPool mPool;
        public EP.U3D.LIBRARY.POOL.ObjectPool Pool()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_LoginResp());
            return mPool;
        }

        public static GM_LoginResp Get()
        {
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_LoginResp());
            var obj = (GM_LoginResp)mPool.Get();
            obj.Reset();
            return obj;
        }

        private bool mDisposed;
        public void Put()
        {
            if (mDisposed) return;
            if (mPool == null) mPool = new EP.U3D.LIBRARY.POOL.ObjectPool(() => new GM_LoginResp());
            mDisposed = true;
            mPool.Put(this);
        }
    }

}

#pragma warning restore CS1591, CS0168, CS0612, CS3021, IDE1006
#endif
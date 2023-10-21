using System;
using ILRuntime.CLR.Method;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif

namespace EP.U3D.LIBRARY.PROTO
{   
    public class IProtoAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType
        {
            get
            {
                return typeof(EP.U3D.LIBRARY.PROTO.IProto);
            }
        }

        public override Type AdaptorType
        {
            get
            {
                return typeof(Adapter);
            }
        }

        public override object CreateCLRInstance(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance)
        {
            return new Adapter(appdomain, instance);
        }

        public class Adapter : EP.U3D.LIBRARY.PROTO.IProto, CrossBindingAdaptorType
        {
            CrossBindingFunctionInfo<EP.U3D.LIBRARY.PROTO.ObjectPool> mPool_0 = new CrossBindingFunctionInfo<EP.U3D.LIBRARY.PROTO.ObjectPool>("Pool");
            CrossBindingFunctionInfo<System.Int32> mSize_1 = new CrossBindingFunctionInfo<System.Int32>("Size");
            CrossBindingMethodInfo<EP.U3D.LIBRARY.PROTO.ProtoEncoder> mEncode_2 = new CrossBindingMethodInfo<EP.U3D.LIBRARY.PROTO.ProtoEncoder>("Encode");
            CrossBindingMethodInfo<EP.U3D.LIBRARY.PROTO.ProtoDecoder, System.Int32> mDecode_3 = new CrossBindingMethodInfo<EP.U3D.LIBRARY.PROTO.ProtoDecoder, System.Int32>("Decode");
            CrossBindingFunctionInfo<EP.U3D.LIBRARY.PROTO.IProto> mCopy_4 = new CrossBindingFunctionInfo<EP.U3D.LIBRARY.PROTO.IProto>("Copy");
            CrossBindingFunctionInfo<System.Boolean, System.Boolean> mObtain_5 = new CrossBindingFunctionInfo<System.Boolean, System.Boolean>("Obtain");
            CrossBindingMethodInfo mReset_6 = new CrossBindingMethodInfo("Reset");
            CrossBindingMethodInfo mPut_7 = new CrossBindingMethodInfo("Put");

            bool isInvokingToString;
            ILTypeInstance instance;
            ILRuntime.Runtime.Enviorment.AppDomain appdomain;

            public Adapter()
            {

            }

            public Adapter(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance)
            {
                this.appdomain = appdomain;
                this.instance = instance;
            }

            public ILTypeInstance ILInstance { get { return instance; } }

            public EP.U3D.LIBRARY.PROTO.ObjectPool Pool()
            {
                return mPool_0.Invoke(this.instance);
            }

            public System.Int32 Size()
            {
                return mSize_1.Invoke(this.instance);
            }

            public void Encode(EP.U3D.LIBRARY.PROTO.ProtoEncoder encoder)
            {
                mEncode_2.Invoke(this.instance, encoder);
            }

            public void Decode(EP.U3D.LIBRARY.PROTO.ProtoDecoder decoder, System.Int32 end)
            {
                mDecode_3.Invoke(this.instance, decoder, end);
            }

            public EP.U3D.LIBRARY.PROTO.IProto Copy()
            {
                return mCopy_4.Invoke(this.instance);
            }

            public System.Boolean Obtain(System.Boolean get)
            {
                return mObtain_5.Invoke(this.instance, get);
            }

            public void Reset()
            {
                mReset_6.Invoke(this.instance);
            }

            public void Put()
            {
                mPut_7.Invoke(this.instance);
            }

            public override string ToString()
            {
                IMethod m = appdomain.ObjectType.GetMethod("ToString", 0);
                m = instance.Type.GetVirtualMethod(m);
                if (m == null || m is ILMethod)
                {
                    if (!isInvokingToString)
                    {
                        isInvokingToString = true;
                        string res = instance.ToString();
                        isInvokingToString = false;
                        return res;
                    }
                    else
                        return instance.Type.FullName;
                }
                else
                    return instance.Type.FullName;
            }
        }
    }
}


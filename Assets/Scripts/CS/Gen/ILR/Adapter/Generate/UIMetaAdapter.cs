using System;
using ILRuntime.CLR.Method;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif

namespace EP.U3D.LIBRARY.UI
{   
    public class UIMetaAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType
        {
            get
            {
                return typeof(EP.U3D.LIBRARY.UI.UIMeta);
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

        public class Adapter : EP.U3D.LIBRARY.UI.UIMeta, CrossBindingAdaptorType
        {
            CrossBindingFunctionInfo<System.String> mPath_0 = new CrossBindingFunctionInfo<System.String>("Path");
            CrossBindingFunctionInfo<System.Int32> mFixedRQ_1 = new CrossBindingFunctionInfo<System.Int32>("FixedRQ");
            CrossBindingFunctionInfo<EP.U3D.LIBRARY.UI.UIMeta.EventType> mFocus_2 = new CrossBindingFunctionInfo<EP.U3D.LIBRARY.UI.UIMeta.EventType>("Focus");
            CrossBindingFunctionInfo<EP.U3D.LIBRARY.UI.UIMeta.CacheType> mCache_3 = new CrossBindingFunctionInfo<EP.U3D.LIBRARY.UI.UIMeta.CacheType>("Cache");
            CrossBindingFunctionInfo<System.Boolean> mMultiple_4 = new CrossBindingFunctionInfo<System.Boolean>("Multiple");

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

            public System.String Path()
            {
                return mPath_0.Invoke(this.instance);
            }

            public System.Int32 FixedRQ()
            {
                return mFixedRQ_1.Invoke(this.instance);
            }

            public EP.U3D.LIBRARY.UI.UIMeta.EventType Focus()
            {
                return mFocus_2.Invoke(this.instance);
            }

            public EP.U3D.LIBRARY.UI.UIMeta.CacheType Cache()
            {
                return mCache_3.Invoke(this.instance);
            }

            public System.Boolean Multiple()
            {
                return mMultiple_4.Invoke(this.instance);
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


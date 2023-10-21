using System;
using ILRuntime.CLR.Method;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif

namespace EP.U3D.LIBRARY.I18N
{   
    public class ILanguageAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType
        {
            get
            {
                return typeof(EP.U3D.LIBRARY.I18N.ILanguage);
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

        public class Adapter : EP.U3D.LIBRARY.I18N.ILanguage, CrossBindingAdaptorType
        {
            CrossBindingFunctionInfo<System.String> mget_EN_0 = new CrossBindingFunctionInfo<System.String>("get_EN");
            CrossBindingFunctionInfo<System.String> mget_AR_1 = new CrossBindingFunctionInfo<System.String>("get_AR");
            CrossBindingFunctionInfo<System.String> mget_DE_2 = new CrossBindingFunctionInfo<System.String>("get_DE");
            CrossBindingFunctionInfo<System.String> mget_FR_3 = new CrossBindingFunctionInfo<System.String>("get_FR");
            CrossBindingFunctionInfo<System.String> mget_ES_4 = new CrossBindingFunctionInfo<System.String>("get_ES");
            CrossBindingFunctionInfo<System.String> mget_JP_5 = new CrossBindingFunctionInfo<System.String>("get_JP");
            CrossBindingFunctionInfo<System.String> mget_KO_6 = new CrossBindingFunctionInfo<System.String>("get_KO");
            CrossBindingFunctionInfo<System.String> mget_SCN_7 = new CrossBindingFunctionInfo<System.String>("get_SCN");
            CrossBindingFunctionInfo<System.String> mget_TCN_8 = new CrossBindingFunctionInfo<System.String>("get_TCN");
            CrossBindingFunctionInfo<System.String, System.String, System.Boolean, EP.U3D.LIBRARY.I18N.ILanguage> mRead_9 = new CrossBindingFunctionInfo<System.String, System.String, System.Boolean, EP.U3D.LIBRARY.I18N.ILanguage>("Read");

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

            public EP.U3D.LIBRARY.I18N.ILanguage Read(System.String keyvalue, System.String keyname, System.Boolean distinct)
            {
                return mRead_9.Invoke(this.instance, keyvalue, keyname, distinct);
            }

            public System.String EN
            {
            get
            {
                return mget_EN_0.Invoke(this.instance);

            }
            }

            public System.String AR
            {
            get
            {
                return mget_AR_1.Invoke(this.instance);

            }
            }

            public System.String DE
            {
            get
            {
                return mget_DE_2.Invoke(this.instance);

            }
            }

            public System.String FR
            {
            get
            {
                return mget_FR_3.Invoke(this.instance);

            }
            }

            public System.String ES
            {
            get
            {
                return mget_ES_4.Invoke(this.instance);

            }
            }

            public System.String JP
            {
            get
            {
                return mget_JP_5.Invoke(this.instance);

            }
            }

            public System.String KO
            {
            get
            {
                return mget_KO_6.Invoke(this.instance);

            }
            }

            public System.String SCN
            {
            get
            {
                return mget_SCN_7.Invoke(this.instance);

            }
            }

            public System.String TCN
            {
            get
            {
                return mget_TCN_8.Invoke(this.instance);

            }
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


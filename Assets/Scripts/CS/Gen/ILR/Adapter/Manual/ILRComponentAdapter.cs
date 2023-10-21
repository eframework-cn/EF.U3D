using System;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;

namespace EP.U3D.RUNTIME.ILR
{
    public class ILRComponentAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType { get => typeof(ILRComponent); }

        public override Type AdaptorType { get => typeof(ILRComponent); }

        public override object CreateCLRInstance(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance) { throw new Exception("can not new ILRComponent(CLR), please use AddComponent."); }
    }
}

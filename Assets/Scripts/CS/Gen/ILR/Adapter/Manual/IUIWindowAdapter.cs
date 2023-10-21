using System;
using EP.U3D.LIBRARY.UI;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;

namespace EP.U3D.RUNTIME.ILR.UI
{
    public class IUIWindowAdapter : CrossBindingAdaptor
    {
        public override Type BaseCLRType { get => typeof(IUIWindow); }

        public override Type AdaptorType { get => typeof(UIWindow); }

        public override object CreateCLRInstance(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance) { throw new Exception("can not new UIWindow(CLR), please use AddComponent."); }
    }
}

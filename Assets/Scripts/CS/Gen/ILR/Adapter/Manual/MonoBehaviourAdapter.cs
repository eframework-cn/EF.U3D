using UnityEngine;
using System;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;

public class MonoBehaviourAdapter : CrossBindingAdaptor
{
    public override Type BaseCLRType { get => typeof(MonoBehaviour); }

    public override Type AdaptorType { get => typeof(MonoBehaviour); }

    public override object CreateCLRInstance(ILRuntime.Runtime.Enviorment.AppDomain appdomain, ILTypeInstance instance) { throw new Exception("can not new MonoBehaviour(CLR), please use AddComponent."); }
}

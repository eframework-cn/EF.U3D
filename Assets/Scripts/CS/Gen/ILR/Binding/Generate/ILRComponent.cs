using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;

using ILRuntime.CLR.TypeSystem;
using ILRuntime.CLR.Method;
using ILRuntime.Runtime.Enviorment;
using ILRuntime.Runtime.Intepreter;
using ILRuntime.Runtime.Stack;
using ILRuntime.Reflection;
using ILRuntime.CLR.Utils;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif
namespace ILRuntime.Runtime.Generated
{
    unsafe class EP_U3D_RUNTIME_ILR_ILRComponent_Binding
    {
        public static void Register(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            BindingFlags flag = BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly;
            MethodBase method;
            Type[] args;
            Type type = typeof(EP.U3D.RUNTIME.ILR.ILRComponent);
            args = new Type[]{};
            method = type.GetMethod("OnIDisable", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, OnIDisable_0);
            args = new Type[]{};
            method = type.GetMethod("IAwake", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, IAwake_1);
            args = new Type[]{};
            method = type.GetMethod("OnIDestroy", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, OnIDestroy_2);


        }


        static StackObject* OnIDisable_0(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.RUNTIME.ILR.ILRComponent instance_of_this_method = (EP.U3D.RUNTIME.ILR.ILRComponent)typeof(EP.U3D.RUNTIME.ILR.ILRComponent).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.OnIDisable();

            return __ret;
        }

        static StackObject* IAwake_1(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.RUNTIME.ILR.ILRComponent instance_of_this_method = (EP.U3D.RUNTIME.ILR.ILRComponent)typeof(EP.U3D.RUNTIME.ILR.ILRComponent).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.IAwake();

            return __ret;
        }

        static StackObject* OnIDestroy_2(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.RUNTIME.ILR.ILRComponent instance_of_this_method = (EP.U3D.RUNTIME.ILR.ILRComponent)typeof(EP.U3D.RUNTIME.ILR.ILRComponent).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.OnIDestroy();

            return __ret;
        }



    }
}

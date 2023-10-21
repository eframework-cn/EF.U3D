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
    unsafe class EP_U3D_LIBRARY_EVT_EvtManager_Binding
    {
        public static void Register(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            BindingFlags flag = BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly;
            MethodBase method;
            Type[] args;
            Type type = typeof(EP.U3D.LIBRARY.EVT.EvtManager);
            args = new Type[]{};
            method = type.GetMethod("UnregisterAll", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, UnregisterAll_0);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate), typeof(System.Boolean)};
            method = type.GetMethod("Register", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, Register_1);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate)};
            method = type.GetMethod("Unregister", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, Unregister_2);
            args = new Type[]{typeof(EP.U3D.LIBRARY.EVT.Evt)};
            method = type.GetMethod("Notify", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, Notify_3);
            args = new Type[]{};
            method = type.GetMethod("get_Instance", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, get_Instance_4);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate), typeof(System.Boolean)};
            method = type.GetMethod("RegEvt", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, RegEvt_5);
            args = new Type[]{typeof(EP.U3D.LIBRARY.EVT.Evt)};
            method = type.GetMethod("NotifyEvt", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, NotifyEvt_6);

            args = new Type[]{};
            method = type.GetConstructor(flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, Ctor_0);

        }


        static StackObject* UnregisterAll_0(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.EVT.EvtManager instance_of_this_method = (EP.U3D.LIBRARY.EVT.EvtManager)typeof(EP.U3D.LIBRARY.EVT.EvtManager).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.UnregisterAll();

            return __ret;
        }

        static StackObject* Register_1(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 4);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Boolean @once = ptr_of_this_method->Value == 1;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            EP.U3D.LIBRARY.EVT.EventHandlerDelegate @func = (EP.U3D.LIBRARY.EVT.EventHandlerDelegate)typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            System.Int32 @id = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 4);
            EP.U3D.LIBRARY.EVT.EvtManager instance_of_this_method = (EP.U3D.LIBRARY.EVT.EvtManager)typeof(EP.U3D.LIBRARY.EVT.EvtManager).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.Register(@id, @func, @once);

            return __ret;
        }

        static StackObject* Unregister_2(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 3);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.EVT.EventHandlerDelegate @func = (EP.U3D.LIBRARY.EVT.EventHandlerDelegate)typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            System.Int32 @id = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            EP.U3D.LIBRARY.EVT.EvtManager instance_of_this_method = (EP.U3D.LIBRARY.EVT.EvtManager)typeof(EP.U3D.LIBRARY.EVT.EvtManager).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.Unregister(@id, @func);

            return __ret;
        }

        static StackObject* Notify_3(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 2);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.EVT.Evt @evt = (EP.U3D.LIBRARY.EVT.Evt)typeof(EP.U3D.LIBRARY.EVT.Evt).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            EP.U3D.LIBRARY.EVT.EvtManager instance_of_this_method = (EP.U3D.LIBRARY.EVT.EvtManager)typeof(EP.U3D.LIBRARY.EVT.EvtManager).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            instance_of_this_method.Notify(@evt);

            return __ret;
        }

        static StackObject* get_Instance_4(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* __ret = ILIntepreter.Minus(__esp, 0);


            var result_of_this_method = EP.U3D.LIBRARY.EVT.EvtManager.Instance;

            return ILIntepreter.PushObject(__ret, __mStack, result_of_this_method);
        }

        static StackObject* RegEvt_5(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 3);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Boolean @once = ptr_of_this_method->Value == 1;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            EP.U3D.LIBRARY.EVT.EventHandlerDelegate @func = (EP.U3D.LIBRARY.EVT.EventHandlerDelegate)typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            System.Int32 @id = ptr_of_this_method->Value;


            EP.U3D.LIBRARY.EVT.EvtManager.RegEvt(@id, @func, @once);

            return __ret;
        }

        static StackObject* NotifyEvt_6(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.EVT.Evt @evt = (EP.U3D.LIBRARY.EVT.Evt)typeof(EP.U3D.LIBRARY.EVT.Evt).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            EP.U3D.LIBRARY.EVT.EvtManager.NotifyEvt(@evt);

            return __ret;
        }


        static StackObject* Ctor_0(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* __ret = ILIntepreter.Minus(__esp, 0);

            var result_of_this_method = new EP.U3D.LIBRARY.EVT.EvtManager();

            return ILIntepreter.PushObject(__ret, __mStack, result_of_this_method);
        }


    }
}

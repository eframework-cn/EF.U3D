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
    unsafe class EP_U3D_LIBRARY_UI_UIManager_Binding
    {
        public static void Register(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            BindingFlags flag = BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly;
            MethodBase method;
            Type[] args;
            Type type = typeof(EP.U3D.LIBRARY.UI.UIManager);
            args = new Type[]{typeof(EP.U3D.LIBRARY.UI.UIMeta)};
            method = type.GetMethod("FocusWindow", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, FocusWindow_0);
            args = new Type[]{typeof(EP.U3D.LIBRARY.UI.IUIWindow)};
            method = type.GetMethod("FocusWindow", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, FocusWindow_1);
            args = new Type[]{typeof(EP.U3D.LIBRARY.UI.UIMeta), typeof(System.Boolean)};
            method = type.GetMethod("CloseWindow", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, CloseWindow_2);
            args = new Type[]{typeof(EP.U3D.LIBRARY.UI.IUIWindow), typeof(System.Boolean)};
            method = type.GetMethod("CloseWindow", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, CloseWindow_3);
            args = new Type[]{};
            method = type.GetMethod("CloseAllWindows", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, CloseAllWindows_4);
            args = new Type[]{typeof(EP.U3D.LIBRARY.UI.UIMeta[])};
            method = type.GetMethod("CloseAllWindowsExcept", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, CloseAllWindowsExcept_5);
            args = new Type[]{typeof(EP.U3D.LIBRARY.UI.UIMeta)};
            method = type.GetMethod("IsWindowOpened", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, IsWindowOpened_6);


        }


        static StackObject* FocusWindow_0(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.UI.UIMeta @meta = (EP.U3D.LIBRARY.UI.UIMeta)typeof(EP.U3D.LIBRARY.UI.UIMeta).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            EP.U3D.LIBRARY.UI.UIManager.FocusWindow(@meta);

            return __ret;
        }

        static StackObject* FocusWindow_1(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.UI.IUIWindow @window = (EP.U3D.LIBRARY.UI.IUIWindow)typeof(EP.U3D.LIBRARY.UI.IUIWindow).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            EP.U3D.LIBRARY.UI.UIManager.FocusWindow(@window);

            return __ret;
        }

        static StackObject* CloseWindow_2(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 2);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Boolean @resume = ptr_of_this_method->Value == 1;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            EP.U3D.LIBRARY.UI.UIMeta @meta = (EP.U3D.LIBRARY.UI.UIMeta)typeof(EP.U3D.LIBRARY.UI.UIMeta).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            EP.U3D.LIBRARY.UI.UIManager.CloseWindow(@meta, @resume);

            return __ret;
        }

        static StackObject* CloseWindow_3(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 2);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Boolean @resume = ptr_of_this_method->Value == 1;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            EP.U3D.LIBRARY.UI.IUIWindow @window = (EP.U3D.LIBRARY.UI.IUIWindow)typeof(EP.U3D.LIBRARY.UI.IUIWindow).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            EP.U3D.LIBRARY.UI.UIManager.CloseWindow(@window, @resume);

            return __ret;
        }

        static StackObject* CloseAllWindows_4(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* __ret = ILIntepreter.Minus(__esp, 0);


            EP.U3D.LIBRARY.UI.UIManager.CloseAllWindows();

            return __ret;
        }

        static StackObject* CloseAllWindowsExcept_5(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.UI.UIMeta[] @filter = (EP.U3D.LIBRARY.UI.UIMeta[])typeof(EP.U3D.LIBRARY.UI.UIMeta[]).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            EP.U3D.LIBRARY.UI.UIManager.CloseAllWindowsExcept(@filter);

            return __ret;
        }

        static StackObject* IsWindowOpened_6(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.UI.UIMeta @meta = (EP.U3D.LIBRARY.UI.UIMeta)typeof(EP.U3D.LIBRARY.UI.UIMeta).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);


            var result_of_this_method = EP.U3D.LIBRARY.UI.UIManager.IsWindowOpened(@meta);

            object obj_result_of_this_method = result_of_this_method;
            if(obj_result_of_this_method is CrossBindingAdaptorType)
            {    
                return ILIntepreter.PushObject(__ret, __mStack, ((CrossBindingAdaptorType)obj_result_of_this_method).ILInstance);
            }
            return ILIntepreter.PushObject(__ret, __mStack, result_of_this_method);
        }



    }
}

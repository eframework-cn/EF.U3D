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
    unsafe class EP_U3D_LIBRARY_BASE_Constants_Binding
    {
        public static void Register(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            BindingFlags flag = BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly;
            FieldInfo field;
            Type[] args;
            Type type = typeof(EP.U3D.LIBRARY.BASE.Constants);

            field = type.GetField("CONN_SERVER_IP", flag);
            app.RegisterCLRFieldGetter(field, get_CONN_SERVER_IP_0);
            app.RegisterCLRFieldSetter(field, set_CONN_SERVER_IP_0);
            app.RegisterCLRFieldBinding(field, CopyToStack_CONN_SERVER_IP_0, AssignFromStack_CONN_SERVER_IP_0);
            field = type.GetField("CONN_SERVER_PORT", flag);
            app.RegisterCLRFieldGetter(field, get_CONN_SERVER_PORT_1);
            app.RegisterCLRFieldSetter(field, set_CONN_SERVER_PORT_1);
            app.RegisterCLRFieldBinding(field, CopyToStack_CONN_SERVER_PORT_1, AssignFromStack_CONN_SERVER_PORT_1);
            field = type.GetField("CONN_SERVER_UID", flag);
            app.RegisterCLRFieldGetter(field, get_CONN_SERVER_UID_2);
            app.RegisterCLRFieldSetter(field, set_CONN_SERVER_UID_2);
            app.RegisterCLRFieldBinding(field, CopyToStack_CONN_SERVER_UID_2, AssignFromStack_CONN_SERVER_UID_2);


        }



        static object get_CONN_SERVER_IP_0(ref object o)
        {
            return EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_IP;
        }

        static StackObject* CopyToStack_CONN_SERVER_IP_0(ref object o, ILIntepreter __intp, StackObject* __ret, AutoList __mStack)
        {
            var result_of_this_method = EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_IP;
            return ILIntepreter.PushObject(__ret, __mStack, result_of_this_method);
        }

        static void set_CONN_SERVER_IP_0(ref object o, object v)
        {
            EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_IP = (System.String)v;
        }

        static StackObject* AssignFromStack_CONN_SERVER_IP_0(ref object o, ILIntepreter __intp, StackObject* ptr_of_this_method, AutoList __mStack)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            System.String @CONN_SERVER_IP = (System.String)typeof(System.String).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_IP = @CONN_SERVER_IP;
            return ptr_of_this_method;
        }

        static object get_CONN_SERVER_PORT_1(ref object o)
        {
            return EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_PORT;
        }

        static StackObject* CopyToStack_CONN_SERVER_PORT_1(ref object o, ILIntepreter __intp, StackObject* __ret, AutoList __mStack)
        {
            var result_of_this_method = EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_PORT;
            __ret->ObjectType = ObjectTypes.Integer;
            __ret->Value = result_of_this_method;
            return __ret + 1;
        }

        static void set_CONN_SERVER_PORT_1(ref object o, object v)
        {
            EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_PORT = (System.Int32)v;
        }

        static StackObject* AssignFromStack_CONN_SERVER_PORT_1(ref object o, ILIntepreter __intp, StackObject* ptr_of_this_method, AutoList __mStack)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            System.Int32 @CONN_SERVER_PORT = ptr_of_this_method->Value;
            EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_PORT = @CONN_SERVER_PORT;
            return ptr_of_this_method;
        }

        static object get_CONN_SERVER_UID_2(ref object o)
        {
            return EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_UID;
        }

        static StackObject* CopyToStack_CONN_SERVER_UID_2(ref object o, ILIntepreter __intp, StackObject* __ret, AutoList __mStack)
        {
            var result_of_this_method = EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_UID;
            __ret->ObjectType = ObjectTypes.Integer;
            __ret->Value = result_of_this_method;
            return __ret + 1;
        }

        static void set_CONN_SERVER_UID_2(ref object o, object v)
        {
            EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_UID = (System.Int32)v;
        }

        static StackObject* AssignFromStack_CONN_SERVER_UID_2(ref object o, ILIntepreter __intp, StackObject* ptr_of_this_method, AutoList __mStack)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            System.Int32 @CONN_SERVER_UID = ptr_of_this_method->Value;
            EP.U3D.LIBRARY.BASE.Constants.CONN_SERVER_UID = @CONN_SERVER_UID;
            return ptr_of_this_method;
        }



    }
}

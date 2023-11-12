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
    unsafe class EP_U3D_LIBRARY_NET_NetManager_Binding
    {
        public static void Register(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            BindingFlags flag = BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly;
            MethodBase method;
            Type[] args;
            Type type = typeof(EP.U3D.LIBRARY.NET.NetManager);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate), typeof(System.Type), typeof(System.Boolean)};
            method = type.GetMethod("RegMsg", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, RegMsg_0);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate)};
            method = type.GetMethod("UnregMsg", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, UnregMsg_1);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.PROTO.IProto), typeof(System.Int32), typeof(System.Int32), typeof(System.Int32)};
            method = type.GetMethod("SendMsg", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, SendMsg_2);
            args = new Type[]{typeof(System.Int32), typeof(EP.U3D.LIBRARY.PROTO.IProto), typeof(System.Action<System.String, System.Byte[]>), typeof(System.Int32), typeof(System.Int32), typeof(System.String)};
            method = type.GetMethod("SendCgi", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, SendCgi_3);
            args = new Type[]{typeof(System.Int32), typeof(System.String), typeof(System.Int32), typeof(System.Net.Sockets.ProtocolType), typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate), typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate), typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate), typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate), typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate), typeof(System.Int32), typeof(System.Int32), typeof(System.Int32), typeof(System.Func<EP.U3D.LIBRARY.POOL.StreamBuffer>)};
            method = type.GetMethod("ConnectTo", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, ConnectTo_4);
            args = new Type[]{typeof(System.Int32)};
            method = type.GetMethod("DisconnectFrom", flag, null, args, null);
            app.RegisterCLRMethodRedirection(method, DisconnectFrom_5);


        }


        static StackObject* RegMsg_0(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 4);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Boolean @once = ptr_of_this_method->Value == 1;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            System.Type @type = (System.Type)typeof(System.Type).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            EP.U3D.LIBRARY.EVT.EventHandlerDelegate @func = (EP.U3D.LIBRARY.EVT.EventHandlerDelegate)typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 4);
            System.Int32 @id = ptr_of_this_method->Value;


            EP.U3D.LIBRARY.NET.NetManager.RegMsg(@id, @func, @type, @once);

            return __ret;
        }

        static StackObject* UnregMsg_1(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 2);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            EP.U3D.LIBRARY.EVT.EventHandlerDelegate @func = (EP.U3D.LIBRARY.EVT.EventHandlerDelegate)typeof(EP.U3D.LIBRARY.EVT.EventHandlerDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            System.Int32 @id = ptr_of_this_method->Value;


            EP.U3D.LIBRARY.NET.NetManager.UnregMsg(@id, @func);

            return __ret;
        }

        static StackObject* SendMsg_2(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 5);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Int32 @app = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            System.Int32 @rid = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            System.Int32 @uid = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 4);
            EP.U3D.LIBRARY.PROTO.IProto @body = (EP.U3D.LIBRARY.PROTO.IProto)typeof(EP.U3D.LIBRARY.PROTO.IProto).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 5);
            System.Int32 @id = ptr_of_this_method->Value;


            EP.U3D.LIBRARY.NET.NetManager.SendMsg(@id, @body, @uid, @rid, @app);

            return __ret;
        }

        static StackObject* SendCgi_3(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 6);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.String @host = (System.String)typeof(System.String).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            System.Int32 @rid = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            System.Int32 @uid = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 4);
            System.Action<System.String, System.Byte[]> @func = (System.Action<System.String, System.Byte[]>)typeof(System.Action<System.String, System.Byte[]>).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 5);
            EP.U3D.LIBRARY.PROTO.IProto @body = (EP.U3D.LIBRARY.PROTO.IProto)typeof(EP.U3D.LIBRARY.PROTO.IProto).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 6);
            System.Int32 @id = ptr_of_this_method->Value;


            EP.U3D.LIBRARY.NET.NetManager.SendCgi(@id, @body, @func, @uid, @rid, @host);

            return __ret;
        }

        static StackObject* ConnectTo_4(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 13);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Func<EP.U3D.LIBRARY.POOL.StreamBuffer> @beatMsg = (System.Func<EP.U3D.LIBRARY.POOL.StreamBuffer>)typeof(System.Func<EP.U3D.LIBRARY.POOL.StreamBuffer>).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 2);
            System.Int32 @beatInterval = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 3);
            System.Int32 @beatTO = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 4);
            System.Int32 @beatID = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 5);
            EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate @onHeartBeated = (EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate)typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 6);
            EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate @onErrorOccurred = (EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate)typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 7);
            EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate @onReconnected = (EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate)typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 8);
            EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate @onDisconnected = (EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate)typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 9);
            EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate @onConnected = (EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate)typeof(EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)8);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 10);
            System.Net.Sockets.ProtocolType @protocol = (System.Net.Sockets.ProtocolType)typeof(System.Net.Sockets.ProtocolType).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)20);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 11);
            System.Int32 @port = ptr_of_this_method->Value;

            ptr_of_this_method = ILIntepreter.Minus(__esp, 12);
            System.String @host = (System.String)typeof(System.String).CheckCLRTypes(StackObject.ToObject(ptr_of_this_method, __domain, __mStack), (CLR.Utils.Extensions.TypeFlags)0);
            __intp.Free(ptr_of_this_method);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 13);
            System.Int32 @app = ptr_of_this_method->Value;


            var result_of_this_method = EP.U3D.LIBRARY.NET.NetManager.ConnectTo(@app, @host, @port, @protocol, @onConnected, @onDisconnected, @onReconnected, @onErrorOccurred, @onHeartBeated, @beatID, @beatTO, @beatInterval, @beatMsg);

            return ILIntepreter.PushObject(__ret, __mStack, result_of_this_method);
        }

        static StackObject* DisconnectFrom_5(ILIntepreter __intp, StackObject* __esp, AutoList __mStack, CLRMethod __method, bool isNewObj)
        {
            ILRuntime.Runtime.Enviorment.AppDomain __domain = __intp.AppDomain;
            StackObject* ptr_of_this_method;
            StackObject* __ret = ILIntepreter.Minus(__esp, 1);

            ptr_of_this_method = ILIntepreter.Minus(__esp, 1);
            System.Int32 @app = ptr_of_this_method->Value;


            EP.U3D.LIBRARY.NET.NetManager.DisconnectFrom(@app);

            return __ret;
        }



    }
}

using System.Collections;
using System.Collections.Generic;
using ILRuntime.Runtime.Enviorment;
using UnityEngine;
using System;
using AppDomain = ILRuntime.Runtime.Enviorment.AppDomain;

public class ILRuntimeDelegateHelper
{
    static public void Register(AppDomain appdomain)
    {
        appdomain.DelegateManager.RegisterMethodDelegate<System.Object>();
        appdomain.DelegateManager
            .RegisterFunctionDelegate<ILRuntime.Runtime.Intepreter.ILTypeInstance, System.Boolean>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.IList<System.Object>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.IList<System.Boolean>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.List<System.Object>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.List<System.Boolean>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.List<UnityEngine.GameObject>>();
        appdomain.DelegateManager
            .RegisterMethodDelegate<System.Collections.Generic.IDictionary<System.String, UnityEngine.Object>>();
        appdomain.DelegateManager
            .RegisterMethodDelegate<System.Collections.Generic.IDictionary<System.Int32, UnityEngine.Object>>();
        appdomain.DelegateManager
            .RegisterMethodDelegate<System.Collections.Generic.IDictionary<System.Int32, System.Object>>();

        appdomain.DelegateManager.RegisterMethodDelegate<System.Boolean>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Single>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Object, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Attribute, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Type, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Reflection.FieldInfo, System.Boolean>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Boolean, UnityEngine.GameObject>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Int32, System.Int32>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Int32>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.String>();
        appdomain.DelegateManager.RegisterMethodDelegate<ILRuntime.Runtime.Intepreter.ILTypeInstance>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.GameObject>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.EventSystems.UIBehaviour, System.Object>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.Transform, System.Object>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Reflection.PropertyInfo, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Reflection.MethodInfo, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<ILRuntime.Runtime.Intepreter.ILTypeInstance, System.Int32>();
        appdomain.DelegateManager.RegisterFunctionDelegate<ILRuntime.Runtime.Intepreter.ILTypeInstance, ILRuntime.Runtime.Intepreter.ILTypeInstance, System.Int32>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Int32, System.Boolean>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.List<ILRuntime.Runtime.Intepreter.ILTypeInstance>, System.Int32>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.List<ILRuntime.Runtime.Intepreter.ILTypeInstance>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.Dictionary<System.Int32, ILRuntime.Runtime.Intepreter.ILTypeInstance>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.Dictionary<System.Object, ILRuntime.Runtime.Intepreter.ILTypeInstance>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.Dictionary<object, ILRuntime.Runtime.Intepreter.ILTypeInstance>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.Dictionary<ILRuntime.Runtime.Intepreter.ILTypeInstance, EP.U3D.LIBRARY.EVT.EventHandlerDelegate>>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.Collections.Generic.Dictionary<ILRuntime.Runtime.Intepreter.ILTypeInstance, ILRuntime.Runtime.Intepreter.ILTypeInstance>>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.Object>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter>();
        appdomain.DelegateManager.RegisterFunctionDelegate<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter, EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter, System.Int32>();

        appdomain.DelegateManager.RegisterMethodDelegate<System.Int32[], System.Int32>();
        appdomain.DelegateManager.RegisterMethodDelegate<System.String, System.Int32, System.Int32>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.LIBRARY.EVT.Evt>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.LIBRARY.SCENE.Scene, EP.U3D.LIBRARY.SCENE.Scene>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.LIBRARY.NET.NetConnection, System.Object>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.Collider>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.EventSystems.PointerEventData>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.Transform>();
        appdomain.DelegateManager.RegisterMethodDelegate<UnityEngine.GameObject, System.Int32>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.LIBRARY.SCENE.IScene, EP.U3D.LIBRARY.SCENE.IScene>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.RUNTIME.ILR.ILRComponent, UnityEngine.GameObject>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.RUNTIME.ILR.ILRComponent>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.RUNTIME.ILR.ILRComponent, EP.U3D.RUNTIME.ILR.ILRComponent>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.RUNTIME.ILR.ILRComponent, System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Boolean>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.Int32, System.Int32, System.Int32>();
        appdomain.DelegateManager.RegisterFunctionDelegate<System.String, System.Boolean>();
        appdomain.DelegateManager.RegisterMethodDelegate<EP.U3D.RUNTIME.ILR.ILRComponent, UnityEngine.Transform>();
        appdomain.DelegateManager.RegisterFunctionDelegate<EP.U3D.RUNTIME.ILR.ILRComponent, System.Boolean>();


        appdomain.DelegateManager.RegisterDelegateConvertor<System.Predicate<System.String>>((act) =>
        {
            return new System.Predicate<System.String>((obj) =>
            {
                return ((Func<System.String, System.Boolean>)act)(obj);
            });
        });
        appdomain.DelegateManager.RegisterMethodDelegate<System.String[]>();

        appdomain.DelegateManager.RegisterDelegateConvertor<UnityEngine.Events.UnityAction>((act) =>
        {
            return new UnityEngine.Events.UnityAction(() => { ((Action)act)(); });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<UnityEngine.Events.UnityAction<System.Single>>((act) =>
        {
            return new UnityEngine.Events.UnityAction<System.Single>((arg0) =>
            {
                ((Action<System.Single>)act)(arg0);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Predicate<System.Object>>((act) =>
        {
            return new System.Predicate<System.Object>((obj) =>
            {
                return ((Func<System.Object, System.Boolean>)act)(obj);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Predicate<ILRuntime.Runtime.Intepreter.ILTypeInstance>>((act) =>
          {
              return new System.Predicate<ILRuntime.Runtime.Intepreter.ILTypeInstance>((obj) =>
              {
                  return ((Func<ILRuntime.Runtime.Intepreter.ILTypeInstance, System.Boolean>)act)(obj);
              });
          });
        appdomain.DelegateManager.RegisterDelegateConvertor<EP.U3D.LIBRARY.EVT.EventHandlerDelegate>((act) =>
        {
            return new EP.U3D.LIBRARY.EVT.EventHandlerDelegate((evt) =>
            {
                ((Action<EP.U3D.LIBRARY.EVT.Evt>)act)(evt);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate>((act) =>
        {
            return new EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate((last, current) =>
            {
                ((Action<EP.U3D.LIBRARY.SCENE.IScene, EP.U3D.LIBRARY.SCENE.IScene>)act)(last, current);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate>((act) =>
        {
            return new EP.U3D.LIBRARY.NET.NetConnection.StatusDelegate((conn, param) =>
            {
                ((Action<EP.U3D.LIBRARY.NET.NetConnection, System.Object>)act)(conn, param);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Comparison<ILRuntime.Runtime.Intepreter.ILTypeInstance>>((act) =>
        {
            return new System.Comparison<ILRuntime.Runtime.Intepreter.ILTypeInstance>((x, y) =>
            {
                return ((Func<ILRuntime.Runtime.Intepreter.ILTypeInstance, ILRuntime.Runtime.Intepreter.ILTypeInstance, System.Int32>)act)(x, y);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<UnityEngine.Events.UnityAction<System.Boolean>>((act) =>
        {
            return new UnityEngine.Events.UnityAction<System.Boolean>((arg0) =>
            {
                ((Action<System.Boolean>)act)(arg0);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<UnityEngine.Events.UnityAction<System.String[]>>((act) =>
        {
            return new UnityEngine.Events.UnityAction<System.String[]>((arg0) =>
            {
                ((Action<System.String[]>)act)(arg0);
            });
        });

        appdomain.DelegateManager.RegisterDelegateConvertor<System.Predicate<System.Int32>>((act) =>
        {
            return new System.Predicate<System.Int32>((obj) =>
            {
                return ((Func<System.Int32, System.Boolean>)act)(obj);
            });
        });

        appdomain.DelegateManager.RegisterDelegateConvertor<EP.U3D.LIBRARY.UI.UIEventListener.PointEventDelegate>((act) =>
        {
            return new EP.U3D.LIBRARY.UI.UIEventListener.PointEventDelegate((data) =>
            {
                ((Action<UnityEngine.EventSystems.PointerEventData>)act)(data);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<EP.U3D.LIBRARY.ASSET.AssetManager.Callback>((act) =>
        {
            return new EP.U3D.LIBRARY.ASSET.AssetManager.Callback((asset) =>
            {
                ((Action<UnityEngine.Object>)act)(asset);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Comparison<System.Int32>>((act) =>
        {
            return new System.Comparison<System.Int32>((x, y) =>
            {
                return ((Func<System.Int32, System.Int32, System.Int32>)act)(x, y);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Predicate<EP.U3D.RUNTIME.ILR.ILRComponent>>((act) =>
        {
            return new System.Predicate<EP.U3D.RUNTIME.ILR.ILRComponent>((obj) =>
            {
                return ((Func<EP.U3D.RUNTIME.ILR.ILRComponent, System.Boolean>)act)(obj);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Predicate<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter>>((act) =>
        {
            return new System.Predicate<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter>((obj) =>
            {
                return ((Func<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter, System.Boolean>)act)(obj);
            });
        });
        appdomain.DelegateManager.RegisterDelegateConvertor<System.Comparison<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter>>((act) =>
        {
            return new System.Comparison<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter>((x, y) =>
            {
                return ((Func<EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter, EP.U3D.LIBRARY.PROTO.IProtoAdapter.Adapter, System.Int32>)act)(x, y);
            });
        });
        //[insert]
    }
}

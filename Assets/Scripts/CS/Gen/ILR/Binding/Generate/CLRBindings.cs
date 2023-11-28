using System;
using System.Collections.Generic;
using System.Reflection;
#if DEBUG && !DISABLE_ILRUNTIME_DEBUG
using AutoList = System.Collections.Generic.List<object>;
#else
using AutoList = ILRuntime.Other.UncheckedList<object>;
#endif
namespace ILRuntime.Runtime.Generated
{
    public class CLRBindings
    {

//will auto register in unity
#if UNITY_5_3_OR_NEWER
        [UnityEngine.RuntimeInitializeOnLoadMethod(UnityEngine.RuntimeInitializeLoadType.BeforeSceneLoad)]
#endif
        static private void RegisterBindingAction()
        {
            ILRuntime.Runtime.CLRBinding.CLRBindingUtils.RegisterBindingAction(Initialize);
        }

        internal static ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Vector2> s_UnityEngine_Vector2_Binding_Binder = null;
        internal static ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Vector3> s_UnityEngine_Vector3_Binding_Binder = null;
        internal static ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Vector4> s_UnityEngine_Vector4_Binding_Binder = null;
        internal static ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Quaternion> s_UnityEngine_Quaternion_Binding_Binder = null;


        /// <summary>
        /// Prevent classes to be striped while buiding player.
        /// </summary>
        public static List<Type> PreventToStrip = new List<Type>() { 
            typeof(EP.U3D.LIBRARY.UI.UIMeta),
            typeof(UnityEngine.Canvas),
            typeof(System.Delegate),
            typeof(UnityEngine.Coroutine),

        };
        /// <summary>
        /// Initialize the CLR binding, please invoke this AFTER CLR Redirection registration
        /// </summary>
        public static void Initialize(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            if (PreventToStrip != null) PreventToStrip.Clear();
            System_Array_Binding.Register(app);
            EP_U3D_LIBRARY_SCENE_SceneManager_Binding.Register(app);
            EP_U3D_LIBRARY_BASE_Constants_Binding.Register(app);
            System_Object_Binding.Register(app);
            EP_U3D_LIBRARY_BASE_Helper_Binding.Register(app);
            UnityEngine_SceneManagement_Scene_Binding.Register(app);
            EP_U3D_LIBRARY_EVT_EvtManager_Binding.Register(app);
            System_Collections_Generic_Dictionary_2_Int32_List_1_ILTypeInstance_Binding.Register(app);
            System_String_Binding.Register(app);
            System_Activator_Binding.Register(app);
            System_Type_Binding.Register(app);
            System_Reflection_MemberInfo_Binding.Register(app);
            EP_U3D_LIBRARY_EVT_Evt_Binding.Register(app);
            EP_U3D_LIBRARY_NET_NetManager_Binding.Register(app);
            EP_U3D_RUNTIME_ILR_NET_NetManager_Binding.Register(app);
            EP_U3D_RUNTIME_ILR_UI_UIHelper_Binding.Register(app);
            EP_U3D_LIBRARY_ASSET_AssetManager_Binding.Register(app);
            EP_U3D_RUNTIME_ILR_UI_UIManager_Binding.Register(app);
            EP_U3D_LIBRARY_UI_UIManager_Binding.Register(app);
            UnityEngine_Debug_Binding.Register(app);
            System_Collections_Generic_List_1_ILTypeInstance_Binding.Register(app);
            UnityEngine_Object_Binding.Register(app);
            System_Action_Binding.Register(app);
            EP_U3D_RUNTIME_ILR_ILRComponent_Binding.Register(app);
            System_Collections_Generic_Dictionary_2_Int32_List_1_ILTypeInstance_Binding_Enumerator_Binding.Register(app);
            System_Collections_Generic_KeyValuePair_2_Int32_List_1_ILTypeInstance_Binding.Register(app);
            System_Int32_Binding.Register(app);
            System_IDisposable_Binding.Register(app);
            System_Collections_Generic_List_1_String_Binding.Register(app);
            System_Exception_Binding.Register(app);
            System_Text_Encoding_Binding.Register(app);
            EP_U3D_LIBRARY_PROTO_ProtoEncoder_Binding.Register(app);
            EP_U3D_LIBRARY_PROTO_ProtoDecoder_Binding.Register(app);
            EP_U3D_LIBRARY_POOL_ObjectPool_Binding.Register(app);
            EP_U3D_LIBRARY_BASE_Loom_Binding.Register(app);
            UnityEngine_WaitForSeconds_Binding.Register(app);
            System_NotSupportedException_Binding.Register(app);
            EP_U3D_LIBRARY_NET_NetConnection_Binding.Register(app);
            EP_U3D_LIBRARY_REPORT_Reporter_Binding.Register(app);

            ILRuntime.CLR.TypeSystem.CLRType __clrType = null;
            __clrType = (ILRuntime.CLR.TypeSystem.CLRType)app.GetType (typeof(UnityEngine.Vector2));
            s_UnityEngine_Vector2_Binding_Binder = __clrType.ValueTypeBinder as ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Vector2>;
            __clrType = (ILRuntime.CLR.TypeSystem.CLRType)app.GetType (typeof(UnityEngine.Vector3));
            s_UnityEngine_Vector3_Binding_Binder = __clrType.ValueTypeBinder as ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Vector3>;
            __clrType = (ILRuntime.CLR.TypeSystem.CLRType)app.GetType (typeof(UnityEngine.Vector4));
            s_UnityEngine_Vector4_Binding_Binder = __clrType.ValueTypeBinder as ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Vector4>;
            __clrType = (ILRuntime.CLR.TypeSystem.CLRType)app.GetType (typeof(UnityEngine.Quaternion));
            s_UnityEngine_Quaternion_Binding_Binder = __clrType.ValueTypeBinder as ILRuntime.Runtime.Enviorment.ValueTypeBinder<UnityEngine.Quaternion>;
        }

        /// <summary>
        /// Release the CLR binding, please invoke this BEFORE ILRuntime Appdomain destroy
        /// </summary>
        public static void Shutdown(ILRuntime.Runtime.Enviorment.AppDomain app)
        {
            s_UnityEngine_Vector2_Binding_Binder = null;
            s_UnityEngine_Vector3_Binding_Binder = null;
            s_UnityEngine_Vector4_Binding_Binder = null;
            s_UnityEngine_Quaternion_Binding_Binder = null;
        }
    }
}

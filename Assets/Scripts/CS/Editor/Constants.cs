using EP.U3D.EDITOR.BASE;
using EP.U3D.EDITOR.ILR;
using EP.U3D.LIBRARY.SCENE;
using EP.U3D.LIBRARY.UI;
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.AUDIO;
using EP.U3D.LIBRARY.ASSET;
using EP.U3D.LIBRARY.REPORT;
using EP.U3D.LIBRARY.PATCH;
using EP.U3D.LIBRARY.NET;
using EP.U3D.LIBRARY.EVT;
using UnityEngine.Playables;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.Networking;

using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEditor;
using UnityEngine;

#if EFRAME_ILR
using EP.U3D.RUNTIME.ILR;
using ILRuntime.Runtime.Generated;
#endif

#if EFRAME_LUA
using LuaInterface;
using LuaInterface.Editor;
#endif

namespace CS.Editor
{
    [StaticOverride]
    [InitializeOnLoad]
    public class Constants : EP.U3D.EDITOR.BASE.Constants
    {
        static Constants()
        {
#if EFRAME_ILR
            MenuILR.AdapterTypes = new List<Type>();
            MenuILR.AdapterTypes.Add(typeof(CS.Core.ILauncher));
            MenuILR.AdapterTypes.Add((typeof(Scene)));
            MenuILR.AdapterTypes.Add(typeof(UIMeta));
            MenuILR.AdapterTypes.Add((typeof(ScriptableObject)));
            MenuILR.AdapterTypes.Add(typeof(Exception));
            MenuILR.AdapterTypes.Add(typeof(System.Collections.IEnumerable));
            MenuILR.AdapterTypes.Add(typeof(IScene));
            MenuILR.AdapterTypes.Add(typeof(EP.U3D.LIBRARY.I18N.ILanguage));
            MenuILR.AdapterTypes.Add(typeof(EP.U3D.LIBRARY.PROTO.IProto));
            MenuILR.ILRAfterInit = () =>
            {
                AdapterRegister.RegisterCrossBindingAdaptor(ILRManager.AppDomain);
                ILRuntimeDelegateHelper.Register(ILRManager.AppDomain);
                ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Vector2), new Vector2Binder());
                ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Vector3), new Vector3Binder());
                ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Vector4), new Vector4Binder());
                ILRManager.AppDomain.RegisterValueTypeBinder(typeof(Quaternion), new QuaternionBinder());
                ManualCLRBindings.Initialize(ILRManager.AppDomain);
                CLRBindings.Initialize(ILRManager.AppDomain);
            };
#endif

#if EFRAME_LUA
            LuaConst.Dir = EP.U3D.EDITOR.BASE.Constants.LUA_SCRIPT_WORKSPACE;
            LuaConst.Debugger = false;

            //导出时强制做为静态类的类型(注意customTypeList 还要添加这个类型才能导出)
            //unity 有些类作为sealed class, 其实完全等价于静态类
            ToLuaSetting.StaticClassTypes = new List<Type>{
                typeof(Application),
                typeof(RuntimePlatform),
                typeof(Time),
                typeof(Screen),
                typeof(SleepTimeout),
                typeof(Input),
                typeof(Resources),
                typeof(Physics),
                typeof(RenderSettings),
                typeof(QualitySettings),
                typeof(GL),
             };

            //附加导出委托类型(在导出委托时, customTypeList 中牵扯的委托类型都会导出， 无需写在这里)
            ToLuaSetting.CustomDelegateList = new DelegateType[] {
                ToLuaSetting.DT(typeof(Action)),
                ToLuaSetting.DT(typeof(UnityEngine.Events.UnityAction)),
                ToLuaSetting.DT(typeof(Predicate<int>)),
                ToLuaSetting.DT(typeof(Action<int>)),
                ToLuaSetting.DT(typeof(Comparison<int>)),
                ToLuaSetting.DT(typeof(NetConnection.StatusDelegate)),
                ToLuaSetting.DT(typeof(EventHandlerDelegate)),
             };

            //在这里添加你要导出注册到lua的类型列表
            ToLuaSetting.CustomTypeList = new ToLuaMenu.BindType[] {

               ToLuaSetting.BT(typeof(Debugger)).SetNameSpace(null),
               ToLuaSetting.BT(typeof(Component)),
               ToLuaSetting.BT(typeof(Transform)),
               ToLuaSetting.BT(typeof(Material)),
               ToLuaSetting.BT(typeof(Rigidbody)),
               ToLuaSetting.BT(typeof(Camera)),
               ToLuaSetting.BT(typeof(AudioSource)),

               ToLuaSetting.BT(typeof(Behaviour)),
               ToLuaSetting.BT(typeof(MonoBehaviour)),
               ToLuaSetting.BT(typeof(GameObject)),
               ToLuaSetting.BT(typeof(TrackedReference)),
               ToLuaSetting.BT(typeof(Application)),
               ToLuaSetting.BT(typeof(RuntimePlatform)),
               ToLuaSetting.BT(typeof(Physics)),
               ToLuaSetting.BT(typeof(Collider)),
               ToLuaSetting.BT(typeof(Collision)),
               ToLuaSetting.BT(typeof(Time)),
               ToLuaSetting.BT(typeof(Texture)),
               ToLuaSetting.BT(typeof(Texture2D)),
               ToLuaSetting.BT(typeof(TextAsset)),
               ToLuaSetting.BT(typeof(Shader)),
               ToLuaSetting.BT(typeof(Renderer)),
               ToLuaSetting.BT(typeof(UnityWebRequest)),
               ToLuaSetting.BT(typeof(WWWForm)),
               ToLuaSetting.BT(typeof(Screen)),
               ToLuaSetting.BT(typeof(CameraClearFlags)),
               ToLuaSetting.BT(typeof(AudioClip)),
               ToLuaSetting.BT(typeof(AssetBundle)),
               ToLuaSetting.BT(typeof(AssetBundleManifest)),
               ToLuaSetting.BT(typeof(ParticleSystem)),
               ToLuaSetting.BT(typeof(AsyncOperation)),
               ToLuaSetting.BT(typeof(LightType)),
               ToLuaSetting.BT(typeof(SleepTimeout)),

               ToLuaSetting.BT(typeof(Animator)),
               ToLuaSetting.BT(typeof(Input)),
               ToLuaSetting.BT(typeof(KeyCode)),
               ToLuaSetting.BT(typeof(SkinnedMeshRenderer)),
               ToLuaSetting.BT(typeof(Space)),

               ToLuaSetting.BT(typeof(MeshRenderer)),
               ToLuaSetting.BT(typeof(SpriteRenderer)),

               ToLuaSetting.BT(typeof(BoxCollider)),
               ToLuaSetting.BT(typeof(MeshCollider)),
               ToLuaSetting.BT(typeof(SphereCollider)),
               ToLuaSetting.BT(typeof(CharacterController)),
               ToLuaSetting.BT(typeof(CapsuleCollider)),

               ToLuaSetting.BT(typeof(Animation)),
               ToLuaSetting.BT(typeof(AnimationClip)).SetBaseType(typeof(UnityEngine.Object)),
               ToLuaSetting.BT(typeof(AnimationState)),
               ToLuaSetting.BT(typeof(AnimationBlendMode)),
               ToLuaSetting.BT(typeof(QueueMode)),
               ToLuaSetting.BT(typeof(PlayMode)),
               ToLuaSetting.BT(typeof(WrapMode)),

               ToLuaSetting.BT(typeof(QualitySettings)),
               ToLuaSetting.BT(typeof(RenderSettings)),
               ToLuaSetting.BT(typeof(SkinWeights)),
               ToLuaSetting.BT(typeof(RenderTexture)),
               ToLuaSetting.BT(typeof(Resources)),

               ToLuaSetting.BT(typeof(GUI)),
               ToLuaSetting.BT(typeof(GUIContent)),
               ToLuaSetting.BT(typeof(GUILayout)),
               ToLuaSetting.BT(typeof(GUILayoutOption)),
               ToLuaSetting.BT(typeof(GUILayoutUtility)),
               ToLuaSetting.BT(typeof(GUISettings)),
               ToLuaSetting.BT(typeof(GUISkin)),
               ToLuaSetting.BT(typeof(GUIStyle)),
               ToLuaSetting.BT(typeof(GUIStyleState)),
               ToLuaSetting.BT(typeof(GUITargetAttribute)),
               ToLuaSetting.BT(typeof(GUIUtility)),
               ToLuaSetting.BT(typeof(TextAnchor)),

               ToLuaSetting.BT(typeof(Rect)),
               ToLuaSetting.BT(typeof(Graphics)),

               ToLuaSetting.BT(typeof(UnityEngine.SceneManagement.LoadSceneMode)),
               ToLuaSetting.BT(typeof(UnityEngine.SceneManagement.Scene)),
               ToLuaSetting.BT(typeof(UnityEngine.SceneManagement.SceneManager)),

               ToLuaSetting.BT(typeof(SystemInfo)),
               ToLuaSetting.BT(typeof(BatteryStatus)),
               ToLuaSetting.BT(typeof(Cursor)),
               ToLuaSetting.BT(typeof(Updater)),
               ToLuaSetting.BT(typeof(TextMesh)),

               ToLuaSetting.BT(typeof(PlayableDirector)),
             
#region UGUI
               ToLuaSetting.BT(typeof(Canvas)),
               ToLuaSetting.BT(typeof(AdditionalCanvasShaderChannels)),
               ToLuaSetting.BT(typeof(RenderMode)),
               ToLuaSetting.BT(typeof(CanvasScaler)),
               ToLuaSetting.BT(typeof(RectTransform)),
               ToLuaSetting.BT(typeof(Button)),
               ToLuaSetting.BT(typeof(UnityEvent)),
               ToLuaSetting.BT(typeof(UnityEventEx)),
               ToLuaSetting.BT(typeof(DelegateFactory)),
               ToLuaSetting.BT(typeof(Image)),
               ToLuaSetting.BT(typeof(MaskableGraphic.CullStateChangedEvent)),
               ToLuaSetting.BT(typeof(Slider)),
               ToLuaSetting.BT(typeof(Selectable)),
               ToLuaSetting.BT(typeof(Sprite)),
               ToLuaSetting.BT(typeof(SpriteState)),
               ToLuaSetting.BT(typeof(PointerEventData)),
               ToLuaSetting.BT(typeof(Text)),
               ToLuaSetting.BT(typeof(MaskableGraphic)),
               ToLuaSetting.BT(typeof(Graphic)),
               ToLuaSetting.BT(typeof(GridLayoutGroup)),
               ToLuaSetting.BT(typeof(LayoutGroup)),
               ToLuaSetting.BT(typeof(RectOffset)),
               ToLuaSetting.BT(typeof(Outline)),
               ToLuaSetting.BT(typeof(Shadow)),
               ToLuaSetting.BT(typeof(BaseMeshEffect)),
               ToLuaSetting.BT(typeof(GraphicRaycaster)),
               ToLuaSetting.BT(typeof(GraphicRaycaster.BlockingObjects)),
               ToLuaSetting.BT(typeof(InputField)),
               ToLuaSetting.BT(typeof(InputField.CharacterValidation)),
               ToLuaSetting.BT(typeof(InputField.ContentType)),
               ToLuaSetting.BT(typeof(InputField.InputType)),
               ToLuaSetting.BT(typeof(InputField.LineType)),
               ToLuaSetting.BT(typeof(InputField.OnChangeEvent)),
               ToLuaSetting.BT(typeof(TrailRenderer)),
               ToLuaSetting.BT(typeof(InputField.SubmitEvent)),
               ToLuaSetting.BT(typeof(EventSystem)),
               ToLuaSetting.BT(typeof(Toggle)),
               ToLuaSetting.BT(typeof(Atlas)),
               ToLuaSetting.BT(typeof(ContentSizeFitter)),
               ToLuaSetting.BT(typeof(ScrollRect)),
#endregion
             
#region SDK 
#endregion
             
#region EFrame
               ToLuaSetting.BT(typeof(EP.U3D.LIBRARY.EVT.Evt)),
               ToLuaSetting.BT(typeof(AssetManager)),
               ToLuaSetting.BT(typeof(AssetManager.Handler)),
               ToLuaSetting.BT(typeof(AssetManager.BundleInfo)),
               ToLuaSetting.BT(typeof(AudioManager)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.LuaManager)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.LuaLoader)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.LuaValueInfo)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.LuaDebugTool)),
               ToLuaSetting.BT(typeof(EP.U3D.LIBRARY.NET.NetManager)),
               ToLuaSetting.BT(typeof(EP.U3D.LIBRARY.NET.NetConnection)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.BASE.Helper)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.UI.UIHelper)),
               ToLuaSetting.BT(typeof(UIWindow)),
               ToLuaSetting.BT(typeof(UIManager)),
               ToLuaSetting.BT(typeof(SceneManager)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.SCENE.Scene)),
               ToLuaSetting.BT(typeof(CS.Core.Constants)),
               ToLuaSetting.BT(typeof(EP.U3D.LIBRARY.BASE.Loom)),
               ToLuaSetting.BT(typeof(EP.U3D.RUNTIME.LUA.LuaComponent)),
               ToLuaSetting.BT(typeof(Reporter)),
               ToLuaSetting.BT(typeof(Preferences)),
#endregion
                   
#region System
               ToLuaSetting.BT(typeof(GC)),
#endregion
             };

            ToLuaSetting.DynamicList = new List<Type>() {
                typeof(MeshRenderer),
#if !UNITY_5_4_OR_NEWER
                typeof(ParticleEmitter),
                typeof(ParticleRenderer),
                typeof(ParticleAnimator),
#endif

                typeof(BoxCollider),
                typeof(MeshCollider),
                typeof(SphereCollider),
                typeof(CharacterController),
                typeof(CapsuleCollider),

                typeof(Animation),
                typeof(AnimationClip),
                typeof(AnimationState),

                typeof(SkinWeights),
                typeof(RenderTexture),
                typeof(Rigidbody),
            };

            //重载函数，相同参数个数，相同位置out参数匹配出问题时, 需要强制匹配解决
            //使用方法参见例子14
            ToLuaSetting.OutList = new List<Type>() { };

            //ngui优化，下面的类没有派生类，可以作为sealed class
            ToLuaSetting.SealedList = new List<Type>()
            {
                /*typeof(Transform),
                typeof(UIRoot),
                typeof(UICamera),
                typeof(UIViewport),
                typeof(UIPanel),
                typeof(UILabel),
                typeof(UIAnchor),
                typeof(UIAtlas),
                typeof(UIFont),
                typeof(UITexture),
                typeof(UISprite),
                typeof(UIGrid),
                typeof(UITable),
                typeof(UIWrapGrid),
                typeof(UIInput),
                typeof(UIScrollView),
                typeof(UIEventListener),
                typeof(UIScrollBar),
                typeof(UICenterOnChild),
                typeof(UIScrollView),        
                typeof(UIButton),
                typeof(UITextList),
                typeof(UIPlayTween),
                typeof(UIDragScrollView),
                typeof(UISpriteAnimation),
                typeof(UIWrapContent),
                typeof(TweenWidth),
                typeof(TweenAlpha),
                typeof(TweenColor),
                typeof(TweenRotation),
                typeof(TweenPosition),
                typeof(TweenScale),
                typeof(TweenHeight),
                typeof(TypewriterEffect),
                typeof(UIToggle),
                typeof(Localization),*/
            };

            //不需要导出或者无法导出的类型
            ToLuaSetting.DropType = new List<Type> {
                typeof(ValueType),                                  //不需要
#if UNITY_4_6 || UNITY_4_7
                typeof(Motion),                                     //很多平台只是空类
#endif

#if UNITY_5_3_OR_NEWER
                typeof(UnityEngine.CustomYieldInstruction),
#endif
                typeof(UnityEngine.YieldInstruction),               //无需导出的类      
                typeof(UnityEngine.WaitForEndOfFrame),              //内部支持
                typeof(UnityEngine.WaitForFixedUpdate),
                typeof(UnityEngine.WaitForSeconds),        
                //typeof(UnityEngine.Mathf),                          //lua层支持                
                //typeof(Plane),                                      
                //typeof(LayerMask),                                  
                //typeof(Vector3),
                //typeof(Vector4),
                //typeof(Vector2),
                //typeof(Quaternion),
                //typeof(Ray),
                //typeof(Bounds),
                //typeof(Color),                                    
                //typeof(Touch),
                //typeof(RaycastHit),                                 
                //typeof(TouchPhase),     
                //typeof(LuaInterface.LuaOutMetatable),               //手写支持
                typeof(LuaInterface.NullObject),
                typeof(System.Array),
                typeof(System.Reflection.MemberInfo),
                typeof(System.Reflection.BindingFlags),
                typeof(LuaInterface.LuaFunction),
                typeof(LuaInterface.LuaTable),
                typeof(LuaInterface.LuaThread),
                typeof(LuaInterface.LuaByteBuffer),                 //只是类型标识符
                typeof(DelegateFactory),                            //无需导出，导出类支持lua函数转换为委托。如UIEventListener.OnClick(luafunc)
             };

            //可以导出的内部支持类型
            ToLuaSetting.BaseType = new List<Type> {
                typeof(System.Object),
                typeof(System.Delegate),
                typeof(System.String),
                typeof(System.Enum),
                typeof(System.Type),
                typeof(System.Collections.IEnumerator),
                typeof(UnityEngine.Object),
                typeof(LuaInterface.EventObject),
                typeof(LuaInterface.LuaMethod),
                typeof(LuaInterface.LuaProperty),
                typeof(LuaInterface.LuaField),
                typeof(LuaInterface.LuaConstructor),

                typeof(UnityEngine.Mathf),
                typeof(Plane),
                typeof(LayerMask),
                typeof(Vector3),
                typeof(Vector4),
                typeof(Vector2),
                typeof(Quaternion),
                typeof(Ray),
                typeof(Bounds),
                typeof(Color),
                typeof(Touch),
                typeof(RaycastHit),
                typeof(TouchPhase),
             };

            ToLuaSetting.MemberFilter = new List<string> {
                "String.Chars",
                "Directory.SetAccessControl",
                "File.GetAccessControl",
                "File.SetAccessControl",
                //UnityEngine
                "AnimationClip.averageDuration",
                "AnimationClip.averageAngularSpeed",
                "AnimationClip.averageSpeed",
                "AnimationClip.apparentSpeed",
                "AnimationClip.isLooping",
                "AnimationClip.isAnimatorMotion",
                "AnimationClip.isHumanMotion",
                "AnimatorOverrideController.PerformOverrideClipListCleanup",
                "AnimatorControllerParameter.name",
                "Caching.SetNoBackupFlag",
                "Caching.ResetNoBackupFlag",
                "Light.areaSize",
                "Light.lightmappingMode",
                "Light.lightmapBakeType",
                "Light.shadowAngle",
                "Light.shadowRadius",
                "Light.SetLightDirty",
                "Security.GetChainOfTrustValue",
                "Texture2D.alphaIsTransparency",
                "WWW.movie",
                "WWW.GetMovieTexture",
                "WebCamTexture.MarkNonReadable",
                "WebCamTexture.isReadable",
                "Graphic.OnRebuildRequested",
                "Text.OnRebuildRequested",
                "Resources.LoadAssetAtPath",
                "Application.ExternalEval",
                "Handheld.SetActivityIndicatorStyle",
                "CanvasRenderer.OnRequestRebuild",
                "CanvasRenderer.onRequestRebuild",
                "Terrain.bakeLightProbesForTrees",
                "MonoBehaviour.runInEditMode",
                "TextureFormat.DXT1Crunched",
                "TextureFormat.DXT5Crunched",
                "Texture.imageContentsHash",
                "QualitySettings.streamingMipmapsMaxLevelReduction",
                "QualitySettings.streamingMipmapsRenderersPerFrame",
                "QualitySettings.GetAllRenderPipelineAssetsForPlatform",		
                //NGUI
                "UIInput.ProcessEvent",
                "UIWidget.showHandlesWithMoveTool",
                "UIWidget.showHandles",
                "Input.IsJoystickPreconfigured",
                "UIDrawCall.isActive",
                "Dictionary.TryAdd",
                "KeyValuePair.Deconstruct",
                "ParticleSystem.SetJob",
                "ParticleSystem.subEmitters", /*2019.09 ios编译出错，也可能是unity版本问题*/
                "Type.IsSZArray",
                "GUIStyleState.scaledBackgrounds",
                "MeshRenderer.scaleInLightmap",
                "MeshRenderer.receiveGI",
                "MeshRenderer.stitchLightmapSeams",
                "BitConverter.TryWriteBytes",
                "BitConverter.SingleToInt32Bits",
                "BitConverter.Int32BitsToSingle",
                "DateTime.TryFormat",
                "DateTime.TryParse",
                "DateTime.ParseExact",
                "DateTime.UnixEpoch",
                "AudioSource.PlayOnGamepad",
                "AudioSource.DisableGamepadOutput",
                "AudioSource.SetGamepadSpeakerMixLevel",
                "AudioSource.SetGamepadSpeakerMixLevelDefault",
                "AudioSource.SetGamepadSpeakerRestrictedAudio",
                "AudioSource.GamepadSpeakerSupportsOutputType",
                "AudioSource.gamepadSpeakerOutputType",
                "AssetManager.editorAssets",
             };

            //类型别名，用于生成api快速访问
            ToLuaSetting.ClassAlias.Add("EP.U3D.RUNTIME.LUA.BASE.Helper", "Helper");
            ToLuaSetting.ClassAlias.Add("EP.U3D.RUNTIME.LUA.UI.UIHelper", "UIHelper");
#endif
        }
    }
}

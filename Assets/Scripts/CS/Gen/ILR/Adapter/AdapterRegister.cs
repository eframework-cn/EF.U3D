// AUTO GENERATED, DO NOT EDIT //
public class AdapterRegister
{
    public static void RegisterCrossBindingAdaptor(ILRuntime.Runtime.Enviorment.AppDomain domain)
    {
        domain.RegisterCrossBindingAdaptor(new System.ExceptionAdapter());
        domain.RegisterCrossBindingAdaptor(new System.Collections.IEnumerableAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.LIBRARY.I18N.ILanguageAdapter());
        domain.RegisterCrossBindingAdaptor(new CS.Core.ILauncherAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.LIBRARY.PROTO.IProtoAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.LIBRARY.SCENE.ISceneAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.LIBRARY.SCENE.SceneAdapter());
        domain.RegisterCrossBindingAdaptor(new UnityEngine.ScriptableObjectAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.LIBRARY.UI.UIMetaAdapter());
        domain.RegisterCrossBindingAdaptor(new CoroutineAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.RUNTIME.ILR.ILRComponentAdapter());
        domain.RegisterCrossBindingAdaptor(new EP.U3D.RUNTIME.ILR.UI.IUIWindowAdapter());
        domain.RegisterCrossBindingAdaptor(new MonoBehaviourAdapter());
    }
}

#if UNITY_EDITOR || !EFRAME_ILR
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.SCENE;
using UnityEngine;

namespace ILR.Core
{
    public class Launcher : CS.Core.ILauncher
    {
        public override void Start(GameObject go) { SceneManager.Goto(Scene.Login.LoginScene.Instance); }

        public override void OnGUI() { }

        public override void Update() { }

        public override void LateUpdate() { }

        public override void FixedUpdate() { }

        public override void OnDestroy() { }

        public override void OnApplicationFocus(bool status) { Helper.Log(Constants.RELEASE_MODE ? null : "Lancher.OnApplicationFocus: {0}", status); }

        public override void OnApplicationPause(bool status) { Helper.Log(Constants.RELEASE_MODE ? null : "Lancher.OnApplicationPause: {0}", status); }

        public override void OnApplicationQuit() { Helper.Log(Constants.RELEASE_MODE ? null : "Lancher.OnApplicationQuit"); }

        public override void OnSceneWasLoaded(UnityEngine.SceneManagement.Scene scene, UnityEngine.SceneManagement.LoadSceneMode mode) { Helper.Log(Constants.RELEASE_MODE ? null : "Lancher.OnSceneWasLoaded: scene-{0}, mode-{1}", scene.name, mode.ToString()); }

        public override void OnException(string exception, bool isNew) { Helper.Log(Constants.RELEASE_MODE ? null : "Lancher.OnException"); }
    }
}
#endif

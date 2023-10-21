#if UNITY_EDITOR || !EFRAME_ILR
//-----------------------------------------------------------------------//
//                       EFRAMEWORK LIMITED LICENSE                      //
//                            Version 2023.10                            //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
//   LICENSED-USER is permitted to refer this license document.          //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.SCENE;
using UnityEngine;

public class Launcher : EFrame.ILauncher
{
    public override void Start(GameObject go)
    {
        SceneManager.Goto(LOGIN.LoginScene.Instance);
    }

    public override void OnGUI() { }

    public override void Update() { }

    public override void LateUpdate() { }

    public override void FixedUpdate() { }

    public override void OnDestroy() { }

    public override void OnApplicationFocus(bool status)
    {
        Helper.Log("Lancher.OnApplicationFocus: {0}", status);
    }

    public override void OnApplicationPause(bool status)
    {
        Helper.Log("Lancher.OnApplicationPause: {0}", status);
    }

    public override void OnApplicationQuit()
    {
        Helper.Log("Lancher.OnApplicationQuit");
    }

    public override void OnSceneWasLoaded(UnityEngine.SceneManagement.Scene scene, UnityEngine.SceneManagement.LoadSceneMode mode)
    {
        Helper.Log("Lancher.OnSceneWasLoaded: scene-{0}, mode-{1}", scene.name, mode.ToString());
    }

    public override void OnException(string exception, bool isNew)
    {
        Helper.Log("Lancher.OnException");
    }
}
#endif

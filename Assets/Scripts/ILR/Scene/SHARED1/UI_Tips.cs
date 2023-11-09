#if UNITY_EDITOR || !EFRAME_ILR
using System.Collections;
using UnityEngine;
using EP.U3D.LIBRARY.BASE;
using ILR.Core;

namespace ILR.Scene.Shared
{
    public class UI_Tips : View<UI_Tips>
    {
        public float Time;
        private Coroutine mCR;

        public override void OnIEnable()
        {
            if (Time >= 0) mCR = Loom.StartCR(DelayClose());
        }

        public override void OnIDisable()
        {
            if (mCR != null) Loom.StopCR(mCR); mCR = null;
        }

        private IEnumerator DelayClose()
        {
            yield return new WaitForSeconds(Time);
            CloseWindow();
        }
    }
}
#endif

#if UNITY_EDITOR || !EFRAME_ILR
using ILR.Core;

namespace ILR.Scene.Login
{
    public class LoginView
    {
        public static ViewMeta UI_Login = new ViewMeta("LOGIN/UI/UI_Login");
        public static ViewMeta UI_Register = new ViewMeta("LOGIN/UI/UI_Register");
    }
}
#endif

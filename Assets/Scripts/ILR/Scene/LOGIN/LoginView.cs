#if UNITY_EDITOR || !EFRAME_ILR
namespace LOGIN
{
    public class LoginView
    {
        public static Modulize.ViewMeta UI_Login = new Modulize.ViewMeta("LOGIN/UI/UI_Login");
        public static Modulize.ViewMeta UI_Register = new Modulize.ViewMeta("LOGIN/UI/UI_Register");
    }
}
#endif

using EP.U3D.LIBRARY.BASE;

namespace CS.Core
{
    /// <summary>
    /// 渠道类型
    /// </summary>
    public enum ChannelType
    {
        None,
        Default
    }

    /// <summary>
    /// 运行时类型
    /// </summary>
    public enum RuntimeType
    {
        None,
        Windows,
        Android,
        iOS,
        H5
    }

    /// <summary>
    /// 平台实体（泛型单例）
    /// </summary>
    /// <typeparam name="TPlat"></typeparam>
    public class PlatGeneric<TPlat> : Platform where TPlat : Platform
    {
        public new static TPlat Instance
        {
            get
            {
                var temp = mInstance as TPlat;
                if (temp == null)
                {
                    temp = CreateInstance<TPlat>();
                    temp.Read(Constants.PLAT_STREAMING_FILE);
                    mInstance = temp;
                }
                return temp;
            }
            set { mInstance = value; }
        }
    }

    /// <summary>
    /// 默认平台
    /// </summary>
    [Platform("Default", "Windows")]
    [Platform("Default", "Android")]
    [Platform("Default", "iOS")]
    [Platform("Default", "H5")]
    public class PlatDefault : PlatGeneric<PlatDefault> { }
}

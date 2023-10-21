// AUTO GENERATED, DO NOT EDIT //
#pragma warning disable CS0108 // inherited super field, missing 'new'
using System;
using System.Reflection;
using System.Collections.Generic;
using EP.U3D.LIBRARY.ASSET;
using EP.U3D.LIBRARY.BASE;
using EP.U3D.LIBRARY.JSON;

namespace CSExcel
{
    public class I18NUpdater : EP.U3D.LIBRARY.I18N.ILanguage
    {
		/// <summary>
		/// 键值
		/// <summary>
		public string key { get; private set; }

		/// <summary>
		/// 中文
		/// <summary>
		public string SCN { get; private set; }

		/// <summary>
		/// English
		/// <summary>
		public string EN { get; private set; }

		/// <summary>
		/// Español
		/// <summary>
		public string ES { get; private set; }

		/// <summary>
		/// Arabic
		/// <summary>
		public string AR { get; private set; }

		/// <summary>
		/// German
		/// <summary>
		public string DE { get; private set; }

		/// <summary>
		/// French
		/// <summary>
		public string FR { get; private set; }

		/// <summary>
		/// Japanese
		/// <summary>
		public string JP { get; private set; }

		/// <summary>
		/// Korean
		/// <summary>
		public string KO { get; private set; }

		/// <summary>
		/// 繁体中文
		/// <summary>
		public string TCN { get; private set; }

        /// <summary>
        /// 键名列表
        /// </summary>
        public static readonly string[] KEYS = { "key", "SCN", "EN", "ES", "AR", "DE", "FR", "JP", "KO", "TCN" };

        /// <summary>
        /// 持久化资源路径
        /// </summary>
        public const string JSON_ASSET = "Resources/Internal/Excel/SHARED/I18NUpdater";

        /// <summary>
        /// 原始Json数据（使用前需判断是否就绪）
        /// </summary>
        public static JsonData RAW;

        /// <summary>
        /// 原始List数据（使用前需判断是否就绪）
        /// </summary>
        public static List<I18NUpdater> ARR = new List<I18NUpdater>();

        /// <summary>
        /// 是否初始化
        /// </summary>
        public static bool INITED;

        /// <summary>
        /// 是否就绪
        /// </summary>
        public static bool READY;

        /// <summary>
        /// 过滤器委托
        /// </summary>
        public delegate bool FILTERFUNC(I18NUpdater ele);

        private static void INIT()
        {
            INITED = true;
            try
            {
                UnityEngine.TextAsset asset = null;
                if (AssetManager.OK) asset = AssetManager.LoadAsset(JSON_ASSET, typeof(UnityEngine.TextAsset)) as UnityEngine.TextAsset;
                if (!asset) asset = AssetManager.LoadAsset(JSON_ASSET, typeof(UnityEngine.TextAsset), true) as UnityEngine.TextAsset;
                if (asset)
                {
                    JsonReader reader = new JsonReader(asset.text);
                    RAW = JsonMapper.ToObject(reader);
                    reader.Close();
                    Type bType = typeof(I18NUpdater).BaseType;
                    List<Type> visited = new List<Type>();
                    while (bType != null)
                    {
                        // prevent stack overflow
                        if (visited.Contains(bType)) break;
                        visited.Add(bType);
                        var fInited = bType.GetField("INITED", BindingFlags.Static | BindingFlags.Public);
                        if (fInited == null) break;
                        var mInit = bType.GetMethod("INIT", BindingFlags.Static | BindingFlags.NonPublic);
                        if (mInit == null) break;
                        if ((bool)fInited.GetValue(null) == false) mInit.Invoke(null, null);
                        var mRaw = bType.GetField("RAW", BindingFlags.Static | BindingFlags.Public);
                        if (mRaw == null) break;
                        var vRaw = (JsonData)mRaw.GetValue(null);
                        bType = bType.BaseType;
                        if (vRaw == null) continue;
                        for (int i = 0; i < vRaw.Count; i++) { RAW.Add(vRaw[i]); }
                    }
                    for (int i = 0; i < RAW.Count; i++) { ARR.Add(JsonMapper.ToObject(typeof(I18NUpdater), RAW[i].ToJson()) as I18NUpdater); }
                    READY = true;
                }
                else
                {
                    Helper.LogError("INIT {0} err: nil asset", JSON_ASSET);
                }
            }
            catch (Exception e)
            {
                Helper.LogException(e, $"INIT {JSON_ASSET} err");
            }
        }

        private static I18NUpdater mInstance;
        /// <summary>
        /// 模型单例（实例调用）
        /// </summary>
        public static I18NUpdater Instance
        {
            get
            {
                if (!INITED) INIT();
                if (mInstance == null) mInstance = new I18NUpdater();
                return mInstance;
            }
        }

        /// <summary>
        /// 根据提供的Key查找对应的数据（实例调用）
        /// </summary>
        /// <param name="keyvalue">键值</param>
        /// <param name="keyname">键名</param>
        /// <returns></returns>
        public I18NUpdater Read(string keyvalue, string keyname = "ID") { return READ(keyvalue, keyname); }

        /// <summary>
        /// 根据提供的Key查找对应的数据（实例调用）
        /// </summary>
        /// <param name="keyvalue">键值</param>
        /// <param name="keyname">键名</param>
        /// <returns></returns>
        public EP.U3D.LIBRARY.I18N.ILanguage Read(string keyvalue, string keyname = "ID", bool distinct = false) { return READ(keyvalue, keyname); }

        /// <summary>
        /// 根据提供的Key查找对应的数据（静态调用）
        /// </summary>
        /// <param name="keyvalue">键值</param>
        /// <param name="keyname">键名</param>
        /// <returns></returns>
        public static I18NUpdater READ(string keyvalue, string keyname = "ID")
        {
            if (!INITED) INIT();
            if (!READY) return null;
            int j = -1;
            for (int i = 0; i < RAW.Count; i++)
            {
                var row = RAW[i];
                if (j == -1)
                {
                    bool bkey = false;
                    for (int k = 0; k < KEYS.Length; k++)
                    {
                        j++;
                        var _key = KEYS[k];
                        if (_key == keyname)
                        {
                            bkey = true;
                            break;
                        }
                    }
                    if (bkey == false) return null;// no key was found
                }
                var _value = row[j];
                if ((string)_value == keyvalue) return ARR[i];
            }
            return null;
        }

        /// <summary>
        /// 根据过滤器列举匹配的数据（实例调用）
        /// </summary>
        /// <param name="filter">过滤器</param>
        /// <returns></returns>
        public List<I18NUpdater> List(FILTERFUNC filter) { return LIST(filter); }

        /// <summary>
        /// 根据过滤器列举匹配的数据（实例调用）
        /// </summary>
        /// <param name="filter">过滤器</param>
        /// <returns></returns>
        public List<EP.U3D.LIBRARY.I18N.ILanguage> List(FILTERFUNC filter, bool distinct = false) { return LIST(filter, false); }

        /// <summary>
        /// 根据过滤器列举匹配的数据（静态调用）
        /// </summary>
        /// <param name="filter">过滤器</param>
        /// <returns></returns>
        public static List<I18NUpdater> LIST(FILTERFUNC filter)
        {
            if (!INITED) INIT();
            if (!READY) return ARR;
            if (filter == null)
            {
                return ARR;
            }
            else
            {
                List<I18NUpdater> rets = new List<I18NUpdater>();
                for (int i = 0; i < ARR.Count; i++)
                {
                    var ele = ARR[i];
                    if (filter(ele))
                    {
                        rets.Add(ele);
                    }
                }
                return rets;
            }
        }
        
        /// <summary>
        /// 根据过滤器列举匹配的数据（静态调用）
        /// </summary>
        /// <param name="filter">过滤器</param>
        /// <returns></returns>
        public static List<EP.U3D.LIBRARY.I18N.ILanguage> LIST(FILTERFUNC filter, bool distinct = false) { return LIST(filter, false); }

		private static I18NUpdater _TIPS1001;
		public static I18NUpdater TIPS1001 { get { if (_TIPS1001 == null) _TIPS1001 = READ("TIPS1001", "key"); return _TIPS1001; } }

		private static I18NUpdater _TIPS1002;
		public static I18NUpdater TIPS1002 { get { if (_TIPS1002 == null) _TIPS1002 = READ("TIPS1002", "key"); return _TIPS1002; } }

		private static I18NUpdater _TIPS1003;
		public static I18NUpdater TIPS1003 { get { if (_TIPS1003 == null) _TIPS1003 = READ("TIPS1003", "key"); return _TIPS1003; } }

		private static I18NUpdater _TIPS1004;
		public static I18NUpdater TIPS1004 { get { if (_TIPS1004 == null) _TIPS1004 = READ("TIPS1004", "key"); return _TIPS1004; } }

		private static I18NUpdater _TIPS1005;
		public static I18NUpdater TIPS1005 { get { if (_TIPS1005 == null) _TIPS1005 = READ("TIPS1005", "key"); return _TIPS1005; } }

		private static I18NUpdater _TIPS1006;
		public static I18NUpdater TIPS1006 { get { if (_TIPS1006 == null) _TIPS1006 = READ("TIPS1006", "key"); return _TIPS1006; } }

		private static I18NUpdater _TIPS1007;
		public static I18NUpdater TIPS1007 { get { if (_TIPS1007 == null) _TIPS1007 = READ("TIPS1007", "key"); return _TIPS1007; } }

		private static I18NUpdater _TIPS1008;
		public static I18NUpdater TIPS1008 { get { if (_TIPS1008 == null) _TIPS1008 = READ("TIPS1008", "key"); return _TIPS1008; } }

		private static I18NUpdater _TIPS1009;
		public static I18NUpdater TIPS1009 { get { if (_TIPS1009 == null) _TIPS1009 = READ("TIPS1009", "key"); return _TIPS1009; } }

		private static I18NUpdater _TIPS1010;
		public static I18NUpdater TIPS1010 { get { if (_TIPS1010 == null) _TIPS1010 = READ("TIPS1010", "key"); return _TIPS1010; } }

		private static I18NUpdater _TIPS1011;
		public static I18NUpdater TIPS1011 { get { if (_TIPS1011 == null) _TIPS1011 = READ("TIPS1011", "key"); return _TIPS1011; } }

    }
}
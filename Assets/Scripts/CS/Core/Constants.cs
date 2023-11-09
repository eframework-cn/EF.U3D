using System;
using System.Linq;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace CS.Core
{
    public class Constants : EP.U3D.LIBRARY.BASE.Constants
    {
        class OverrideAttribute : Attribute { }

#if UNITY_EDITOR
        [InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod(UnityEngine.RuntimeInitializeLoadType.SubsystemRegistration)]
#endif
        public static void Initialize()
        {
            Type baseType = typeof(EP.U3D.LIBRARY.BASE.Constants);
            Type realType = typeof(Constants);
            var fields = realType.GetFields();
            var props = realType.GetProperties();
            for (int i = 0; i < fields.Length; i++)
            {
                var field = fields[i];
                if (field.CustomAttributes.Select(e => { return e.AttributeType == typeof(OverrideAttribute); }).Count() == 1)
                {
                    var bfield = baseType.GetField(field.Name);
                    bfield?.SetValue(null, field.GetValue(null));
                };
            }
            for (int i = 0; i < props.Length; i++)
            {
                var prop = props[i];
                if (!prop.CanWrite) continue;
                if (prop.CustomAttributes.Select(e => { return e.AttributeType == typeof(OverrideAttribute); }).Count() == 1)
                {
                    var bprop = baseType.GetProperty(prop.Name);
                    bprop?.SetValue(null, prop.GetValue(null));
                };
            }
        }
    }
}

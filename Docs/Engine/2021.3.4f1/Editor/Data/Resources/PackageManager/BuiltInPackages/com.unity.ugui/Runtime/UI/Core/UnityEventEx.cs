using System;
using UnityEngine.Events;

namespace UnityEngine.UI
{
    /// <summary>
    /// UnityEvent extension, add '+=, -=' support.
    /// </summary>
    [Serializable]
    public class UnityEventEx : UnityEvent
    {
        public static UnityEventEx operator +(UnityEventEx evt, UnityAction cb) { if (evt != null) evt.AddListener(cb); return evt; }
        public static UnityEventEx operator -(UnityEventEx evt, UnityAction cb) { if (evt != null) evt.RemoveListener(cb); return evt; }
    }

    /// <summary>
    /// UnityEvent<T0> extension, add '+=, -=' support.
    /// </summary>
    [Serializable]
    public class UnityEventEx<T0> : UnityEvent<T0>
    {
        public static UnityEventEx<T0> operator +(UnityEventEx<T0> evt, UnityAction<T0> cb) { if (evt != null) evt.AddListener(cb); return evt; }
        public static UnityEventEx<T0> operator -(UnityEventEx<T0> evt, UnityAction<T0> cb) { if (evt != null) evt.RemoveListener(cb); return evt; }
    }

    /// <summary>
    /// UnityEvent<T0, T1> extension, add '+=, -=' support.
    /// </summary>
    [Serializable]
    public class UnityEventEx<T0, T1> : UnityEvent<T0, T1>
    {
        public static UnityEventEx<T0, T1> operator +(UnityEventEx<T0, T1> evt, UnityAction<T0, T1> cb) { if (evt != null) evt.AddListener(cb); return evt; }
        public static UnityEventEx<T0, T1> operator -(UnityEventEx<T0, T1> evt, UnityAction<T0, T1> cb) { if (evt != null) evt.RemoveListener(cb); return evt; }
    }

    /// <summary>
    /// UnityEvent<T0, T1, T2> extension, add '+=, -=' support.
    /// </summary>
    [Serializable]
    public class UnityEventEx<T0, T1, T2> : UnityEvent<T0, T1, T2>
    {
        public static UnityEventEx<T0, T1, T2> operator +(UnityEventEx<T0, T1, T2> evt, UnityAction<T0, T1, T2> cb) { if (evt != null) evt.AddListener(cb); return evt; }
        public static UnityEventEx<T0, T1, T2> operator -(UnityEventEx<T0, T1, T2> evt, UnityAction<T0, T1, T2> cb) { if (evt != null) evt.RemoveListener(cb); return evt; }
    }
}
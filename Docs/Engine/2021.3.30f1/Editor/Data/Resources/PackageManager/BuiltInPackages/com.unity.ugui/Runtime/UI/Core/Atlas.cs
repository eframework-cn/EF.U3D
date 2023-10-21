using System.Collections.Generic;

namespace UnityEngine.UI
{
    [AddComponentMenu("UI/Atlas")]
    public class Atlas : MonoBehaviour
    {
        public Sprite[] sprites;
        private readonly Dictionary<string, int> mIndex = new Dictionary<string, int>();
        private int mTemp = 0;

        public Sprite GetSprite(string name)
        {
            if (mIndex.Count == 0)
            {
                for (int i = 0; i < sprites.Length; i++)
                {
                    mIndex.Add(sprites[i].name, i);
                }
            }
            if (mIndex.TryGetValue(name, out mTemp))
            {
                return sprites[mTemp];
            }
            return null;
        }
    }
}

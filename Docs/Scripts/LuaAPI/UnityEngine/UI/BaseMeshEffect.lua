---@class UnityEngine.UI.BaseMeshEffect : UnityEngine.EventSystems.UIBehaviour
local BaseMeshEffect = {}

---@overload fun(vh:UnityEngine.UI.VertexHelper):void
---@param mesh UnityEngine.Mesh
function BaseMeshEffect:ModifyMesh(mesh) end

UnityEngine.UI.BaseMeshEffect = BaseMeshEffect
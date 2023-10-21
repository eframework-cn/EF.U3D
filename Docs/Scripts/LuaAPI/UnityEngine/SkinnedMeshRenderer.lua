---@class UnityEngine.SkinnedMeshRenderer : UnityEngine.Renderer
---@field quality UnityEngine.SkinQuality
---@field updateWhenOffscreen bool
---@field forceMatrixRecalculationPerRender bool
---@field rootBone UnityEngine.Transform
---@field bones UnityEngine.Transform[]
---@field sharedMesh UnityEngine.Mesh
---@field skinnedMotionVectors bool
---@field vertexBufferTarget UnityEngine.GraphicsBuffer.Target
local SkinnedMeshRenderer = {}

---@param index int
---@return float
function SkinnedMeshRenderer:GetBlendShapeWeight(index) end

---@param index int
---@param value float
function SkinnedMeshRenderer:SetBlendShapeWeight(index, value) end

---@overload fun(mesh:UnityEngine.Mesh, useScale:bool):void
---@param mesh UnityEngine.Mesh
function SkinnedMeshRenderer:BakeMesh(mesh) end

---@return UnityEngine.GraphicsBuffer
function SkinnedMeshRenderer:GetVertexBuffer() end

---@return UnityEngine.GraphicsBuffer
function SkinnedMeshRenderer:GetPreviousVertexBuffer() end

UnityEngine.SkinnedMeshRenderer = SkinnedMeshRenderer
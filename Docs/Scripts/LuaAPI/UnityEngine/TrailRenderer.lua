---@class UnityEngine.TrailRenderer : UnityEngine.Renderer
---@field time float
---@field startWidth float
---@field endWidth float
---@field widthMultiplier float
---@field autodestruct bool
---@field emitting bool
---@field numCornerVertices int
---@field numCapVertices int
---@field minVertexDistance float
---@field startColor UnityEngine.Color
---@field endColor UnityEngine.Color
---@field positionCount int
---@field shadowBias float
---@field generateLightingData bool
---@field textureMode UnityEngine.LineTextureMode
---@field alignment UnityEngine.LineAlignment
---@field widthCurve UnityEngine.AnimationCurve
---@field colorGradient UnityEngine.Gradient
local TrailRenderer = {}

---@param index int
---@param position UnityEngine.Vector3
function TrailRenderer:SetPosition(index, position) end

---@param index int
---@return UnityEngine.Vector3
function TrailRenderer:GetPosition(index) end

function TrailRenderer:Clear() end

---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera, useTransform:bool):void
---@param mesh UnityEngine.Mesh
---@param useTransform bool
function TrailRenderer:BakeMesh(mesh, useTransform) end

---@overload fun(positions:Unity.Collections.NativeArray):int
---@overload fun(positions:Unity.Collections.NativeSlice):int
---@param positions UnityEngine.Vector3[]
---@return int
function TrailRenderer:GetPositions(positions) end

---@overload fun(positions:Unity.Collections.NativeArray):int
---@overload fun(positions:Unity.Collections.NativeSlice):int
---@param positions UnityEngine.Vector3[]
---@return int
function TrailRenderer:GetVisiblePositions(positions) end

---@overload fun(positions:Unity.Collections.NativeArray):void
---@overload fun(positions:Unity.Collections.NativeSlice):void
---@param positions UnityEngine.Vector3[]
function TrailRenderer:SetPositions(positions) end

---@param position UnityEngine.Vector3
function TrailRenderer:AddPosition(position) end

---@overload fun(positions:Unity.Collections.NativeArray):void
---@overload fun(positions:Unity.Collections.NativeSlice):void
---@param positions UnityEngine.Vector3[]
function TrailRenderer:AddPositions(positions) end

UnityEngine.TrailRenderer = TrailRenderer
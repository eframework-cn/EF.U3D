---@class UnityEngine.Renderer : UnityEngine.Component
---@field bounds UnityEngine.Bounds
---@field localBounds UnityEngine.Bounds
---@field enabled bool
---@field isVisible bool
---@field shadowCastingMode UnityEngine.Rendering.ShadowCastingMode
---@field receiveShadows bool
---@field forceRenderingOff bool
---@field staticShadowCaster bool
---@field motionVectorGenerationMode UnityEngine.MotionVectorGenerationMode
---@field lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@field reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage
---@field renderingLayerMask uint
---@field rendererPriority int
---@field rayTracingMode UnityEngine.Experimental.Rendering.RayTracingMode
---@field sortingLayerName System.String
---@field sortingLayerID int
---@field sortingOrder int
---@field allowOcclusionWhenDynamic bool
---@field isPartOfStaticBatch bool
---@field worldToLocalMatrix UnityEngine.Matrix4x4
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field lightProbeProxyVolumeOverride UnityEngine.GameObject
---@field probeAnchor UnityEngine.Transform
---@field lightmapIndex int
---@field realtimeLightmapIndex int
---@field lightmapScaleOffset UnityEngine.Vector4
---@field realtimeLightmapScaleOffset UnityEngine.Vector4
---@field materials UnityEngine.Material[]
---@field material UnityEngine.Material
---@field sharedMaterial UnityEngine.Material
---@field sharedMaterials UnityEngine.Material[]
local Renderer = {}

function Renderer:ResetBounds() end

function Renderer:ResetLocalBounds() end

---@return bool
function Renderer:HasPropertyBlock() end

---@overload fun(properties:UnityEngine.MaterialPropertyBlock, materialIndex:int):void
---@param properties UnityEngine.MaterialPropertyBlock
function Renderer:SetPropertyBlock(properties) end

---@overload fun(properties:UnityEngine.MaterialPropertyBlock, materialIndex:int):void
---@param properties UnityEngine.MaterialPropertyBlock
function Renderer:GetPropertyBlock(properties) end

---@param m table
function Renderer:GetMaterials(m) end

---@param m table
function Renderer:GetSharedMaterials(m) end

---@param result table
function Renderer:GetClosestReflectionProbes(result) end

UnityEngine.Renderer = Renderer
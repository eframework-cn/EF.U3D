---@class UnityEngine.QualitySettings : UnityEngine.Object
---@field pixelLightCount int
---@field shadows UnityEngine.ShadowQuality
---@field shadowProjection UnityEngine.ShadowProjection
---@field shadowCascades int
---@field shadowDistance float
---@field shadowResolution UnityEngine.ShadowResolution
---@field shadowmaskMode UnityEngine.ShadowmaskMode
---@field shadowNearPlaneOffset float
---@field shadowCascade2Split float
---@field shadowCascade4Split UnityEngine.Vector3
---@field lodBias float
---@field anisotropicFiltering UnityEngine.AnisotropicFiltering
---@field masterTextureLimit int
---@field maximumLODLevel int
---@field particleRaycastBudget int
---@field softParticles bool
---@field softVegetation bool
---@field vSyncCount int
---@field realtimeGICPUUsage int
---@field antiAliasing int
---@field asyncUploadTimeSlice int
---@field asyncUploadBufferSize int
---@field asyncUploadPersistentBuffer bool
---@field realtimeReflectionProbes bool
---@field billboardsFaceCameraPosition bool
---@field resolutionScalingFixedDPIFactor float
---@field renderPipeline UnityEngine.Rendering.RenderPipelineAsset
---@field skinWeights UnityEngine.SkinWeights
---@field streamingMipmapsActive bool
---@field streamingMipmapsMemoryBudget float
---@field streamingMipmapsAddAllCameras bool
---@field streamingMipmapsMaxFileIORequests int
---@field maxQueuedFrames int
---@field names string[]
---@field desiredColorSpace UnityEngine.ColorSpace
---@field activeColorSpace UnityEngine.ColorSpace
local QualitySettings = {}

---@overload fun():void
---@param applyExpensiveChanges bool
function QualitySettings.IncreaseLevel(applyExpensiveChanges) end

---@overload fun():void
---@param applyExpensiveChanges bool
function QualitySettings.DecreaseLevel(applyExpensiveChanges) end

---@overload fun(index:int, applyExpensiveChanges:bool):void
---@param index int
function QualitySettings.SetQualityLevel(index) end

---@param lodBias float
---@param maximumLODLevel int
---@param setDirty bool
function QualitySettings.SetLODSettings(lodBias, maximumLODLevel, setDirty) end

---@param index int
---@return UnityEngine.Rendering.RenderPipelineAsset
function QualitySettings.GetRenderPipelineAssetAt(index) end

---@return int
function QualitySettings.GetQualityLevel() end

---@return UnityEngine.Object
function QualitySettings.GetQualitySettings() end

UnityEngine.QualitySettings = QualitySettings
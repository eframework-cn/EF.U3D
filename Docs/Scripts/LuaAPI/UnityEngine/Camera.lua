---@class UnityEngine.Camera : UnityEngine.Behaviour
---@field nearClipPlane float
---@field farClipPlane float
---@field fieldOfView float
---@field renderingPath UnityEngine.RenderingPath
---@field actualRenderingPath UnityEngine.RenderingPath
---@field allowHDR bool
---@field allowMSAA bool
---@field allowDynamicResolution bool
---@field forceIntoRenderTexture bool
---@field orthographicSize float
---@field orthographic bool
---@field opaqueSortMode UnityEngine.Rendering.OpaqueSortMode
---@field transparencySortMode UnityEngine.TransparencySortMode
---@field transparencySortAxis UnityEngine.Vector3
---@field depth float
---@field aspect float
---@field velocity UnityEngine.Vector3
---@field cullingMask int
---@field eventMask int
---@field layerCullSpherical bool
---@field cameraType UnityEngine.CameraType
---@field overrideSceneCullingMask ulong
---@field layerCullDistances float[]
---@field useOcclusionCulling bool
---@field cullingMatrix UnityEngine.Matrix4x4
---@field backgroundColor UnityEngine.Color
---@field clearFlags UnityEngine.CameraClearFlags
---@field depthTextureMode UnityEngine.DepthTextureMode
---@field clearStencilAfterLightingPass bool
---@field usePhysicalProperties bool
---@field sensorSize UnityEngine.Vector2
---@field lensShift UnityEngine.Vector2
---@field focalLength float
---@field gateFit UnityEngine.Camera.GateFitMode
---@field rect UnityEngine.Rect
---@field pixelRect UnityEngine.Rect
---@field pixelWidth int
---@field pixelHeight int
---@field scaledPixelWidth int
---@field scaledPixelHeight int
---@field targetTexture UnityEngine.RenderTexture
---@field activeTexture UnityEngine.RenderTexture
---@field targetDisplay int
---@field cameraToWorldMatrix UnityEngine.Matrix4x4
---@field worldToCameraMatrix UnityEngine.Matrix4x4
---@field projectionMatrix UnityEngine.Matrix4x4
---@field nonJitteredProjectionMatrix UnityEngine.Matrix4x4
---@field useJitteredProjectionMatrixForTransparentRendering bool
---@field previousViewProjectionMatrix UnityEngine.Matrix4x4
---@field main UnityEngine.Camera
---@field current UnityEngine.Camera
---@field scene UnityEngine.SceneManagement.Scene
---@field stereoEnabled bool
---@field stereoSeparation float
---@field stereoConvergence float
---@field areVRStereoViewMatricesWithinSingleCullTolerance bool
---@field stereoTargetEye UnityEngine.StereoTargetEyeMask
---@field stereoActiveEye UnityEngine.Camera.MonoOrStereoscopicEye
---@field allCamerasCount int
---@field allCameras UnityEngine.Camera[]
---@field sceneViewFilterMode UnityEngine.Camera.SceneViewFilterMode
---@field commandBufferCount int
---@field onPreCull UnityEngine.Camera.CameraCallback
---@field onPreRender UnityEngine.Camera.CameraCallback
---@field onPostRender UnityEngine.Camera.CameraCallback
local Camera = {}

function Camera:Reset() end

function Camera:ResetTransparencySortSettings() end

function Camera:ResetAspect() end

function Camera:ResetCullingMatrix() end

---@param shader UnityEngine.Shader
---@param replacementTag System.String
function Camera:SetReplacementShader(shader, replacementTag) end

function Camera:ResetReplacementShader() end

---@return float
function Camera:GetGateFittedFieldOfView() end

---@return UnityEngine.Vector2
function Camera:GetGateFittedLensShift() end

---@overload fun(colorBuffer:UnityEngine.RenderBuffer[], depthBuffer:UnityEngine.RenderBuffer):void
---@param colorBuffer UnityEngine.RenderBuffer
---@param depthBuffer UnityEngine.RenderBuffer
function Camera:SetTargetBuffers(colorBuffer, depthBuffer) end

function Camera:ResetWorldToCameraMatrix() end

function Camera:ResetProjectionMatrix() end

---@param clipPlane UnityEngine.Vector4
---@return UnityEngine.Matrix4x4
function Camera:CalculateObliqueMatrix(clipPlane) end

---@overload fun(position:UnityEngine.Vector3):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function Camera:WorldToScreenPoint(position, eye) end

---@overload fun(position:UnityEngine.Vector3):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function Camera:WorldToViewportPoint(position, eye) end

---@overload fun(position:UnityEngine.Vector3):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function Camera:ViewportToWorldPoint(position, eye) end

---@overload fun(position:UnityEngine.Vector3):UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function Camera:ScreenToWorldPoint(position, eye) end

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Camera:ScreenToViewportPoint(position) end

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function Camera:ViewportToScreenPoint(position) end

---@overload fun(pos:UnityEngine.Vector3):UnityEngine.Ray
---@param pos UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Ray
function Camera:ViewportPointToRay(pos, eye) end

---@overload fun(pos:UnityEngine.Vector3):UnityEngine.Ray
---@param pos UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Ray
function Camera:ScreenPointToRay(pos, eye) end

---@param viewport UnityEngine.Rect
---@param z float
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@param outCorners UnityEngine.Vector3[]
function Camera:CalculateFrustumCorners(viewport, z, eye, outCorners) end

---@param output UnityEngine.Matrix4x4
---@param focalLength float
---@param sensorSize UnityEngine.Vector2
---@param lensShift UnityEngine.Vector2
---@param nearClip float
---@param farClip float
---@param gateFitParameters UnityEngine.Camera.GateFitParameters
function Camera.CalculateProjectionMatrixFromPhysicalProperties(output, focalLength, sensorSize, lensShift, nearClip, farClip, gateFitParameters) end

---@param focalLength float
---@param sensorSize float
---@return float
function Camera.FocalLengthToFieldOfView(focalLength, sensorSize) end

---@param fieldOfView float
---@param sensorSize float
---@return float
function Camera.FieldOfViewToFocalLength(fieldOfView, sensorSize) end

---@param horizontalFieldOfView float
---@param aspectRatio float
---@return float
function Camera.HorizontalToVerticalFieldOfView(horizontalFieldOfView, aspectRatio) end

---@param verticalFieldOfView float
---@param aspectRatio float
---@return float
function Camera.VerticalToHorizontalFieldOfView(verticalFieldOfView, aspectRatio) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function Camera:GetStereoNonJitteredProjectionMatrix(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function Camera:GetStereoViewMatrix(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
function Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function Camera:GetStereoProjectionMatrix(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
function Camera:SetStereoProjectionMatrix(eye, matrix) end

function Camera:ResetStereoProjectionMatrices() end

---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
function Camera:SetStereoViewMatrix(eye, matrix) end

function Camera:ResetStereoViewMatrices() end

---@param cameras UnityEngine.Camera[]
---@return int
function Camera.GetAllCameras(cameras) end

---@overload fun(cubemap:UnityEngine.Cubemap):bool
---@overload fun(cubemap:UnityEngine.RenderTexture, faceMask:int):bool
---@overload fun(cubemap:UnityEngine.RenderTexture):bool
---@overload fun(cubemap:UnityEngine.RenderTexture, faceMask:int, stereoEye:UnityEngine.Camera.MonoOrStereoscopicEye):bool
---@param cubemap UnityEngine.Cubemap
---@param faceMask int
---@return bool
function Camera:RenderToCubemap(cubemap, faceMask) end

function Camera:Render() end

---@param shader UnityEngine.Shader
---@param replacementTag System.String
function Camera:RenderWithShader(shader, replacementTag) end

function Camera:RenderDontRestore() end

---@param renderRequests table
function Camera:SubmitRenderRequests(renderRequests) end

---@param cur UnityEngine.Camera
function Camera.SetupCurrent(cur) end

---@param other UnityEngine.Camera
function Camera:CopyFrom(other) end

---@param evt UnityEngine.Rendering.CameraEvent
function Camera:RemoveCommandBuffers(evt) end

function Camera:RemoveAllCommandBuffers() end

---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function Camera:AddCommandBuffer(evt, buffer) end

---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function Camera:AddCommandBufferAsync(evt, buffer, queueType) end

---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function Camera:RemoveCommandBuffer(evt, buffer) end

---@param evt UnityEngine.Rendering.CameraEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function Camera:GetCommandBuffers(evt) end

---@overload fun(stereoAware:bool, cullingParameters:UnityEngine.Rendering.ScriptableCullingParameters):bool
---@param cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@return bool
function Camera:TryGetCullingParameters(cullingParameters) end

UnityEngine.Camera = Camera
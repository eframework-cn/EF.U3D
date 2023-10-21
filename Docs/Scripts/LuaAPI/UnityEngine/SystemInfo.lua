---@class UnityEngine.SystemInfo : System.Object
---@field batteryLevel float
---@field batteryStatus UnityEngine.BatteryStatus
---@field operatingSystem System.String
---@field operatingSystemFamily UnityEngine.OperatingSystemFamily
---@field processorType System.String
---@field processorFrequency int
---@field processorCount int
---@field systemMemorySize int
---@field deviceUniqueIdentifier System.String
---@field deviceName System.String
---@field deviceModel System.String
---@field supportsAccelerometer bool
---@field supportsGyroscope bool
---@field supportsLocationService bool
---@field supportsVibration bool
---@field supportsAudio bool
---@field deviceType UnityEngine.DeviceType
---@field graphicsMemorySize int
---@field graphicsDeviceName System.String
---@field graphicsDeviceVendor System.String
---@field graphicsDeviceID int
---@field graphicsDeviceVendorID int
---@field graphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType
---@field graphicsUVStartsAtTop bool
---@field graphicsDeviceVersion System.String
---@field graphicsShaderLevel int
---@field graphicsMultiThreaded bool
---@field renderingThreadingMode UnityEngine.Rendering.RenderingThreadingMode
---@field hasHiddenSurfaceRemovalOnGPU bool
---@field hasDynamicUniformArrayIndexingInFragmentShaders bool
---@field supportsShadows bool
---@field supportsRawShadowDepthSampling bool
---@field supportsMotionVectors bool
---@field supports3DTextures bool
---@field supportsCompressed3DTextures bool
---@field supports2DArrayTextures bool
---@field supports3DRenderTextures bool
---@field supportsCubemapArrayTextures bool
---@field supportsAnisotropicFilter bool
---@field copyTextureSupport UnityEngine.Rendering.CopyTextureSupport
---@field supportsComputeShaders bool
---@field supportsGeometryShaders bool
---@field supportsTessellationShaders bool
---@field supportsRenderTargetArrayIndexFromVertexShader bool
---@field supportsInstancing bool
---@field supportsHardwareQuadTopology bool
---@field supports32bitsIndexBuffer bool
---@field supportsSparseTextures bool
---@field supportedRenderTargetCount int
---@field supportsSeparatedRenderTargetsBlend bool
---@field supportedRandomWriteTargetCount int
---@field supportsMultisampledTextures int
---@field supportsMultisampled2DArrayTextures bool
---@field supportsMultisampleAutoResolve bool
---@field supportsTextureWrapMirrorOnce int
---@field usesReversedZBuffer bool
---@field npotSupport UnityEngine.NPOTSupport
---@field maxTextureSize int
---@field maxTexture3DSize int
---@field maxTextureArraySlices int
---@field maxCubemapSize int
---@field maxAnisotropyLevel int
---@field maxComputeBufferInputsVertex int
---@field maxComputeBufferInputsFragment int
---@field maxComputeBufferInputsGeometry int
---@field maxComputeBufferInputsDomain int
---@field maxComputeBufferInputsHull int
---@field maxComputeBufferInputsCompute int
---@field maxComputeWorkGroupSize int
---@field maxComputeWorkGroupSizeX int
---@field maxComputeWorkGroupSizeY int
---@field maxComputeWorkGroupSizeZ int
---@field computeSubGroupSize int
---@field supportsAsyncCompute bool
---@field supportsGpuRecorder bool
---@field supportsGraphicsFence bool
---@field supportsAsyncGPUReadback bool
---@field supportsRayTracing bool
---@field supportsSetConstantBuffer bool
---@field constantBufferOffsetAlignment int
---@field maxGraphicsBufferSize long
---@field hasMipMaxLevel bool
---@field supportsMipStreaming bool
---@field usesLoadStoreActions bool
---@field hdrDisplaySupportFlags UnityEngine.HDRDisplaySupportFlags
---@field supportsConservativeRaster bool
---@field supportsMultiview bool
---@field supportsStoreAndResolveAction bool
---@field supportsMultisampleResolveDepth bool
---@field unsupportedIdentifier System.String
local SystemInfo = {}

---@param format UnityEngine.RenderTextureFormat
---@return bool
function SystemInfo.SupportsRenderTextureFormat(format) end

---@param format UnityEngine.RenderTextureFormat
---@return bool
function SystemInfo.SupportsBlendingOnRenderTextureFormat(format) end

---@param format UnityEngine.RenderTextureFormat
---@return bool
function SystemInfo.SupportsRandomWriteOnRenderTextureFormat(format) end

---@param format UnityEngine.TextureFormat
---@return bool
function SystemInfo.SupportsTextureFormat(format) end

---@param format UnityEngine.Rendering.VertexAttributeFormat
---@param dimension int
---@return bool
function SystemInfo.SupportsVertexAttributeFormat(format, dimension) end

---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return bool
function SystemInfo.IsFormatSupported(format, usage) end

---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function SystemInfo.GetCompatibleFormat(format, usage) end

---@param format UnityEngine.Experimental.Rendering.DefaultFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function SystemInfo.GetGraphicsFormat(format) end

---@param desc UnityEngine.RenderTextureDescriptor
---@return int
function SystemInfo.GetRenderTextureSupportedMSAASampleCount(desc) end

UnityEngine.SystemInfo = SystemInfo
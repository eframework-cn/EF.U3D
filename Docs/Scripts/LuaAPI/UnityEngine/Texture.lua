---@class UnityEngine.Texture : UnityEngine.Object
---@field masterTextureLimit int
---@field mipmapCount int
---@field anisotropicFiltering UnityEngine.AnisotropicFiltering
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field width int
---@field height int
---@field dimension UnityEngine.Rendering.TextureDimension
---@field isReadable bool
---@field wrapMode UnityEngine.TextureWrapMode
---@field wrapModeU UnityEngine.TextureWrapMode
---@field wrapModeV UnityEngine.TextureWrapMode
---@field wrapModeW UnityEngine.TextureWrapMode
---@field filterMode UnityEngine.FilterMode
---@field anisoLevel int
---@field mipMapBias float
---@field texelSize UnityEngine.Vector2
---@field updateCount uint
---@field isDataSRGB bool
---@field totalTextureMemory ulong
---@field desiredTextureMemory ulong
---@field targetTextureMemory ulong
---@field currentTextureMemory ulong
---@field nonStreamingTextureMemory ulong
---@field streamingMipmapUploadCount ulong
---@field streamingRendererCount ulong
---@field streamingTextureCount ulong
---@field nonStreamingTextureCount ulong
---@field streamingTexturePendingLoadCount ulong
---@field streamingTextureLoadingCount ulong
---@field streamingTextureForceLoadAll bool
---@field streamingTextureDiscardUnusedMips bool
---@field allowThreadedTextureCreation bool
---@field GenerateAllMips int
local Texture = {}

---@param forcedMin int
---@param globalMax int
function Texture.SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax) end

---@return System.IntPtr
function Texture:GetNativeTexturePtr() end

function Texture:IncrementUpdateCount() end

function Texture.SetStreamingTextureMaterialDebugProperties() end

UnityEngine.Texture = Texture
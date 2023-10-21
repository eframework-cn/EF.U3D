---@class UnityEngine.RenderTexture : UnityEngine.Texture
---@field width int
---@field height int
---@field dimension UnityEngine.Rendering.TextureDimension
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field useMipMap bool
---@field sRGB bool
---@field vrUsage UnityEngine.VRTextureUsage
---@field memorylessMode UnityEngine.RenderTextureMemoryless
---@field format UnityEngine.RenderTextureFormat
---@field stencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field depthStencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field autoGenerateMips bool
---@field volumeDepth int
---@field antiAliasing int
---@field bindTextureMS bool
---@field enableRandomWrite bool
---@field useDynamicScale bool
---@field isPowerOfTwo bool
---@field active UnityEngine.RenderTexture
---@field colorBuffer UnityEngine.RenderBuffer
---@field depthBuffer UnityEngine.RenderBuffer
---@field depth int
---@field descriptor UnityEngine.RenderTextureDescriptor
local RenderTexture = {}

---@return System.IntPtr
function RenderTexture:GetNativeDepthBufferPtr() end

---@overload fun():void
---@param discardColor bool
---@param discardDepth bool
function RenderTexture:DiscardContents(discardColor, discardDepth) end

---@overload fun(target:UnityEngine.RenderTexture):void
function RenderTexture:ResolveAntiAliasedSurface() end

---@param propertyName System.String
function RenderTexture:SetGlobalShaderProperty(propertyName) end

---@return bool
function RenderTexture:Create() end

function RenderTexture:Release() end

---@return bool
function RenderTexture:IsCreated() end

function RenderTexture:GenerateMips() end

---@param equirect UnityEngine.RenderTexture
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
function RenderTexture:ConvertToEquirect(equirect, eye) end

---@param rt UnityEngine.RenderTexture
---@return bool
function RenderTexture.SupportsStencil(rt) end

---@param temp UnityEngine.RenderTexture
function RenderTexture.ReleaseTemporary(temp) end

---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing:int, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage, useDynamicScale:bool):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing:int, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing:int, memorylessMode:UnityEngine.RenderTextureMemoryless):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing:int):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.Experimental.Rendering.GraphicsFormat):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:int, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage, useDynamicScale:bool):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:int, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:int, memorylessMode:UnityEngine.RenderTextureMemoryless):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:int):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int, format:UnityEngine.RenderTextureFormat):UnityEngine.RenderTexture
---@overload fun(width:int, height:int, depthBuffer:int):UnityEngine.RenderTexture
---@overload fun(width:int, height:int):UnityEngine.RenderTexture
---@param desc UnityEngine.RenderTextureDescriptor
---@return UnityEngine.RenderTexture
function RenderTexture.GetTemporary(desc) end

UnityEngine.RenderTexture = RenderTexture
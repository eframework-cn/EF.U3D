---@class UnityEngine.Texture2D : UnityEngine.Texture
---@field format UnityEngine.TextureFormat
---@field ignoreMipmapLimit bool
---@field whiteTexture UnityEngine.Texture2D
---@field blackTexture UnityEngine.Texture2D
---@field redTexture UnityEngine.Texture2D
---@field grayTexture UnityEngine.Texture2D
---@field linearGrayTexture UnityEngine.Texture2D
---@field normalTexture UnityEngine.Texture2D
---@field isReadable bool
---@field vtOnly bool
---@field streamingMipmaps bool
---@field streamingMipmapsPriority int
---@field requestedMipmapLevel int
---@field minimumMipmapLevel int
---@field calculatedMipmapLevel int
---@field desiredMipmapLevel int
---@field loadingMipmapLevel int
---@field loadedMipmapLevel int
local Texture2D = {}

---@param highQuality bool
function Texture2D:Compress(highQuality) end

function Texture2D:ClearRequestedMipmapLevel() end

---@return bool
function Texture2D:IsRequestedMipmapLevelLoaded() end

function Texture2D:ClearMinimumMipmapLevel() end

---@param nativeTex System.IntPtr
function Texture2D:UpdateExternalTexture(nativeTex) end

---@return byte[]
function Texture2D:GetRawTextureData() end

---@overload fun(x:int, y:int, blockWidth:int, blockHeight:int):UnityEngine.Color[]
---@overload fun(miplevel:int):UnityEngine.Color[]
---@overload fun():UnityEngine.Color[]
---@param x int
---@param y int
---@param blockWidth int
---@param blockHeight int
---@param miplevel int
---@return UnityEngine.Color[]
function Texture2D:GetPixels(x, y, blockWidth, blockHeight, miplevel) end

---@overload fun():UnityEngine.Color32[]
---@param miplevel int
---@return UnityEngine.Color32[]
function Texture2D:GetPixels32(miplevel) end

---@overload fun(textures:UnityEngine.Texture2D[], padding:int, maximumAtlasSize:int):UnityEngine.Rect[]
---@overload fun(textures:UnityEngine.Texture2D[], padding:int):UnityEngine.Rect[]
---@param textures UnityEngine.Texture2D[]
---@param padding int
---@param maximumAtlasSize int
---@param makeNoLongerReadable bool
---@return UnityEngine.Rect[]
function Texture2D:PackTextures(textures, padding, maximumAtlasSize, makeNoLongerReadable) end

---@param width int
---@param height int
---@param format UnityEngine.TextureFormat
---@param mipChain bool
---@param linear bool
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture2D
function Texture2D.CreateExternalTexture(width, height, format, mipChain, linear, nativeTex) end

---@overload fun(x:int, y:int, color:UnityEngine.Color, mipLevel:int):void
---@param x int
---@param y int
---@param color UnityEngine.Color
function Texture2D:SetPixel(x, y, color) end

---@overload fun(x:int, y:int, blockWidth:int, blockHeight:int, colors:UnityEngine.Color[]):void
---@overload fun(colors:UnityEngine.Color[], miplevel:int):void
---@overload fun(colors:UnityEngine.Color[]):void
---@param x int
---@param y int
---@param blockWidth int
---@param blockHeight int
---@param colors UnityEngine.Color[]
---@param miplevel int
function Texture2D:SetPixels(x, y, blockWidth, blockHeight, colors, miplevel) end

---@overload fun(x:int, y:int, mipLevel:int):UnityEngine.Color
---@param x int
---@param y int
---@return UnityEngine.Color
function Texture2D:GetPixel(x, y) end

---@overload fun(u:float, v:float, mipLevel:int):UnityEngine.Color
---@param u float
---@param v float
---@return UnityEngine.Color
function Texture2D:GetPixelBilinear(u, v) end

---@overload fun(data:byte[]):void
---@param data System.IntPtr
---@param size int
function Texture2D:LoadRawTextureData(data, size) end

---@overload fun(updateMipmaps:bool):void
---@overload fun():void
---@param updateMipmaps bool
---@param makeNoLongerReadable bool
function Texture2D:Apply(updateMipmaps, makeNoLongerReadable) end

---@overload fun(width:int, height:int, format:UnityEngine.TextureFormat, hasMipMap:bool):bool
---@overload fun(width:int, height:int, format:UnityEngine.Experimental.Rendering.GraphicsFormat, hasMipMap:bool):bool
---@param width int
---@param height int
---@return bool
function Texture2D:Reinitialize(width, height) end

---@overload fun(source:UnityEngine.Rect, destX:int, destY:int):void
---@param source UnityEngine.Rect
---@param destX int
---@param destY int
---@param recalculateMipMaps bool
function Texture2D:ReadPixels(source, destX, destY, recalculateMipMaps) end

---@param sizes UnityEngine.Vector2[]
---@param padding int
---@param atlasSize int
---@param results table
---@return bool
function Texture2D.GenerateAtlas(sizes, padding, atlasSize, results) end

---@overload fun(colors:UnityEngine.Color32[]):void
---@overload fun(x:int, y:int, blockWidth:int, blockHeight:int, colors:UnityEngine.Color32[], miplevel:int):void
---@overload fun(x:int, y:int, blockWidth:int, blockHeight:int, colors:UnityEngine.Color32[]):void
---@param colors UnityEngine.Color32[]
---@param miplevel int
function Texture2D:SetPixels32(colors, miplevel) end

UnityEngine.Texture2D = Texture2D
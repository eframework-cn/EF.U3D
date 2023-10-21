---@class UnityEngine.Sprite : UnityEngine.Object
---@field bounds UnityEngine.Bounds
---@field rect UnityEngine.Rect
---@field border UnityEngine.Vector4
---@field texture UnityEngine.Texture2D
---@field pixelsPerUnit float
---@field spriteAtlasTextureScale float
---@field associatedAlphaSplitTexture UnityEngine.Texture2D
---@field pivot UnityEngine.Vector2
---@field packed bool
---@field packingMode UnityEngine.SpritePackingMode
---@field packingRotation UnityEngine.SpritePackingRotation
---@field textureRect UnityEngine.Rect
---@field textureRectOffset UnityEngine.Vector2
---@field vertices UnityEngine.Vector2[]
---@field triangles ushort[]
---@field uv UnityEngine.Vector2[]
local Sprite = {}

---@return int
function Sprite:GetPhysicsShapeCount() end

---@param shapeIdx int
---@return int
function Sprite:GetPhysicsShapePointCount(shapeIdx) end

---@param shapeIdx int
---@param physicsShape table
---@return int
function Sprite:GetPhysicsShape(shapeIdx, physicsShape) end

---@param physicsShapes System.Collections.Generic.IList
function Sprite:OverridePhysicsShape(physicsShapes) end

---@param vertices UnityEngine.Vector2[]
---@param triangles ushort[]
function Sprite:OverrideGeometry(vertices, triangles) end

---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:float, extrude:uint, meshType:UnityEngine.SpriteMeshType, border:UnityEngine.Vector4):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:float, extrude:uint, meshType:UnityEngine.SpriteMeshType):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:float, extrude:uint):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:float):UnityEngine.Sprite
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2):UnityEngine.Sprite
---@param texture UnityEngine.Texture2D
---@param rect UnityEngine.Rect
---@param pivot UnityEngine.Vector2
---@param pixelsPerUnit float
---@param extrude uint
---@param meshType UnityEngine.SpriteMeshType
---@param border UnityEngine.Vector4
---@param generateFallbackPhysicsShape bool
---@return UnityEngine.Sprite
function Sprite.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border, generateFallbackPhysicsShape) end

UnityEngine.Sprite = Sprite
---@class UnityEngine.Shader : UnityEngine.Object
---@field maximumChunksOverride int
---@field maximumLOD int
---@field globalMaximumLOD int
---@field isSupported bool
---@field globalRenderPipeline System.String
---@field enabledGlobalKeywords UnityEngine.Rendering.GlobalKeyword[]
---@field globalKeywords UnityEngine.Rendering.GlobalKeyword[]
---@field keywordSpace UnityEngine.Rendering.LocalKeywordSpace
---@field renderQueue int
---@field passCount int
---@field subshaderCount int
local Shader = {}

---@param name System.String
---@return UnityEngine.Shader
function Shader.Find(name) end

---@overload fun(keyword:UnityEngine.Rendering.GlobalKeyword):void
---@param keyword System.String
function Shader.EnableKeyword(keyword) end

---@overload fun(keyword:UnityEngine.Rendering.GlobalKeyword):void
---@param keyword System.String
function Shader.DisableKeyword(keyword) end

---@overload fun(keyword:UnityEngine.Rendering.GlobalKeyword):bool
---@param keyword System.String
---@return bool
function Shader.IsKeywordEnabled(keyword) end

---@param keyword UnityEngine.Rendering.GlobalKeyword
---@param value bool
function Shader.SetKeyword(keyword, value) end

function Shader.WarmupAllShaders() end

---@param name System.String
---@return int
function Shader.PropertyToID(name) end

---@param name System.String
---@return UnityEngine.Shader
function Shader:GetDependency(name) end

---@param subshaderIndex int
---@return int
function Shader:GetPassCountInSubshader(subshaderIndex) end

---@overload fun(subshaderIndex:int, passIndex:int, tagName:UnityEngine.Rendering.ShaderTagId):UnityEngine.Rendering.ShaderTagId
---@param passIndex int
---@param tagName UnityEngine.Rendering.ShaderTagId
---@return UnityEngine.Rendering.ShaderTagId
function Shader:FindPassTagValue(passIndex, tagName) end

---@param subshaderIndex int
---@param tagName UnityEngine.Rendering.ShaderTagId
---@return UnityEngine.Rendering.ShaderTagId
function Shader:FindSubshaderTagValue(subshaderIndex, tagName) end

---@overload fun(nameID:int, value:int):void
---@param name System.String
---@param value int
function Shader.SetGlobalInt(name, value) end

---@overload fun(nameID:int, value:float):void
---@param name System.String
---@param value float
function Shader.SetGlobalFloat(name, value) end

---@overload fun(nameID:int, value:int):void
---@param name System.String
---@param value int
function Shader.SetGlobalInteger(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Vector4):void
---@param name System.String
---@param value UnityEngine.Vector4
function Shader.SetGlobalVector(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Color):void
---@param name System.String
---@param value UnityEngine.Color
function Shader.SetGlobalColor(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Matrix4x4):void
---@param name System.String
---@param value UnityEngine.Matrix4x4
function Shader.SetGlobalMatrix(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Texture):void
---@overload fun(name:System.String, value:UnityEngine.RenderTexture, element:UnityEngine.Rendering.RenderTextureSubElement):void
---@overload fun(nameID:int, value:UnityEngine.RenderTexture, element:UnityEngine.Rendering.RenderTextureSubElement):void
---@param name System.String
---@param value UnityEngine.Texture
function Shader.SetGlobalTexture(name, value) end

---@overload fun(nameID:int, value:UnityEngine.ComputeBuffer):void
---@overload fun(name:System.String, value:UnityEngine.GraphicsBuffer):void
---@overload fun(nameID:int, value:UnityEngine.GraphicsBuffer):void
---@param name System.String
---@param value UnityEngine.ComputeBuffer
function Shader.SetGlobalBuffer(name, value) end

---@overload fun(nameID:int, value:UnityEngine.ComputeBuffer, offset:int, size:int):void
---@overload fun(name:System.String, value:UnityEngine.GraphicsBuffer, offset:int, size:int):void
---@overload fun(nameID:int, value:UnityEngine.GraphicsBuffer, offset:int, size:int):void
---@param name System.String
---@param value UnityEngine.ComputeBuffer
---@param offset int
---@param size int
function Shader.SetGlobalConstantBuffer(name, value, offset, size) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:float[]):void
---@overload fun(nameID:int, values:float[]):void
---@param name System.String
---@param values table
function Shader.SetGlobalFloatArray(name, values) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:UnityEngine.Vector4[]):void
---@overload fun(nameID:int, values:UnityEngine.Vector4[]):void
---@param name System.String
---@param values table
function Shader.SetGlobalVectorArray(name, values) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:UnityEngine.Matrix4x4[]):void
---@overload fun(nameID:int, values:UnityEngine.Matrix4x4[]):void
---@param name System.String
---@param values table
function Shader.SetGlobalMatrixArray(name, values) end

---@overload fun(nameID:int):int
---@param name System.String
---@return int
function Shader.GetGlobalInt(name) end

---@overload fun(nameID:int):float
---@param name System.String
---@return float
function Shader.GetGlobalFloat(name) end

---@overload fun(nameID:int):int
---@param name System.String
---@return int
function Shader.GetGlobalInteger(name) end

---@overload fun(nameID:int):UnityEngine.Vector4
---@param name System.String
---@return UnityEngine.Vector4
function Shader.GetGlobalVector(name) end

---@overload fun(nameID:int):UnityEngine.Color
---@param name System.String
---@return UnityEngine.Color
function Shader.GetGlobalColor(name) end

---@overload fun(nameID:int):UnityEngine.Matrix4x4
---@param name System.String
---@return UnityEngine.Matrix4x4
function Shader.GetGlobalMatrix(name) end

---@overload fun(nameID:int):UnityEngine.Texture
---@param name System.String
---@return UnityEngine.Texture
function Shader.GetGlobalTexture(name) end

---@overload fun(nameID:int):float[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return float[]
function Shader.GetGlobalFloatArray(name) end

---@overload fun(nameID:int):UnityEngine.Vector4[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return UnityEngine.Vector4[]
function Shader.GetGlobalVectorArray(name) end

---@overload fun(nameID:int):UnityEngine.Matrix4x4[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return UnityEngine.Matrix4x4[]
function Shader.GetGlobalMatrixArray(name) end

---@return int
function Shader:GetPropertyCount() end

---@param propertyName System.String
---@return int
function Shader:FindPropertyIndex(propertyName) end

---@param propertyIndex int
---@return System.String
function Shader:GetPropertyName(propertyIndex) end

---@param propertyIndex int
---@return int
function Shader:GetPropertyNameId(propertyIndex) end

---@param propertyIndex int
---@return UnityEngine.Rendering.ShaderPropertyType
function Shader:GetPropertyType(propertyIndex) end

---@param propertyIndex int
---@return System.String
function Shader:GetPropertyDescription(propertyIndex) end

---@param propertyIndex int
---@return UnityEngine.Rendering.ShaderPropertyFlags
function Shader:GetPropertyFlags(propertyIndex) end

---@param propertyIndex int
---@return string[]
function Shader:GetPropertyAttributes(propertyIndex) end

---@param propertyIndex int
---@return float
function Shader:GetPropertyDefaultFloatValue(propertyIndex) end

---@param propertyIndex int
---@return UnityEngine.Vector4
function Shader:GetPropertyDefaultVectorValue(propertyIndex) end

---@param propertyIndex int
---@return UnityEngine.Vector2
function Shader:GetPropertyRangeLimits(propertyIndex) end

---@param propertyIndex int
---@return UnityEngine.Rendering.TextureDimension
function Shader:GetPropertyTextureDimension(propertyIndex) end

---@param propertyIndex int
---@return System.String
function Shader:GetPropertyTextureDefaultName(propertyIndex) end

---@param propertyIndex int
---@param stackName string
---@param layerIndex int
---@return bool
function Shader:FindTextureStack(propertyIndex, stackName, layerIndex) end

UnityEngine.Shader = Shader
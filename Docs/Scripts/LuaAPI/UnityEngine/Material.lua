---@class UnityEngine.Material : UnityEngine.Object
---@field shader UnityEngine.Shader
---@field color UnityEngine.Color
---@field mainTexture UnityEngine.Texture
---@field mainTextureOffset UnityEngine.Vector2
---@field mainTextureScale UnityEngine.Vector2
---@field renderQueue int
---@field enabledKeywords UnityEngine.Rendering.LocalKeyword[]
---@field globalIlluminationFlags UnityEngine.MaterialGlobalIlluminationFlags
---@field doubleSidedGI bool
---@field enableInstancing bool
---@field passCount int
---@field shaderKeywords string[]
local Material = {}

---@overload fun(name:System.String):bool
---@param nameID int
---@return bool
function Material:HasProperty(nameID) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasFloat(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasInt(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasInteger(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasTexture(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasMatrix(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasVector(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasColor(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasBuffer(name) end

---@overload fun(nameID:int):bool
---@param name System.String
---@return bool
function Material:HasConstantBuffer(name) end

---@overload fun(keyword:UnityEngine.Rendering.LocalKeyword):void
---@param keyword System.String
function Material:EnableKeyword(keyword) end

---@overload fun(keyword:UnityEngine.Rendering.LocalKeyword):void
---@param keyword System.String
function Material:DisableKeyword(keyword) end

---@overload fun(keyword:UnityEngine.Rendering.LocalKeyword):bool
---@param keyword System.String
---@return bool
function Material:IsKeywordEnabled(keyword) end

---@param keyword UnityEngine.Rendering.LocalKeyword
---@param value bool
function Material:SetKeyword(keyword, value) end

---@param passName System.String
---@param enabled bool
function Material:SetShaderPassEnabled(passName, enabled) end

---@param passName System.String
---@return bool
function Material:GetShaderPassEnabled(passName) end

---@param pass int
---@return System.String
function Material:GetPassName(pass) end

---@param passName System.String
---@return int
function Material:FindPass(passName) end

---@param tag System.String
---@param val System.String
function Material:SetOverrideTag(tag, val) end

---@overload fun(tag:System.String, searchFallbacks:bool):System.String
---@param tag System.String
---@param searchFallbacks bool
---@param defaultValue System.String
---@return System.String
function Material:GetTag(tag, searchFallbacks, defaultValue) end

---@param start UnityEngine.Material
---@param _end UnityEngine.Material
---@param t float
function Material:Lerp(start, _end, t) end

---@param pass int
---@return bool
function Material:SetPass(pass) end

---@param mat UnityEngine.Material
function Material:CopyPropertiesFromMaterial(mat) end

---@param mat UnityEngine.Material
function Material:CopyMatchingPropertiesFromMaterial(mat) end

---@return int
function Material:ComputeCRC() end

---@overload fun(outNames:table):void
---@return string[]
function Material:GetTexturePropertyNames() end

---@overload fun(outNames:table):void
---@return int[]
function Material:GetTexturePropertyNameIDs() end

---@overload fun(nameID:int, value:int):void
---@param name System.String
---@param value int
function Material:SetInt(name, value) end

---@overload fun(nameID:int, value:float):void
---@param name System.String
---@param value float
function Material:SetFloat(name, value) end

---@overload fun(nameID:int, value:int):void
---@param name System.String
---@param value int
function Material:SetInteger(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Color):void
---@param name System.String
---@param value UnityEngine.Color
function Material:SetColor(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Vector4):void
---@param name System.String
---@param value UnityEngine.Vector4
function Material:SetVector(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Matrix4x4):void
---@param name System.String
---@param value UnityEngine.Matrix4x4
function Material:SetMatrix(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Texture):void
---@overload fun(name:System.String, value:UnityEngine.RenderTexture, element:UnityEngine.Rendering.RenderTextureSubElement):void
---@overload fun(nameID:int, value:UnityEngine.RenderTexture, element:UnityEngine.Rendering.RenderTextureSubElement):void
---@param name System.String
---@param value UnityEngine.Texture
function Material:SetTexture(name, value) end

---@overload fun(nameID:int, value:UnityEngine.ComputeBuffer):void
---@overload fun(name:System.String, value:UnityEngine.GraphicsBuffer):void
---@overload fun(nameID:int, value:UnityEngine.GraphicsBuffer):void
---@param name System.String
---@param value UnityEngine.ComputeBuffer
function Material:SetBuffer(name, value) end

---@overload fun(nameID:int, value:UnityEngine.ComputeBuffer, offset:int, size:int):void
---@overload fun(name:System.String, value:UnityEngine.GraphicsBuffer, offset:int, size:int):void
---@overload fun(nameID:int, value:UnityEngine.GraphicsBuffer, offset:int, size:int):void
---@param name System.String
---@param value UnityEngine.ComputeBuffer
---@param offset int
---@param size int
function Material:SetConstantBuffer(name, value, offset, size) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:float[]):void
---@overload fun(nameID:int, values:float[]):void
---@param name System.String
---@param values table
function Material:SetFloatArray(name, values) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:UnityEngine.Color[]):void
---@overload fun(nameID:int, values:UnityEngine.Color[]):void
---@param name System.String
---@param values table
function Material:SetColorArray(name, values) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:UnityEngine.Vector4[]):void
---@overload fun(nameID:int, values:UnityEngine.Vector4[]):void
---@param name System.String
---@param values table
function Material:SetVectorArray(name, values) end

---@overload fun(nameID:int, values:table):void
---@overload fun(name:System.String, values:UnityEngine.Matrix4x4[]):void
---@overload fun(nameID:int, values:UnityEngine.Matrix4x4[]):void
---@param name System.String
---@param values table
function Material:SetMatrixArray(name, values) end

---@overload fun(nameID:int):int
---@param name System.String
---@return int
function Material:GetInt(name) end

---@overload fun(nameID:int):float
---@param name System.String
---@return float
function Material:GetFloat(name) end

---@overload fun(nameID:int):int
---@param name System.String
---@return int
function Material:GetInteger(name) end

---@overload fun(nameID:int):UnityEngine.Color
---@param name System.String
---@return UnityEngine.Color
function Material:GetColor(name) end

---@overload fun(nameID:int):UnityEngine.Vector4
---@param name System.String
---@return UnityEngine.Vector4
function Material:GetVector(name) end

---@overload fun(nameID:int):UnityEngine.Matrix4x4
---@param name System.String
---@return UnityEngine.Matrix4x4
function Material:GetMatrix(name) end

---@overload fun(nameID:int):UnityEngine.Texture
---@param name System.String
---@return UnityEngine.Texture
function Material:GetTexture(name) end

---@overload fun(nameID:int):float[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return float[]
function Material:GetFloatArray(name) end

---@overload fun(nameID:int):UnityEngine.Color[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return UnityEngine.Color[]
function Material:GetColorArray(name) end

---@overload fun(nameID:int):UnityEngine.Vector4[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return UnityEngine.Vector4[]
function Material:GetVectorArray(name) end

---@overload fun(nameID:int):UnityEngine.Matrix4x4[]
---@overload fun(name:System.String, values:table):void
---@overload fun(nameID:int, values:table):void
---@param name System.String
---@return UnityEngine.Matrix4x4[]
function Material:GetMatrixArray(name) end

---@overload fun(nameID:int, value:UnityEngine.Vector2):void
---@param name System.String
---@param value UnityEngine.Vector2
function Material:SetTextureOffset(name, value) end

---@overload fun(nameID:int, value:UnityEngine.Vector2):void
---@param name System.String
---@param value UnityEngine.Vector2
function Material:SetTextureScale(name, value) end

---@overload fun(nameID:int):UnityEngine.Vector2
---@param name System.String
---@return UnityEngine.Vector2
function Material:GetTextureOffset(name) end

---@overload fun(nameID:int):UnityEngine.Vector2
---@param name System.String
---@return UnityEngine.Vector2
function Material:GetTextureScale(name) end

UnityEngine.Material = Material
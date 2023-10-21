---@class System.Enum
local Enum = {}

---@overload fun(enumType:System.Type, value:System.String, ignoreCase:bool):System.Object
---@param enumType System.Type
---@param value System.String
---@return System.Object
function Enum.Parse(enumType, value) end

---@param enumType System.Type
---@return System.Type
function Enum.GetUnderlyingType(enumType) end

---@param enumType System.Type
---@return System.Array
function Enum.GetValues(enumType) end

---@param enumType System.Type
---@param value System.Object
---@return System.String
function Enum.GetName(enumType, value) end

---@param enumType System.Type
---@return string[]
function Enum.GetNames(enumType) end

---@overload fun(enumType:System.Type, value:sbyte):System.Object
---@overload fun(enumType:System.Type, value:short):System.Object
---@overload fun(enumType:System.Type, value:int):System.Object
---@overload fun(enumType:System.Type, value:byte):System.Object
---@overload fun(enumType:System.Type, value:ushort):System.Object
---@overload fun(enumType:System.Type, value:uint):System.Object
---@overload fun(enumType:System.Type, value:long):System.Object
---@overload fun(enumType:System.Type, value:ulong):System.Object
---@param enumType System.Type
---@param value System.Object
---@return System.Object
function Enum.ToObject(enumType, value) end

---@param enumType System.Type
---@param value System.Object
---@return bool
function Enum.IsDefined(enumType, value) end

---@param enumType System.Type
---@param value System.Object
---@param format System.String
---@return System.String
function Enum.Format(enumType, value, format) end

---@param obj System.Object
---@return bool
function Enum:Equals(obj) end

---@return int
function Enum:GetHashCode() end

---@overload fun(format:System.String):System.String
---@return System.String
function Enum:ToString() end

---@param target System.Object
---@return int
function Enum:CompareTo(target) end

---@param flag System.Enum
---@return bool
function Enum:HasFlag(flag) end

---@return System.TypeCode
function Enum:GetTypeCode() end

---@overload fun(enumType:System.Type, value:System.String, result:object):bool
---@param enumType System.Type
---@param value System.String
---@param ignoreCase bool
---@param result object
---@return bool
function Enum.TryParse(enumType, value, ignoreCase, result) end

System.Enum = Enum
---@class UnityEngine.Color
---@field red UnityEngine.Color
---@field green UnityEngine.Color
---@field blue UnityEngine.Color
---@field white UnityEngine.Color
---@field black UnityEngine.Color
---@field yellow UnityEngine.Color
---@field cyan UnityEngine.Color
---@field magenta UnityEngine.Color
---@field gray UnityEngine.Color
---@field grey UnityEngine.Color
---@field clear UnityEngine.Color
---@field grayscale float
---@field linear UnityEngine.Color
---@field gamma UnityEngine.Color
---@field maxColorComponent float
---@field Item float
---@field r float
---@field g float
---@field b float
---@field a float
local Color = {}

---@overload fun(format:System.String):System.String
---@overload fun(format:System.String, formatProvider:System.IFormatProvider):System.String
---@return System.String
function Color:ToString() end

---@return int
function Color:GetHashCode() end

---@overload fun(other:UnityEngine.Color):bool
---@param other System.Object
---@return bool
function Color:Equals(other) end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Addition(a, b) end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Subtraction(a, b) end

---@overload fun(a:UnityEngine.Color, b:float):UnityEngine.Color
---@overload fun(b:float, a:UnityEngine.Color):UnityEngine.Color
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function Color.op_Multiply(a, b) end

---@param a UnityEngine.Color
---@param b float
---@return UnityEngine.Color
function Color.op_Division(a, b) end

---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return bool
function Color.op_Equality(lhs, rhs) end

---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return bool
function Color.op_Inequality(lhs, rhs) end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t float
---@return UnityEngine.Color
function Color.Lerp(a, b, t) end

---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t float
---@return UnityEngine.Color
function Color.LerpUnclamped(a, b, t) end

---@overload fun(v:UnityEngine.Vector4):UnityEngine.Color
---@param c UnityEngine.Color
---@return UnityEngine.Vector4
function Color.op_Implicit(c) end

---@param rgbColor UnityEngine.Color
---@param H float
---@param S float
---@param V float
function Color.RGBToHSV(rgbColor, H, S, V) end

---@overload fun(H:float, S:float, V:float, hdr:bool):UnityEngine.Color
---@param H float
---@param S float
---@param V float
---@return UnityEngine.Color
function Color.HSVToRGB(H, S, V) end

UnityEngine.Color = Color
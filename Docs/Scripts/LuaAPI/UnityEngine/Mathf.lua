---@class UnityEngine.Mathf
---@field PI float
---@field Infinity float
---@field NegativeInfinity float
---@field Deg2Rad float
---@field Rad2Deg float
---@field Epsilon float
local Mathf = {}

---@param value int
---@return int
function Mathf.ClosestPowerOfTwo(value) end

---@param value int
---@return bool
function Mathf.IsPowerOfTwo(value) end

---@param value int
---@return int
function Mathf.NextPowerOfTwo(value) end

---@param value float
---@return float
function Mathf.GammaToLinearSpace(value) end

---@param value float
---@return float
function Mathf.LinearToGammaSpace(value) end

---@param kelvin float
---@return UnityEngine.Color
function Mathf.CorrelatedColorTemperatureToRGB(kelvin) end

---@param val float
---@return ushort
function Mathf.FloatToHalf(val) end

---@param val ushort
---@return float
function Mathf.HalfToFloat(val) end

---@param x float
---@param y float
---@return float
function Mathf.PerlinNoise(x, y) end

---@param f float
---@return float
function Mathf.Sin(f) end

---@param f float
---@return float
function Mathf.Cos(f) end

---@param f float
---@return float
function Mathf.Tan(f) end

---@param f float
---@return float
function Mathf.Asin(f) end

---@param f float
---@return float
function Mathf.Acos(f) end

---@param f float
---@return float
function Mathf.Atan(f) end

---@param y float
---@param x float
---@return float
function Mathf.Atan2(y, x) end

---@param f float
---@return float
function Mathf.Sqrt(f) end

---@overload fun(value:int):int
---@param f float
---@return float
function Mathf.Abs(f) end

---@overload fun(values:float[]):float
---@overload fun(a:int, b:int):int
---@overload fun(values:int[]):int
---@param a float
---@param b float
---@return float
function Mathf.Min(a, b) end

---@overload fun(values:float[]):float
---@overload fun(a:int, b:int):int
---@overload fun(values:int[]):int
---@param a float
---@param b float
---@return float
function Mathf.Max(a, b) end

---@param f float
---@param p float
---@return float
function Mathf.Pow(f, p) end

---@param power float
---@return float
function Mathf.Exp(power) end

---@overload fun(f:float):float
---@param f float
---@param p float
---@return float
function Mathf.Log(f, p) end

---@param f float
---@return float
function Mathf.Log10(f) end

---@param f float
---@return float
function Mathf.Ceil(f) end

---@param f float
---@return float
function Mathf.Floor(f) end

---@param f float
---@return float
function Mathf.Round(f) end

---@param f float
---@return int
function Mathf.CeilToInt(f) end

---@param f float
---@return int
function Mathf.FloorToInt(f) end

---@param f float
---@return int
function Mathf.RoundToInt(f) end

---@param f float
---@return float
function Mathf.Sign(f) end

---@overload fun(value:int, min:int, max:int):int
---@param value float
---@param min float
---@param max float
---@return float
function Mathf.Clamp(value, min, max) end

---@param value float
---@return float
function Mathf.Clamp01(value) end

---@param a float
---@param b float
---@param t float
---@return float
function Mathf.Lerp(a, b, t) end

---@param a float
---@param b float
---@param t float
---@return float
function Mathf.LerpUnclamped(a, b, t) end

---@param a float
---@param b float
---@param t float
---@return float
function Mathf.LerpAngle(a, b, t) end

---@param current float
---@param target float
---@param maxDelta float
---@return float
function Mathf.MoveTowards(current, target, maxDelta) end

---@param current float
---@param target float
---@param maxDelta float
---@return float
function Mathf.MoveTowardsAngle(current, target, maxDelta) end

---@param from float
---@param to float
---@param t float
---@return float
function Mathf.SmoothStep(from, to, t) end

---@param value float
---@param absmax float
---@param gamma float
---@return float
function Mathf.Gamma(value, absmax, gamma) end

---@param a float
---@param b float
---@return bool
function Mathf.Approximately(a, b) end

---@overload fun(current:float, target:float, currentVelocity:float, smoothTime:float):float
---@overload fun(current:float, target:float, currentVelocity:float, smoothTime:float, maxSpeed:float, deltaTime:float):float
---@param current float
---@param target float
---@param currentVelocity float
---@param smoothTime float
---@param maxSpeed float
---@return float
function Mathf.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end

---@overload fun(current:float, target:float, currentVelocity:float, smoothTime:float):float
---@overload fun(current:float, target:float, currentVelocity:float, smoothTime:float, maxSpeed:float, deltaTime:float):float
---@param current float
---@param target float
---@param currentVelocity float
---@param smoothTime float
---@param maxSpeed float
---@return float
function Mathf.SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed) end

---@param t float
---@param length float
---@return float
function Mathf.Repeat(t, length) end

---@param t float
---@param length float
---@return float
function Mathf.PingPong(t, length) end

---@param a float
---@param b float
---@param value float
---@return float
function Mathf.InverseLerp(a, b, value) end

---@param current float
---@param target float
---@return float
function Mathf.DeltaAngle(current, target) end

UnityEngine.Mathf = Mathf
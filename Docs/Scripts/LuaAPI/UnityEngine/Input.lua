---@class UnityEngine.Input : System.Object
---@field simulateMouseWithTouches bool
---@field anyKey bool
---@field anyKeyDown bool
---@field inputString System.String
---@field mousePosition UnityEngine.Vector3
---@field mouseScrollDelta UnityEngine.Vector2
---@field imeCompositionMode UnityEngine.IMECompositionMode
---@field compositionString System.String
---@field imeIsSelected bool
---@field compositionCursorPos UnityEngine.Vector2
---@field mousePresent bool
---@field touchCount int
---@field touchPressureSupported bool
---@field stylusTouchSupported bool
---@field touchSupported bool
---@field multiTouchEnabled bool
---@field deviceOrientation UnityEngine.DeviceOrientation
---@field acceleration UnityEngine.Vector3
---@field compensateSensors bool
---@field accelerationEventCount int
---@field backButtonLeavesApp bool
---@field location UnityEngine.LocationService
---@field compass UnityEngine.Compass
---@field gyro UnityEngine.Gyroscope
---@field touches UnityEngine.Touch[]
---@field accelerationEvents UnityEngine.AccelerationEvent[]
local Input = {}

---@param axisName System.String
---@return float
function Input.GetAxis(axisName) end

---@param axisName System.String
---@return float
function Input.GetAxisRaw(axisName) end

---@param buttonName System.String
---@return bool
function Input.GetButton(buttonName) end

---@param buttonName System.String
---@return bool
function Input.GetButtonDown(buttonName) end

---@param buttonName System.String
---@return bool
function Input.GetButtonUp(buttonName) end

---@param button int
---@return bool
function Input.GetMouseButton(button) end

---@param button int
---@return bool
function Input.GetMouseButtonDown(button) end

---@param button int
---@return bool
function Input.GetMouseButtonUp(button) end

function Input.ResetInputAxes() end

---@return string[]
function Input.GetJoystickNames() end

---@param index int
---@return UnityEngine.Touch
function Input.GetTouch(index) end

---@param index int
---@return UnityEngine.AccelerationEvent
function Input.GetAccelerationEvent(index) end

---@overload fun(name:System.String):bool
---@param key UnityEngine.KeyCode
---@return bool
function Input.GetKey(key) end

---@overload fun(name:System.String):bool
---@param key UnityEngine.KeyCode
---@return bool
function Input.GetKeyUp(key) end

---@overload fun(name:System.String):bool
---@param key UnityEngine.KeyCode
---@return bool
function Input.GetKeyDown(key) end

UnityEngine.Input = Input
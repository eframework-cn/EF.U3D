---@class UnityEngine.EventSystems.EventSystem : UnityEngine.EventSystems.UIBehaviour
---@field current UnityEngine.EventSystems.EventSystem
---@field sendNavigationEvents bool
---@field pixelDragThreshold int
---@field currentInputModule UnityEngine.EventSystems.BaseInputModule
---@field firstSelectedGameObject UnityEngine.GameObject
---@field currentSelectedGameObject UnityEngine.GameObject
---@field isFocused bool
---@field alreadySelecting bool
local EventSystem = {}

function EventSystem:UpdateModules() end

---@overload fun(selected:UnityEngine.GameObject):void
---@param selected UnityEngine.GameObject
---@param pointer UnityEngine.EventSystems.BaseEventData
function EventSystem:SetSelectedGameObject(selected, pointer) end

---@param eventData UnityEngine.EventSystems.PointerEventData
---@param raycastResults table
function EventSystem:RaycastAll(eventData, raycastResults) end

---@overload fun(pointerId:int):bool
---@return bool
function EventSystem:IsPointerOverGameObject() end

---@param activeEventSystem UnityEngine.EventSystems.EventSystem
---@param sendEvents bool
---@param createPanelGameObjectsOnStart bool
function EventSystem.SetUITookitEventSystemOverride(activeEventSystem, sendEvents, createPanelGameObjectsOnStart) end

---@return System.String
function EventSystem:ToString() end

UnityEngine.EventSystems.EventSystem = EventSystem
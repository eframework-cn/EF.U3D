---@class EP.U3D.LIBRARY.UI.UIHelper : System.Object
local UIHelper = {}

---@overload fun(parentObj:UnityEngine.Object, path:System.String):UnityEngine.Transform
---@param rootObj UnityEngine.Object
---@return UnityEngine.Transform
function UIHelper.GetTransform(rootObj) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, includeInactive:bool):UnityEngine.Transform[]
---@param rootObj UnityEngine.Object
---@param includeInactive bool
---@return UnityEngine.Transform[]
function UIHelper.GetChildren(rootObj, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, position:UnityEngine.Vector3):void
---@param rootObj UnityEngine.Object
---@param position UnityEngine.Vector3
function UIHelper.SetPosition(rootObj, position) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, position:UnityEngine.Vector3):void
---@param rootObj UnityEngine.Object
---@param position UnityEngine.Vector3
function UIHelper.SetLocalPosition(rootObj, position) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, eulerAngles:UnityEngine.Vector3):void
---@param rootObj UnityEngine.Object
---@param eulerAngles UnityEngine.Vector3
function UIHelper.SetRotation(rootObj, eulerAngles) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, eulerAngles:UnityEngine.Vector3):void
---@param rootObj UnityEngine.Object
---@param eulerAngles UnityEngine.Vector3
function UIHelper.SetLocalRotation(rootObj, eulerAngles) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, scale:UnityEngine.Vector3):void
---@param rootObj UnityEngine.Object
---@param scale UnityEngine.Vector3
function UIHelper.SetLocalScale(rootObj, scale) end

---@overload fun(childObj:UnityEngine.Object, parentObj:UnityEngine.Object, worldPositionStavs:bool):UnityEngine.Transform
---@overload fun(childObj:UnityEngine.Object, rootObj:UnityEngine.Object, parentPath:System.String):UnityEngine.Transform
---@overload fun(childObj:UnityEngine.Object, rootObj:UnityEngine.Object, parentPath:System.String, worldPositionStavs:bool):UnityEngine.Transform
---@param childObj UnityEngine.Object
---@param parentObj UnityEngine.Object
---@return UnityEngine.Transform
function UIHelper.SetParent(childObj, parentObj) end

---@overload fun(rootObj:UnityEngine.Object, immediate:bool):void
---@overload fun(parentObj:UnityEngine.Object, path:System.String):void
---@overload fun(parentObj:UnityEngine.Object, path:System.String, immediate:bool):void
---@param rootObj UnityEngine.Object
function UIHelper.DestroyGO(rootObj) end

---@param rootObj UnityEngine.Object
---@return UnityEngine.GameObject
function UIHelper.CloneGO(rootObj) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, layerName:System.String):void
---@overload fun(go:UnityEngine.GameObject, layer:int):void
---@param rootObj UnityEngine.Object
---@param layerName System.String
function UIHelper.SetLayer(rootObj, layerName) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, active:bool):void
---@param rootObj UnityEngine.Object
---@param active bool
function UIHelper.SetActiveState(rootObj, active) end

---@param parent UnityEngine.Transform
---@param prefab UnityEngine.GameObject
---@param layer int
---@return UnityEngine.GameObject
function UIHelper.AddChild(parent, prefab, layer) end

---@param parent UnityEngine.Transform
---@param count int
---@param active bool
---@param prefab UnityEngine.GameObject
function UIHelper.EnsureChild(parent, count, active, prefab) end

---@param parent UnityEngine.Transform
---@param handler EP.U3D.LIBRARY.UI.UIHelper.EachChildHandler
function UIHelper.EachChild(parent, handler) end

---@param parent UnityEngine.Transform
---@param handler EP.U3D.LIBRARY.UI.UIHelper.EachChildHandler
function UIHelper.ShowChild(parent, handler) end

---@param parent UnityEngine.Transform
---@param handler EP.U3D.LIBRARY.UI.UIHelper.EachChildHandler
function UIHelper.HideChild(parent, handler) end

---@param rootObj UnityEngine.Object
---@param path System.String
function UIHelper.RefreshObSort(rootObj, path) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param includeInactive bool
---@return System.Object
function UIHelper.GetComponentInParent(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, attachIfMissing:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param attachIfMissing bool
---@return System.Object
function UIHelper.GetComponent(rootObj, type, attachIfMissing) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param includeInactive bool
---@return System.Object
function UIHelper.GetComponentInChildren(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):object[]
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param includeInactive bool
---@return object[]
function UIHelper.GetComponentsInParent(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type):object[]
---@param rootObj UnityEngine.Object
---@param type System.Type
---@return object[]
function UIHelper.GetComponents(rootObj, type) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, includeInactive:bool):object[]
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param includeInactive bool
---@return object[]
function UIHelper.GetComponentsInChildren(rootObj, type, includeInactive) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type):System.Object
---@param rootObj UnityEngine.Object
---@param type System.Type
---@return System.Object
function UIHelper.AddComponent(rootObj, type) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, immediate:bool):void
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param immediate bool
function UIHelper.RemoveComponent(rootObj, type, immediate) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, type:System.Type, enabled:bool):System.Object
---@param rootObj UnityEngine.Object
---@param type System.Type
---@param enabled bool
---@return System.Object
function UIHelper.SetComponentEnabled(rootObj, type, enabled) end

---@overload fun(rootObj:UnityEngine.Object, alpha:float):UnityEngine.UI.Graphic
---@overload fun(parentObj:UnityEngine.Object, path:System.String, alpha:int):UnityEngine.UI.Graphic
---@overload fun(parentObj:UnityEngine.Object, path:System.String, alpha:float):UnityEngine.UI.Graphic
---@param rootObj UnityEngine.Object
---@param alpha int
---@return UnityEngine.UI.Graphic
function UIHelper.SetGraphicAlpha(rootObj, alpha) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, func:System.Action):UnityEngine.UI.Button
---@param rootObj UnityEngine.Object
---@param func System.Action
---@return UnityEngine.UI.Button
function UIHelper.SetButtonEvent(rootObj, func) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, enabled:bool):void
---@param rootObj UnityEngine.Object
---@param enabled bool
function UIHelper.SetEventEnabled(rootObj, enabled) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, content:System.Object):UnityEngine.UI.Text
---@param rootObj UnityEngine.Object
---@param content System.Object
---@return UnityEngine.UI.Text
function UIHelper.SetLabelText(rootObj, content) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, content:System.Object):TMPro.TextMeshProUGUI
---@param rootObj UnityEngine.Object
---@param content System.Object
---@return TMPro.TextMeshProUGUI
function UIHelper.SetMeshProText(rootObj, content) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, name:System.String):UnityEngine.UI.Image
---@overload fun(parentObj:UnityEngine.Object, path:System.String, name:System.String, atlas:UnityEngine.UI.Atlas):UnityEngine.UI.Image
---@param rootObj UnityEngine.Object
---@param name System.String
---@return UnityEngine.UI.Image
function UIHelper.SetSpriteName(rootObj, name) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, asset:System.String):UnityEngine.UI.Image
---@param rootObj UnityEngine.Object
---@param asset System.String
---@return UnityEngine.UI.Image
function UIHelper.SetSpriteRes(rootObj, asset) end

---@overload fun(parentObj:UnityEngine.Object, path:System.String, alpha:int):UnityEngine.UI.Image
---@overload fun(rootObj:UnityEngine.Object, alpha:float):UnityEngine.UI.Image
---@overload fun(parentObj:UnityEngine.Object, path:System.String, alpha:float):UnityEngine.UI.Image
---@param rootObj UnityEngine.Object
---@param alpha int
---@return UnityEngine.UI.Image
function UIHelper.SetSpriteAlpha(rootObj, alpha) end

---@overload fun(rootObj:UnityEngine.Object, url:System.String, incache:bool):UnityEngine.UI.RawImage
---@overload fun(parentObj:UnityEngine.Object, path:System.String, url:System.String):UnityEngine.UI.RawImage
---@overload fun(parentObj:UnityEngine.Object, path:System.String, url:System.String, incache:bool):UnityEngine.UI.RawImage
---@param rootObj UnityEngine.Object
---@param url System.String
---@return UnityEngine.UI.RawImage
function UIHelper.SetRawImage(rootObj, url) end

---@param url System.String
---@return UnityEngine.Texture2D
function UIHelper.GetTexture(url) end

---@param url System.String
---@param incache bool
---@param callback System.Action
function UIHelper.WWWTexture(url, incache, callback) end

EP.U3D.LIBRARY.UI.UIHelper = UIHelper
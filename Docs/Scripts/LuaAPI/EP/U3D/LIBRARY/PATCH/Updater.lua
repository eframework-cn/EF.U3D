---@class EP.U3D.LIBRARY.PATCH.Updater : UnityEngine.MonoBehaviour
---@field Instance EP.U3D.LIBRARY.PATCH.Updater
---@field TIPS1001 System.String
---@field TIPS1002 System.String
---@field TIPS1003 System.String
---@field TIPS1004 System.String
---@field TIPS1005 System.String
---@field TIPS1006 System.String
---@field TIPS1007 System.String
---@field TIPS1008 System.String
---@field TIPS1009 System.String
---@field TIPS1010 System.String
---@field TIPS1011 System.String
---@field Patcher EP.U3D.LIBRARY.PATCH.Patcher
---@field JsonTO UnityEngine.Coroutine
---@field JsonHttp EP.U3D.LIBRARY.NET.HttpListener
---@field PatchHttp EP.U3D.LIBRARY.NET.HttpListener
---@field UIBG UnityEngine.GameObject
---@field UIUpdate UnityEngine.GameObject
---@field UIConfirm UnityEngine.GameObject
---@field OnStarted System.Action
---@field OnFinished System.Action
local Updater = {}

---@param onStarted System.Action
---@param onFinished System.Action
function Updater.Initialize(onStarted, onFinished) end

---@return System.Collections.IEnumerator
function Updater:JsonTimeout() end

function Updater:ReqJson() end

---@param json System.String
---@return bool
function Updater:ParseJson(json) end

function Updater:AfterJson() end

function Updater:CheckUpdate() end

---@param localPatchVersion long
---@param newestPatchVersion long
---@return System.Collections.IEnumerator
function Updater:UpdatePatch(localPatchVersion, newestPatchVersion) end

function Updater:Reload() end

function Updater:Unload() end

---@return System.Collections.IEnumerator
function Updater:Finish() end

function Updater:Awake() end

function Updater:Start() end

function Updater:Update() end

function Updater:OnDestroy() end

function Updater:OpenBG() end

function Updater:CloseBG() end

function Updater:SetVersion() end

function Updater:OpenUpdate() end

function Updater:CloseUpdate() end

---@param tips System.String
function Updater:SetUpdateTips(tips) end

---@param tips System.String
function Updater:SetBGTips(tips) end

---@param progress float
---@param text System.String
---@param status bool
function Updater:SetProgress(progress, text, status) end

---@param current long
---@param total long
---@param status bool
function Updater:SetUpdateProgress(current, total, status) end

---@param content System.String
---@param doubleButton bool
---@param onClickOK System.Action
---@param onClickCancel System.Action
function Updater:OpenConfirm(content, doubleButton, onClickOK, onClickCancel) end

function Updater:CloseConfirm() end

EP.U3D.LIBRARY.PATCH.Updater = Updater
---@class EP.U3D.LIBRARY.REPORT.Reporter : UnityEngine.MonoBehaviour
---@field NumOfErrors int
---@field Fps int
---@field Latency long
---@field UserData System.String
---@field Content UnityEngine.GameObject
---@field Status UnityEngine.GameObject
---@field Instance EP.U3D.LIBRARY.REPORT.Reporter
---@field NumOfLogs int
---@field NumOfWarnings int
---@field LogsMemUsage long
---@field GraphMemUsage long
---@field GcMemUsage long
---@field Scene System.String
---@field DeviceModel System.String
---@field DeviceType System.String
---@field DeviceName System.String
---@field GraphicsMemorySize System.String
---@field MaxTextureSize System.String
---@field SystemMemorySize System.String
---@field ExceptionFile System.String
---@field VerboseFile System.String
---@field OnException System.Action
local Reporter = {}

---@return int
function Reporter:GetCellCount() end

---@param cell UnityEngine.RectTransform
---@param index int
function Reporter:SetCellData(cell, index) end

function Reporter:SaveVerbose() end

function Reporter:CommitVerbose() end

function Reporter:CommitException() end

---@param url System.String
---@param name System.String
---@param file System.String
---@param delete bool
function Reporter:Commit(url, name, file, delete) end

function Reporter:OpenPanel() end

function Reporter:ClosePanel() end

EP.U3D.LIBRARY.REPORT.Reporter = Reporter
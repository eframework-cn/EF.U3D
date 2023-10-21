---@class EP.U3D.LIBRARY.BASE.Preferences : System.Object
---@field Instance EP.U3D.LIBRARY.BASE.Preferences
---@field Name System.String
---@field Path System.String
---@field Developer System.String
---@field ListenLog System.String
---@field PushPatch System.String
---@field PushArchive System.String
---@field SWidth int
---@field SHeight int
---@field Pauseable bool
---@field CheckMode bool
---@field AssetBundle bool
---@field ScriptBundle bool
---@field CatVerbose bool
---@field CatException bool
---@field UUID System.String
---@field LiveMode bool
---@field ReleaseMode bool
---@field CheckUpdate bool
---@field ForceUpdate bool
---@field LogServer System.String
---@field PatchServer System.String
---@field CgiIndex int
---@field CgiServer table
---@field ConnIndex int
---@field ConnServer table
---@field Error System.String
local Preferences = {}

---@param path System.String
function Preferences:Read(path) end

EP.U3D.LIBRARY.BASE.Preferences = Preferences
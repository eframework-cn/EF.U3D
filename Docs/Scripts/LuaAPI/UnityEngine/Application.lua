---@class UnityEngine.Application : System.Object
---@field isPlaying bool
---@field isFocused bool
---@field buildGUID System.String
---@field runInBackground bool
---@field isBatchMode bool
---@field dataPath System.String
---@field streamingAssetsPath System.String
---@field persistentDataPath System.String
---@field temporaryCachePath System.String
---@field absoluteURL System.String
---@field unityVersion System.String
---@field version System.String
---@field installerName System.String
---@field identifier System.String
---@field installMode UnityEngine.ApplicationInstallMode
---@field sandboxType UnityEngine.ApplicationSandboxType
---@field productName System.String
---@field companyName System.String
---@field cloudProjectId System.String
---@field targetFrameRate int
---@field consoleLogPath System.String
---@field backgroundLoadingPriority UnityEngine.ThreadPriority
---@field genuine bool
---@field genuineCheckAvailable bool
---@field platform UnityEngine.RuntimePlatform
---@field isMobilePlatform bool
---@field isConsolePlatform bool
---@field systemLanguage UnityEngine.SystemLanguage
---@field internetReachability UnityEngine.NetworkReachability
---@field isEditor bool
---@field lowMemory UnityEngine.Application.LowMemoryCallback
---@field logMessageReceived UnityEngine.Application.LogCallback
---@field logMessageReceivedThreaded UnityEngine.Application.LogCallback
---@field onBeforeRender UnityEngine.Events.UnityAction
---@field focusChanged System.Action
---@field deepLinkActivated System.Action
---@field wantsToQuit System.Func
---@field quitting System.Action
---@field unloading System.Action
local Application = {}

---@overload fun():void
---@param exitCode int
function Application.Quit(exitCode) end

function Application.Unload() end

---@overload fun(levelName:System.String):bool
---@param levelIndex int
---@return bool
function Application.CanStreamedLevelBeLoaded(levelIndex) end

---@param obj UnityEngine.Object
---@return bool
function Application.IsPlaying(obj) end

---@return string[]
function Application.GetBuildTags() end

---@param buildTags string[]
function Application.SetBuildTags(buildTags) end

---@return bool
function Application.HasProLicense() end

---@param delegateMethod UnityEngine.Application.AdvertisingIdentifierCallback
---@return bool
function Application.RequestAdvertisingIdentifierAsync(delegateMethod) end

---@param url System.String
function Application.OpenURL(url) end

---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function Application.GetStackTraceLogType(logType) end

---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
function Application.SetStackTraceLogType(logType, stackTraceType) end

---@param mode UnityEngine.UserAuthorization
---@return UnityEngine.AsyncOperation
function Application.RequestUserAuthorization(mode) end

---@param mode UnityEngine.UserAuthorization
---@return bool
function Application.HasUserAuthorization(mode) end

UnityEngine.Application = Application
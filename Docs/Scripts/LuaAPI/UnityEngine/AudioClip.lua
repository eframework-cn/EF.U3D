---@class UnityEngine.AudioClip : UnityEngine.Object
---@field length float
---@field samples int
---@field channels int
---@field frequency int
---@field loadType UnityEngine.AudioClipLoadType
---@field preloadAudioData bool
---@field ambisonic bool
---@field loadInBackground bool
---@field loadState UnityEngine.AudioDataLoadState
local AudioClip = {}

---@return bool
function AudioClip:LoadAudioData() end

---@return bool
function AudioClip:UnloadAudioData() end

---@param data float[]
---@param offsetSamples int
---@return bool
function AudioClip:GetData(data, offsetSamples) end

---@param data float[]
---@param offsetSamples int
---@return bool
function AudioClip:SetData(data, offsetSamples) end

---@overload fun(name:System.String, lengthSamples:int, channels:int, frequency:int, stream:bool, pcmreadercallback:UnityEngine.AudioClip.PCMReaderCallback):UnityEngine.AudioClip
---@overload fun(name:System.String, lengthSamples:int, channels:int, frequency:int, stream:bool, pcmreadercallback:UnityEngine.AudioClip.PCMReaderCallback, pcmsetpositioncallback:UnityEngine.AudioClip.PCMSetPositionCallback):UnityEngine.AudioClip
---@param name System.String
---@param lengthSamples int
---@param channels int
---@param frequency int
---@param stream bool
---@return UnityEngine.AudioClip
function AudioClip.Create(name, lengthSamples, channels, frequency, stream) end

UnityEngine.AudioClip = AudioClip
---@class UnityEngine.AudioSource : UnityEngine.AudioBehaviour
---@field volume float
---@field pitch float
---@field time float
---@field timeSamples int
---@field clip UnityEngine.AudioClip
---@field outputAudioMixerGroup UnityEngine.Audio.AudioMixerGroup
---@field isPlaying bool
---@field isVirtual bool
---@field loop bool
---@field ignoreListenerVolume bool
---@field playOnAwake bool
---@field ignoreListenerPause bool
---@field velocityUpdateMode UnityEngine.AudioVelocityUpdateMode
---@field panStereo float
---@field spatialBlend float
---@field spatialize bool
---@field spatializePostEffects bool
---@field reverbZoneMix float
---@field bypassEffects bool
---@field bypassListenerEffects bool
---@field bypassReverbZones bool
---@field dopplerLevel float
---@field spread float
---@field priority int
---@field mute bool
---@field minDistance float
---@field maxDistance float
---@field rolloffMode UnityEngine.AudioRolloffMode
local AudioSource = {}

---@overload fun(delay:ulong):void
function AudioSource:Play() end

---@param delay float
function AudioSource:PlayDelayed(delay) end

---@param time double
function AudioSource:PlayScheduled(time) end

---@overload fun(clip:UnityEngine.AudioClip, volumeScale:float):void
---@param clip UnityEngine.AudioClip
function AudioSource:PlayOneShot(clip) end

---@param time double
function AudioSource:SetScheduledStartTime(time) end

---@param time double
function AudioSource:SetScheduledEndTime(time) end

function AudioSource:Stop() end

function AudioSource:Pause() end

function AudioSource:UnPause() end

---@overload fun(clip:UnityEngine.AudioClip, position:UnityEngine.Vector3, volume:float):void
---@param clip UnityEngine.AudioClip
---@param position UnityEngine.Vector3
function AudioSource.PlayClipAtPoint(clip, position) end

---@param type UnityEngine.AudioSourceCurveType
---@param curve UnityEngine.AnimationCurve
function AudioSource:SetCustomCurve(type, curve) end

---@param type UnityEngine.AudioSourceCurveType
---@return UnityEngine.AnimationCurve
function AudioSource:GetCustomCurve(type) end

---@param samples float[]
---@param channel int
function AudioSource:GetOutputData(samples, channel) end

---@param samples float[]
---@param channel int
---@param window UnityEngine.FFTWindow
function AudioSource:GetSpectrumData(samples, channel, window) end

---@param index int
---@param value float
---@return bool
function AudioSource:SetSpatializerFloat(index, value) end

---@param index int
---@param value float
---@return bool
function AudioSource:GetSpatializerFloat(index, value) end

---@param index int
---@param value float
---@return bool
function AudioSource:GetAmbisonicDecoderFloat(index, value) end

---@param index int
---@param value float
---@return bool
function AudioSource:SetAmbisonicDecoderFloat(index, value) end

UnityEngine.AudioSource = AudioSource
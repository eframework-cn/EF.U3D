---@class EP.U3D.LIBRARY.AUDIO.AudioManager : System.Object
---@field MuteSound bool
---@field MuteMusic bool
local AudioManager = {}

---@param root UnityEngine.Transform
---@param shared System.String
function AudioManager.Initialize(root, shared) end

---@param playlist string[]
---@param force bool
---@param loop bool
---@param shuffle bool
function AudioManager.PlayMusic(playlist, force, loop, shuffle) end

---@param fadeOut float
function AudioManager.StopMusic(fadeOut) end

---@param fadeOut float
function AudioManager.PauseMusic(fadeOut) end

---@param fadeOut float
function AudioManager.UnpauseMusic(fadeOut) end

---@overload fun(sound:System.String, pos:UnityEngine.Vector3):AudioObject
---@overload fun(sound:System.String, pos:UnityEngine.Vector3, parent:UnityEngine.Transform):AudioObject
---@overload fun(sound:System.String, pos:UnityEngine.Vector3, parent:UnityEngine.Transform, pitch:float):AudioObject
---@param sound System.String
---@param pitch float
---@return AudioObject
function AudioManager.PlaySound(sound, pitch) end

---@overload fun(sound:AudioObject, fadeOut:float):void
---@param sound System.String
---@param fadeOut float
function AudioManager.StopSound(sound, fadeOut) end

---@param fadeOut float
function AudioManager.PauseAll(fadeOut) end

---@param fadeOut float
function AudioManager.UnpauseAll(fadeOut) end

---@param category System.String
---@param volume float
function AudioManager.SetCategoryVolume(category, volume) end

---@return bool
function AudioManager.IsPlaylistPlaying() end

EP.U3D.LIBRARY.AUDIO.AudioManager = AudioManager
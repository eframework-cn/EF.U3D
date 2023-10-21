---@class EP.U3D.LIBRARY.BASE.Helper : System.Object
---@field TIME_SEC_1 int
---@field TIME_SEC_2 int
---@field TIME_SEC_3 int
---@field TIME_SEC_4 int
---@field TIME_SEC_5 int
---@field TIME_SEC_6 int
---@field TIME_SEC_7 int
---@field TIME_SEC_8 int
---@field TIME_SEC_9 int
---@field TIME_SEC_10 int
---@field TIME_SEC_15 int
---@field TIME_SEC_20 int
---@field TIME_SEC_25 int
---@field TIME_SEC_30 int
---@field TIME_SEC_35 int
---@field TIME_SEC_40 int
---@field TIME_SEC_45 int
---@field TIME_SEC_50 int
---@field TIME_SEC_55 int
---@field TIME_MIN_1 int
---@field TIME_MIN_2 int
---@field TIME_MIN_3 int
---@field TIME_MIN_4 int
---@field TIME_MIN_5 int
---@field TIME_MIN_6 int
---@field TIME_MIN_7 int
---@field TIME_MIN_8 int
---@field TIME_MIN_9 int
---@field TIME_MIN_10 int
---@field TIME_MIN_12 int
---@field TIME_MIN_15 int
---@field TIME_MIN_20 int
---@field TIME_MIN_25 int
---@field TIME_MIN_30 int
---@field TIME_MIN_35 int
---@field TIME_MIN_40 int
---@field TIME_MIN_45 int
---@field TIME_MIN_50 int
---@field TIME_MIN_55 int
---@field TIME_HOUR_1 int
---@field TIME_HOUR_2 int
---@field TIME_HOUR_3 int
---@field TIME_HOUR_4 int
---@field TIME_HOUR_5 int
---@field TIME_HOUR_6 int
---@field TIME_HOUR_7 int
---@field TIME_HOUR_8 int
---@field TIME_HOUR_9 int
---@field TIME_HOUR_10 int
---@field TIME_HOUR_11 int
---@field TIME_HOUR_12 int
---@field TIME_HOUR_13 int
---@field TIME_HOUR_14 int
---@field TIME_HOUR_15 int
---@field TIME_HOUR_16 int
---@field TIME_HOUR_17 int
---@field TIME_HOUR_18 int
---@field TIME_HOUR_19 int
---@field TIME_HOUR_20 int
---@field TIME_HOUR_21 int
---@field TIME_HOUR_22 int
---@field TIME_HOUR_23 int
---@field TIME_DAY_1 int
---@field TIME_DAY_2 int
---@field TIME_DAY_3 int
---@field TIME_DAY_4 int
---@field TIME_DAY_5 int
---@field TIME_DAY_6 int
---@field TIME_DAY_7 int
---@field TIME_DAY_8 int
---@field TIME_DAY_9 int
---@field TIME_DAY_10 int
---@field TIME_DAY_15 int
---@field TIME_DAY_20 int
---@field TIME_DAY_30 int
---@field TIME_INITIAL System.DateTime
local Helper = {}

---@param format System.String
---@param args object[]
---@return System.String
function Helper.StringFormat(format, args) end

---@param version System.String
---@return long
function Helper.VersionToNumber(version) end

---@param version long
---@return System.String
function Helper.NumberToVersion(version) end

---@param str System.String
---@return UnityEngine.Vector3
function Helper.StrToVec3(str) end

---@param vec UnityEngine.Vector3
---@return System.String
function Helper.Vec3ToStr(vec) end

---@param str System.String
---@return UnityEngine.Vector4
function Helper.StrToVec4(str) end

---@param vec UnityEngine.Vector4
---@return System.String
function Helper.Vec4ToStr(vec) end

---@param color UnityEngine.Color
---@return System.String
function Helper.ColorToHex(color) end

---@param hex System.String
---@return UnityEngine.Color
function Helper.HexToColor(hex) end

---@param src System.String
---@param length int
---@param appendix System.String
---@return System.String
function Helper.OmitStr(src, length, appendix) end

---@param format System.Object
---@param args object[]
function Helper.Log(format, args) end

---@param format System.Object
---@param args object[]
function Helper.LogWarning(format, args) end

---@param format System.Object
---@param args object[]
function Helper.LogError(format, args) end

---@param e System.Exception
---@param message System.String
function Helper.LogException(e, message) end

---@param filePath System.String
---@return int
function Helper.FileSize(filePath) end

---@param path System.String
---@return bool
function Helper.HasFile(path) end

---@param path System.String
---@return System.String
function Helper.OpenText(path) end

---@param path System.String
---@return byte[]
function Helper.OpenFile(path) end

---@param path System.String
---@param content System.String
---@param mode System.IO.FileMode
---@return bool
function Helper.SaveText(path, content, mode) end

---@param path System.String
---@param buffer byte[]
---@param mode System.IO.FileMode
---@return bool
function Helper.SaveFile(path, buffer, mode) end

---@param path System.String
function Helper.DeleteFile(path) end

---@param src System.String
---@param dst System.String
---@param overwrite bool
function Helper.CopyFile(src, dst, overwrite) end

---@param path System.String
---@return bool
function Helper.HasDirectory(path) end

---@param path System.String
---@param recursive bool
---@return bool
function Helper.DeleteDirectory(path, recursive) end

---@param path System.String
function Helper.CreateDirectory(path) end

---@param src System.String
---@param dest System.String
---@param exclude string[]
function Helper.CopyDirectory(src, dest, exclude) end

---@param path System.String
---@return bool
function Helper.IsDirectory(path) end

---@param path System.String
---@return System.String
function Helper.NormalizePath(path) end

---@param path System.String
---@return System.String
function Helper.FileMD5(path) end

---@param str System.String
---@return System.String
function Helper.StrMD5(str) end

---@param bytes byte[]
---@return System.String
function Helper.BytesMD5(bytes) end

---@param str System.String
---@param key System.String
---@return System.String
function Helper.EncryptString(str, key) end

---@param str System.String
---@param key System.String
---@return System.String
function Helper.DecryptString(str, key) end

---@param src byte[]
---@param key System.String
---@return byte[]
function Helper.EncryptBytes(src, key) end

---@param src byte[]
---@param key System.String
---@return byte[]
function Helper.DecryptBytes(src, key) end

---@return int
function Helper.GetTimestamp() end

---@return long
function Helper.GetMillisecond() end

---@return System.DateTime
function Helper.NowTime() end

---@param timestamp int
---@return System.DateTime
function Helper.ToTime(timestamp) end

---@param timestamp int
---@return int
function Helper.TimeToZero(timestamp) end

---@param timestamp int
---@return int
function Helper.ZeroTime(timestamp) end

---@overload fun(timestamp:long, format:System.String):System.String
---@overload fun(time:System.DateTime, format:System.String):System.String
---@param timestamp int
---@param format System.String
---@return System.String
function Helper.TimeFormat(timestamp, format) end

---@param dir System.String
---@param zip System.String
---@param exclude table
---@return bool
function Helper.Zip(dir, zip, exclude) end

---@param src System.String
---@param to System.String
---@param onComplete System.Action
---@param onError System.Action
---@param onProgress System.Action
function Helper.Unzip(src, to, onComplete, onError, onProgress) end

EP.U3D.LIBRARY.BASE.Helper = Helper
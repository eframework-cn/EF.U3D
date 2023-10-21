---@class UnityEngine.AssetBundle : UnityEngine.Object
---@field isStreamedSceneAssetBundle bool
---@field memoryBudgetKB uint
local AssetBundle = {}

---@param unloadAllObjects bool
function AssetBundle.UnloadAllAssetBundles(unloadAllObjects) end

---@return System.Collections.Generic.IEnumerable
function AssetBundle.GetAllLoadedAssetBundles() end

---@overload fun(path:System.String, crc:uint):UnityEngine.AssetBundleCreateRequest
---@overload fun(path:System.String, crc:uint, offset:ulong):UnityEngine.AssetBundleCreateRequest
---@param path System.String
---@return UnityEngine.AssetBundleCreateRequest
function AssetBundle.LoadFromFileAsync(path) end

---@overload fun(path:System.String, crc:uint):UnityEngine.AssetBundle
---@overload fun(path:System.String, crc:uint, offset:ulong):UnityEngine.AssetBundle
---@param path System.String
---@return UnityEngine.AssetBundle
function AssetBundle.LoadFromFile(path) end

---@overload fun(binary:byte[], crc:uint):UnityEngine.AssetBundleCreateRequest
---@param binary byte[]
---@return UnityEngine.AssetBundleCreateRequest
function AssetBundle.LoadFromMemoryAsync(binary) end

---@overload fun(binary:byte[], crc:uint):UnityEngine.AssetBundle
---@param binary byte[]
---@return UnityEngine.AssetBundle
function AssetBundle.LoadFromMemory(binary) end

---@overload fun(stream:System.IO.Stream, crc:uint):UnityEngine.AssetBundleCreateRequest
---@overload fun(stream:System.IO.Stream):UnityEngine.AssetBundleCreateRequest
---@param stream System.IO.Stream
---@param crc uint
---@param managedReadBufferSize uint
---@return UnityEngine.AssetBundleCreateRequest
function AssetBundle.LoadFromStreamAsync(stream, crc, managedReadBufferSize) end

---@overload fun(stream:System.IO.Stream, crc:uint):UnityEngine.AssetBundle
---@overload fun(stream:System.IO.Stream):UnityEngine.AssetBundle
---@param stream System.IO.Stream
---@param crc uint
---@param managedReadBufferSize uint
---@return UnityEngine.AssetBundle
function AssetBundle.LoadFromStream(stream, crc, managedReadBufferSize) end

---@param name System.String
---@return bool
function AssetBundle:Contains(name) end

---@overload fun(name:System.String, type:System.Type):UnityEngine.Object
---@param name System.String
---@return UnityEngine.Object
function AssetBundle:LoadAsset(name) end

---@overload fun(name:System.String, type:System.Type):UnityEngine.AssetBundleRequest
---@param name System.String
---@return UnityEngine.AssetBundleRequest
function AssetBundle:LoadAssetAsync(name) end

---@overload fun(name:System.String, type:System.Type):UnityEngine.Object[]
---@param name System.String
---@return UnityEngine.Object[]
function AssetBundle:LoadAssetWithSubAssets(name) end

---@overload fun(name:System.String, type:System.Type):UnityEngine.AssetBundleRequest
---@param name System.String
---@return UnityEngine.AssetBundleRequest
function AssetBundle:LoadAssetWithSubAssetsAsync(name) end

---@overload fun(type:System.Type):UnityEngine.Object[]
---@return UnityEngine.Object[]
function AssetBundle:LoadAllAssets() end

---@overload fun(type:System.Type):UnityEngine.AssetBundleRequest
---@return UnityEngine.AssetBundleRequest
function AssetBundle:LoadAllAssetsAsync() end

---@param unloadAllLoadedObjects bool
function AssetBundle:Unload(unloadAllLoadedObjects) end

---@param unloadAllLoadedObjects bool
---@return UnityEngine.AsyncOperation
function AssetBundle:UnloadAsync(unloadAllLoadedObjects) end

---@return string[]
function AssetBundle:GetAllAssetNames() end

---@return string[]
function AssetBundle:GetAllScenePaths() end

---@param inputPath System.String
---@param outputPath System.String
---@param method UnityEngine.BuildCompression
---@param expectedCRC uint
---@param priority UnityEngine.ThreadPriority
---@return UnityEngine.AssetBundleRecompressOperation
function AssetBundle.RecompressAssetBundleAsync(inputPath, outputPath, method, expectedCRC, priority) end

UnityEngine.AssetBundle = AssetBundle
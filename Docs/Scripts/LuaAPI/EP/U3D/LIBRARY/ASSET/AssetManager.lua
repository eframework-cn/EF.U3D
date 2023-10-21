---@class EP.U3D.LIBRARY.ASSET.AssetManager : System.Object
---@field OK bool
---@field Manifest UnityEngine.AssetBundleManifest
---@field MainBundle UnityEngine.AssetBundle
---@field LoadingScenes table
---@field LoadingAssets table
---@field LoadingBundles table
---@field LoadedBundles table
---@field LoadedScenes table
---@field LoadedObjects table
---@field BeforeLoadAsset System.Action
---@field AfterLoadAsset System.Action
---@field BeforeLoadScene System.Action
---@field AfterLoadScene System.Action
---@field BeforeUnloadAll System.Action
---@field AfterUnloadAll System.Action
local AssetManager = {}

function AssetManager.Initialize() end

function AssetManager.LoadManifest() end

---@param bundleName System.String
---@return UnityEngine.AssetBundle
function AssetManager.LoadAssetBundle(bundleName) end

---@param bundleName System.String
---@param handler EP.U3D.LIBRARY.ASSET.AssetManager.Handler
---@return System.Collections.IEnumerator
function AssetManager.LoadAssetBundleAsync(bundleName, handler) end

---@param bundleName System.String
function AssetManager.UnloadAssetBundle(bundleName) end

---@param assetPath System.String
---@param type System.Type
---@param internal bool
---@return UnityEngine.Object
function AssetManager.LoadAsset(assetPath, type, internal) end

---@param assetPath System.String
---@param type System.Type
---@param cb EP.U3D.LIBRARY.ASSET.AssetManager.Callback
---@param internal bool
---@return EP.U3D.LIBRARY.ASSET.AssetManager.Handler
function AssetManager.LoadAssetAsync(assetPath, type, cb, internal) end

---@param assetPath System.String
function AssetManager.UnloadAsset(assetPath) end

---@param go UnityEngine.GameObject
function AssetManager.UnloadObject(go) end

---@param go UnityEngine.GameObject
function AssetManager.ObtainObject(go) end

---@param nameOrPath System.String
---@param loadMode UnityEngine.SceneManagement.LoadSceneMode
function AssetManager.LoadScene(nameOrPath, loadMode) end

---@param nameOrPath System.String
---@param cb System.Action
---@param loadMode UnityEngine.SceneManagement.LoadSceneMode
---@return EP.U3D.LIBRARY.ASSET.AssetManager.Handler
function AssetManager.LoadSceneAsync(nameOrPath, cb, loadMode) end

---@param nameOrPath System.String
function AssetManager.UnloadScene(nameOrPath) end

function AssetManager.LoadAll() end

function AssetManager.UnloadAll() end

---@param differ EP.U3D.LIBRARY.ASSET.FileManifest.DifferInfo
function AssetManager.LoadDiff(differ) end

---@return float
function AssetManager.Progress() end

---@return bool
function AssetManager.Busy() end

EP.U3D.LIBRARY.ASSET.AssetManager = AssetManager

---@class EP.U3D.LIBRARY.ASSET.AssetManager.Handler : System.Object
---@field Progress float
---@field Current System.Object
---@field DoneCount int
---@field TotalCount int
---@field Operation UnityEngine.AsyncOperation
---@field WillLoad System.Action
---@field AfterLoad System.Action
local Handler = {}

function Handler:DoWillLoad() end

function Handler:DoAfterLoad() end

---@return bool
function Handler:MoveNext() end

function Handler:Reset() end

EP.U3D.LIBRARY.ASSET.AssetManager.Handler = Handler

---@class EP.U3D.LIBRARY.ASSET.AssetManager.BundleInfo : System.Object
---@field Name System.String
---@field Bundle UnityEngine.AssetBundle
---@field RefCount int
local BundleInfo = {}

---@param source System.String
---@return int
function BundleInfo:Ref(source) end

---@param source System.String
---@return int
function BundleInfo:Unref(source) end

EP.U3D.LIBRARY.ASSET.AssetManager.BundleInfo = BundleInfo
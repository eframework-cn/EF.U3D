---@class UnityEngine.AssetBundleManifest : UnityEngine.Object
local AssetBundleManifest = {}

---@return string[]
function AssetBundleManifest:GetAllAssetBundles() end

---@return string[]
function AssetBundleManifest:GetAllAssetBundlesWithVariant() end

---@param assetBundleName System.String
---@return UnityEngine.Hash128
function AssetBundleManifest:GetAssetBundleHash(assetBundleName) end

---@param assetBundleName System.String
---@return string[]
function AssetBundleManifest:GetDirectDependencies(assetBundleName) end

---@param assetBundleName System.String
---@return string[]
function AssetBundleManifest:GetAllDependencies(assetBundleName) end

UnityEngine.AssetBundleManifest = AssetBundleManifest
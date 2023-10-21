---@class UnityEngine.SceneManagement.SceneManager : System.Object
---@field sceneCount int
---@field sceneCountInBuildSettings int
---@field sceneLoaded UnityEngine.Events.UnityAction
---@field sceneUnloaded UnityEngine.Events.UnityAction
---@field activeSceneChanged UnityEngine.Events.UnityAction
local SceneManager = {}

---@return UnityEngine.SceneManagement.Scene
function SceneManager.GetActiveScene() end

---@param scene UnityEngine.SceneManagement.Scene
---@return bool
function SceneManager.SetActiveScene(scene) end

---@param scenePath System.String
---@return UnityEngine.SceneManagement.Scene
function SceneManager.GetSceneByPath(scenePath) end

---@param name System.String
---@return UnityEngine.SceneManagement.Scene
function SceneManager.GetSceneByName(name) end

---@param buildIndex int
---@return UnityEngine.SceneManagement.Scene
function SceneManager.GetSceneByBuildIndex(buildIndex) end

---@param index int
---@return UnityEngine.SceneManagement.Scene
function SceneManager.GetSceneAt(index) end

---@overload fun(sceneName:System.String):UnityEngine.SceneManagement.Scene
---@param sceneName System.String
---@param parameters UnityEngine.SceneManagement.CreateSceneParameters
---@return UnityEngine.SceneManagement.Scene
function SceneManager.CreateScene(sceneName, parameters) end

---@param sourceScene UnityEngine.SceneManagement.Scene
---@param destinationScene UnityEngine.SceneManagement.Scene
function SceneManager.MergeScenes(sourceScene, destinationScene) end

---@param go UnityEngine.GameObject
---@param scene UnityEngine.SceneManagement.Scene
function SceneManager.MoveGameObjectToScene(go, scene) end

---@overload fun(sceneName:System.String):void
---@overload fun(sceneName:System.String, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.SceneManagement.Scene
---@overload fun(sceneBuildIndex:int, mode:UnityEngine.SceneManagement.LoadSceneMode):void
---@overload fun(sceneBuildIndex:int):void
---@overload fun(sceneBuildIndex:int, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.SceneManagement.Scene
---@param sceneName System.String
---@param mode UnityEngine.SceneManagement.LoadSceneMode
function SceneManager.LoadScene(sceneName, mode) end

---@overload fun(sceneBuildIndex:int):UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex:int, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String, mode:UnityEngine.SceneManagement.LoadSceneMode):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String, parameters:UnityEngine.SceneManagement.LoadSceneParameters):UnityEngine.AsyncOperation
---@param sceneBuildIndex int
---@param mode UnityEngine.SceneManagement.LoadSceneMode
---@return UnityEngine.AsyncOperation
function SceneManager.LoadSceneAsync(sceneBuildIndex, mode) end

---@overload fun(sceneName:System.String):UnityEngine.AsyncOperation
---@overload fun(scene:UnityEngine.SceneManagement.Scene):UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex:int, options:UnityEngine.SceneManagement.UnloadSceneOptions):UnityEngine.AsyncOperation
---@overload fun(sceneName:System.String, options:UnityEngine.SceneManagement.UnloadSceneOptions):UnityEngine.AsyncOperation
---@overload fun(scene:UnityEngine.SceneManagement.Scene, options:UnityEngine.SceneManagement.UnloadSceneOptions):UnityEngine.AsyncOperation
---@param sceneBuildIndex int
---@return UnityEngine.AsyncOperation
function SceneManager.UnloadSceneAsync(sceneBuildIndex) end

UnityEngine.SceneManagement.SceneManager = SceneManager
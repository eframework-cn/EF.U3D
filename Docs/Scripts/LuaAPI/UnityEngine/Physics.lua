---@class UnityEngine.Physics : System.Object
---@field gravity UnityEngine.Vector3
---@field defaultContactOffset float
---@field sleepThreshold float
---@field queriesHitTriggers bool
---@field queriesHitBackfaces bool
---@field bounceThreshold float
---@field defaultMaxDepenetrationVelocity float
---@field defaultSolverIterations int
---@field defaultSolverVelocityIterations int
---@field defaultMaxAngularSpeed float
---@field improvedPatchFriction bool
---@field defaultPhysicsScene UnityEngine.PhysicsScene
---@field autoSimulation bool
---@field autoSyncTransforms bool
---@field reuseCollisionCallbacks bool
---@field interCollisionDistance float
---@field interCollisionStiffness float
---@field interCollisionSettingsToggle bool
---@field clothGravity UnityEngine.Vector3
---@field IgnoreRaycastLayer int
---@field DefaultRaycastLayers int
---@field AllLayers int
---@field ContactModifyEvent System.Action
---@field ContactModifyEventCCD System.Action
local Physics = {}

---@overload fun(collider1:UnityEngine.Collider, collider2:UnityEngine.Collider):void
---@param collider1 UnityEngine.Collider
---@param collider2 UnityEngine.Collider
---@param ignore bool
function Physics.IgnoreCollision(collider1, collider2, ignore) end

---@overload fun(layer1:int, layer2:int):void
---@param layer1 int
---@param layer2 int
---@param ignore bool
function Physics.IgnoreLayerCollision(layer1, layer2, ignore) end

---@param layer1 int
---@param layer2 int
---@return bool
function Physics.GetIgnoreLayerCollision(layer1, layer2) end

---@param collider1 UnityEngine.Collider
---@param collider2 UnityEngine.Collider
---@return bool
function Physics.GetIgnoreCollision(collider1, collider2) end

---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:float, layerMask:int):bool
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:float):bool
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3):bool
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int):bool
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float):bool
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):bool
---@overload fun(ray:UnityEngine.Ray, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(ray:UnityEngine.Ray, maxDistance:float, layerMask:int):bool
---@overload fun(ray:UnityEngine.Ray, maxDistance:float):bool
---@overload fun(ray:UnityEngine.Ray):bool
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int):bool
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit, maxDistance:float):bool
---@overload fun(ray:UnityEngine.Ray, hitInfo:UnityEngine.RaycastHit):bool
---@param origin UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.Raycast(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3, layerMask:int):bool
---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3):bool
---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, layerMask:int):bool
---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):bool
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.Linecast(start, _end, layerMask, queryTriggerInteraction) end

---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, maxDistance:float, layerMask:int):bool
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, maxDistance:float):bool
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3):bool
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int):bool
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float):bool
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):bool
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius float
---@param direction UnityEngine.Vector3
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.CapsuleCast(point1, point2, radius, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int):bool
---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, maxDistance:float):bool
---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, maxDistance:float, layerMask:int):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, maxDistance:float):bool
---@overload fun(ray:UnityEngine.Ray, radius:float):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, hitInfo:UnityEngine.RaycastHit, maxDistance:float, layerMask:int):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, hitInfo:UnityEngine.RaycastHit, maxDistance:float):bool
---@overload fun(ray:UnityEngine.Ray, radius:float, hitInfo:UnityEngine.RaycastHit):bool
---@param origin UnityEngine.Vector3
---@param radius float
---@param direction UnityEngine.Vector3
---@param hitInfo UnityEngine.RaycastHit
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.SphereCast(origin, radius, direction, hitInfo, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:float, layerMask:int):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:float):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion, maxDistance:float, layerMask:int):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion, maxDistance:float):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit, orientation:UnityEngine.Quaternion):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, hitInfo:UnityEngine.RaycastHit):bool
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.BoxCast(center, halfExtents, direction, orientation, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:float, layerMask:int):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, maxDistance:float):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, maxDistance:float, layerMask:int):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, maxDistance:float):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray):UnityEngine.RaycastHit[]
---@param origin UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.RaycastHit[]
function Physics.RaycastAll(origin, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int):int
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit[], maxDistance:float):int
---@overload fun(ray:UnityEngine.Ray, results:UnityEngine.RaycastHit[]):int
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):int
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int):int
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float):int
---@overload fun(origin:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[]):int
---@param ray UnityEngine.Ray
---@param results UnityEngine.RaycastHit[]
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.RaycastNonAlloc(ray, results, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, maxDistance:float, layerMask:int):UnityEngine.RaycastHit[]
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, maxDistance:float):UnityEngine.RaycastHit[]
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3):UnityEngine.RaycastHit[]
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius float
---@param direction UnityEngine.Vector3
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.RaycastHit[]
function Physics.CapsuleCastAll(point1, point2, radius, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, maxDistance:float, layerMask:int):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, maxDistance:float):UnityEngine.RaycastHit[]
---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, radius:float, maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, radius:float, maxDistance:float, layerMask:int):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, radius:float, maxDistance:float):UnityEngine.RaycastHit[]
---@overload fun(ray:UnityEngine.Ray, radius:float):UnityEngine.RaycastHit[]
---@param origin UnityEngine.Vector3
---@param radius float
---@param direction UnityEngine.Vector3
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.RaycastHit[]
function Physics.SphereCastAll(origin, radius, direction, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:float, layerMask:int):UnityEngine.Collider[]
---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:float):UnityEngine.Collider[]
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.Collider[]
function Physics.OverlapCapsule(point0, point1, radius, layerMask, queryTriggerInteraction) end

---@overload fun(position:UnityEngine.Vector3, radius:float, layerMask:int):UnityEngine.Collider[]
---@overload fun(position:UnityEngine.Vector3, radius:float):UnityEngine.Collider[]
---@param position UnityEngine.Vector3
---@param radius float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.Collider[]
function Physics.OverlapSphere(position, radius, layerMask, queryTriggerInteraction) end

---@param step float
function Physics.Simulate(step) end

function Physics.SyncTransforms() end

---@param colliderA UnityEngine.Collider
---@param positionA UnityEngine.Vector3
---@param rotationA UnityEngine.Quaternion
---@param colliderB UnityEngine.Collider
---@param positionB UnityEngine.Vector3
---@param rotationB UnityEngine.Quaternion
---@param direction UnityEngine.Vector3
---@param distance float
---@return bool
function Physics.ComputePenetration(colliderA, positionA, rotationA, colliderB, positionB, rotationB, direction, distance) end

---@param point UnityEngine.Vector3
---@param collider UnityEngine.Collider
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function Physics.ClosestPoint(point, collider, position, rotation) end

---@overload fun(position:UnityEngine.Vector3, radius:float, results:UnityEngine.Collider[], layerMask:int):int
---@overload fun(position:UnityEngine.Vector3, radius:float, results:UnityEngine.Collider[]):int
---@param position UnityEngine.Vector3
---@param radius float
---@param results UnityEngine.Collider[]
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.OverlapSphereNonAlloc(position, radius, results, layerMask, queryTriggerInteraction) end

---@overload fun(position:UnityEngine.Vector3, radius:float, layerMask:int):bool
---@overload fun(position:UnityEngine.Vector3, radius:float):bool
---@param position UnityEngine.Vector3
---@param radius float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.CheckSphere(position, radius, layerMask, queryTriggerInteraction) end

---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int):int
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float):int
---@overload fun(point1:UnityEngine.Vector3, point2:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[]):int
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius float
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int):int
---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], maxDistance:float):int
---@overload fun(origin:UnityEngine.Vector3, radius:float, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[]):int
---@overload fun(ray:UnityEngine.Ray, radius:float, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int, queryTriggerInteraction:UnityEngine.QueryTriggerInteraction):int
---@overload fun(ray:UnityEngine.Ray, radius:float, results:UnityEngine.RaycastHit[], maxDistance:float, layerMask:int):int
---@overload fun(ray:UnityEngine.Ray, radius:float, results:UnityEngine.RaycastHit[], maxDistance:float):int
---@overload fun(ray:UnityEngine.Ray, radius:float, results:UnityEngine.RaycastHit[]):int
---@param origin UnityEngine.Vector3
---@param radius float
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.SphereCastNonAlloc(origin, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3, radius:float, layerMask:int):bool
---@overload fun(start:UnityEngine.Vector3, end:UnityEngine.Vector3, radius:float):bool
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param radius float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.CheckCapsule(start, _end, radius, layerMask, queryTriggerInteraction) end

---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, layerMask:int):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):bool
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3):bool
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@param layermask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return bool
function Physics.CheckBox(center, halfExtents, orientation, layermask, queryTriggerInteraction) end

---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, layerMask:int):UnityEngine.Collider[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):UnityEngine.Collider[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3):UnityEngine.Collider[]
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.Collider[]
function Physics.OverlapBox(center, halfExtents, orientation, layerMask, queryTriggerInteraction) end

---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, results:UnityEngine.Collider[], orientation:UnityEngine.Quaternion, mask:int):int
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, results:UnityEngine.Collider[], orientation:UnityEngine.Quaternion):int
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, results:UnityEngine.Collider[]):int
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param results UnityEngine.Collider[]
---@param orientation UnityEngine.Quaternion
---@param mask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.OverlapBoxNonAlloc(center, halfExtents, results, orientation, mask, queryTriggerInteraction) end

---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion):int
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion, maxDistance:float):int
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[], orientation:UnityEngine.Quaternion, maxDistance:float, layerMask:int):int
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, results:UnityEngine.RaycastHit[]):int
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@param orientation UnityEngine.Quaternion
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.BoxCastNonAlloc(center, halfExtents, direction, results, orientation, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:float, layerMask:int):UnityEngine.RaycastHit[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion, maxDistance:float):UnityEngine.RaycastHit[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3, orientation:UnityEngine.Quaternion):UnityEngine.RaycastHit[]
---@overload fun(center:UnityEngine.Vector3, halfExtents:UnityEngine.Vector3, direction:UnityEngine.Vector3):UnityEngine.RaycastHit[]
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@param maxDistance float
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return UnityEngine.RaycastHit[]
function Physics.BoxCastAll(center, halfExtents, direction, orientation, maxDistance, layerMask, queryTriggerInteraction) end

---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:float, results:UnityEngine.Collider[], layerMask:int):int
---@overload fun(point0:UnityEngine.Vector3, point1:UnityEngine.Vector3, radius:float, results:UnityEngine.Collider[]):int
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius float
---@param results UnityEngine.Collider[]
---@param layerMask int
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return int
function Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results, layerMask, queryTriggerInteraction) end

---@param worldBounds UnityEngine.Bounds
---@param subdivisions int
function Physics.RebuildBroadphaseRegions(worldBounds, subdivisions) end

---@param meshID int
---@param convex bool
function Physics.BakeMesh(meshID, convex) end

UnityEngine.Physics = Physics
---@class System.GC
---@field MaxGeneration int
local GC = {}

---@return long
function GC.GetAllocatedBytesForCurrentThread() end

---@param bytesAllocated long
function GC.AddMemoryPressure(bytesAllocated) end

---@param bytesAllocated long
function GC.RemoveMemoryPressure(bytesAllocated) end

---@overload fun(wo:System.WeakReference):int
---@param obj System.Object
---@return int
function GC.GetGeneration(obj) end

---@overload fun():void
---@overload fun(generation:int, mode:System.GCCollectionMode):void
---@overload fun(generation:int, mode:System.GCCollectionMode, blocking:bool):void
---@overload fun(generation:int, mode:System.GCCollectionMode, blocking:bool, compacting:bool):void
---@param generation int
function GC.Collect(generation) end

---@param generation int
---@return int
function GC.CollectionCount(generation) end

---@param obj System.Object
function GC.KeepAlive(obj) end

function GC.WaitForPendingFinalizers() end

---@param obj System.Object
function GC.SuppressFinalize(obj) end

---@param obj System.Object
function GC.ReRegisterForFinalize(obj) end

---@param forceFullCollection bool
---@return long
function GC.GetTotalMemory(forceFullCollection) end

---@param maxGenerationThreshold int
---@param largeObjectHeapThreshold int
function GC.RegisterForFullGCNotification(maxGenerationThreshold, largeObjectHeapThreshold) end

function GC.CancelFullGCNotification() end

---@overload fun(millisecondsTimeout:int):System.GCNotificationStatus
---@return System.GCNotificationStatus
function GC.WaitForFullGCApproach() end

---@overload fun(millisecondsTimeout:int):System.GCNotificationStatus
---@return System.GCNotificationStatus
function GC.WaitForFullGCComplete() end

---@overload fun(totalSize:long, lohSize:long):bool
---@overload fun(totalSize:long, disallowFullBlockingGC:bool):bool
---@overload fun(totalSize:long, lohSize:long, disallowFullBlockingGC:bool):bool
---@param totalSize long
---@return bool
function GC.TryStartNoGCRegion(totalSize) end

function GC.EndNoGCRegion() end

System.GC = GC
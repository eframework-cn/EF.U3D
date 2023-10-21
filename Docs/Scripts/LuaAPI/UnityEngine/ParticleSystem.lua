---@class UnityEngine.ParticleSystem : UnityEngine.Component
---@field isPlaying bool
---@field isEmitting bool
---@field isStopped bool
---@field isPaused bool
---@field particleCount int
---@field time float
---@field randomSeed uint
---@field useAutoRandomSeed bool
---@field proceduralSimulationSupported bool
---@field main UnityEngine.ParticleSystem.MainModule
---@field emission UnityEngine.ParticleSystem.EmissionModule
---@field shape UnityEngine.ParticleSystem.ShapeModule
---@field velocityOverLifetime UnityEngine.ParticleSystem.VelocityOverLifetimeModule
---@field limitVelocityOverLifetime UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule
---@field inheritVelocity UnityEngine.ParticleSystem.InheritVelocityModule
---@field lifetimeByEmitterSpeed UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule
---@field forceOverLifetime UnityEngine.ParticleSystem.ForceOverLifetimeModule
---@field colorOverLifetime UnityEngine.ParticleSystem.ColorOverLifetimeModule
---@field colorBySpeed UnityEngine.ParticleSystem.ColorBySpeedModule
---@field sizeOverLifetime UnityEngine.ParticleSystem.SizeOverLifetimeModule
---@field sizeBySpeed UnityEngine.ParticleSystem.SizeBySpeedModule
---@field rotationOverLifetime UnityEngine.ParticleSystem.RotationOverLifetimeModule
---@field rotationBySpeed UnityEngine.ParticleSystem.RotationBySpeedModule
---@field externalForces UnityEngine.ParticleSystem.ExternalForcesModule
---@field noise UnityEngine.ParticleSystem.NoiseModule
---@field collision UnityEngine.ParticleSystem.CollisionModule
---@field trigger UnityEngine.ParticleSystem.TriggerModule
---@field textureSheetAnimation UnityEngine.ParticleSystem.TextureSheetAnimationModule
---@field lights UnityEngine.ParticleSystem.LightsModule
---@field trails UnityEngine.ParticleSystem.TrailModule
---@field customData UnityEngine.ParticleSystem.CustomDataModule
local ParticleSystem = {}

---@overload fun(particles:UnityEngine.ParticleSystem.Particle[], size:int):void
---@overload fun(particles:UnityEngine.ParticleSystem.Particle[]):void
---@overload fun(particles:Unity.Collections.NativeArray, size:int, offset:int):void
---@overload fun(particles:Unity.Collections.NativeArray, size:int):void
---@overload fun(particles:Unity.Collections.NativeArray):void
---@param particles UnityEngine.ParticleSystem.Particle[]
---@param size int
---@param offset int
function ParticleSystem:SetParticles(particles, size, offset) end

---@overload fun(particles:UnityEngine.ParticleSystem.Particle[], size:int):int
---@overload fun(particles:UnityEngine.ParticleSystem.Particle[]):int
---@overload fun(particles:Unity.Collections.NativeArray, size:int, offset:int):int
---@overload fun(particles:Unity.Collections.NativeArray, size:int):int
---@overload fun(particles:Unity.Collections.NativeArray):int
---@param particles UnityEngine.ParticleSystem.Particle[]
---@param size int
---@param offset int
---@return int
function ParticleSystem:GetParticles(particles, size, offset) end

---@param customData table
---@param streamIndex UnityEngine.ParticleSystemCustomData
function ParticleSystem:SetCustomParticleData(customData, streamIndex) end

---@param customData table
---@param streamIndex UnityEngine.ParticleSystemCustomData
---@return int
function ParticleSystem:GetCustomParticleData(customData, streamIndex) end

---@return UnityEngine.ParticleSystem.PlaybackState
function ParticleSystem:GetPlaybackState() end

---@param playbackState UnityEngine.ParticleSystem.PlaybackState
function ParticleSystem:SetPlaybackState(playbackState) end

---@overload fun(trailData:UnityEngine.ParticleSystem.Trails):int
---@return UnityEngine.ParticleSystem.Trails
function ParticleSystem:GetTrails() end

---@param trailData UnityEngine.ParticleSystem.Trails
function ParticleSystem:SetTrails(trailData) end

---@overload fun(t:float, withChildren:bool, restart:bool):void
---@overload fun(t:float, withChildren:bool):void
---@overload fun(t:float):void
---@param t float
---@param withChildren bool
---@param restart bool
---@param fixedTimeStep bool
function ParticleSystem:Simulate(t, withChildren, restart, fixedTimeStep) end

---@overload fun():void
---@param withChildren bool
function ParticleSystem:Play(withChildren) end

---@overload fun():void
---@param withChildren bool
function ParticleSystem:Pause(withChildren) end

---@overload fun(withChildren:bool):void
---@overload fun():void
---@param withChildren bool
---@param stopBehavior UnityEngine.ParticleSystemStopBehavior
function ParticleSystem:Stop(withChildren, stopBehavior) end

---@overload fun():void
---@param withChildren bool
function ParticleSystem:Clear(withChildren) end

---@overload fun():bool
---@param withChildren bool
---@return bool
function ParticleSystem:IsAlive(withChildren) end

---@overload fun(emitParams:UnityEngine.ParticleSystem.EmitParams, count:int):void
---@param count int
function ParticleSystem:Emit(count) end

---@overload fun(subEmitterIndex:int, particle:UnityEngine.ParticleSystem.Particle):void
---@overload fun(subEmitterIndex:int, particles:table):void
---@param subEmitterIndex int
function ParticleSystem:TriggerSubEmitter(subEmitterIndex) end

function ParticleSystem.ResetPreMappedBufferMemory() end

---@param vertexBuffersCount int
---@param indexBuffersCount int
function ParticleSystem.SetMaximumPreMappedBufferCounts(vertexBuffersCount, indexBuffersCount) end

function ParticleSystem:AllocateAxisOfRotationAttribute() end

function ParticleSystem:AllocateMeshIndexAttribute() end

---@param stream UnityEngine.ParticleSystemCustomData
function ParticleSystem:AllocateCustomDataAttribute(stream) end

UnityEngine.ParticleSystem = ParticleSystem
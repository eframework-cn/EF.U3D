---@class UnityEngine.Animator : UnityEngine.Behaviour
---@field isOptimizable bool
---@field isHuman bool
---@field hasRootMotion bool
---@field humanScale float
---@field isInitialized bool
---@field deltaPosition UnityEngine.Vector3
---@field deltaRotation UnityEngine.Quaternion
---@field velocity UnityEngine.Vector3
---@field angularVelocity UnityEngine.Vector3
---@field rootPosition UnityEngine.Vector3
---@field rootRotation UnityEngine.Quaternion
---@field applyRootMotion bool
---@field updateMode UnityEngine.AnimatorUpdateMode
---@field hasTransformHierarchy bool
---@field gravityWeight float
---@field bodyPosition UnityEngine.Vector3
---@field bodyRotation UnityEngine.Quaternion
---@field stabilizeFeet bool
---@field layerCount int
---@field parameters UnityEngine.AnimatorControllerParameter[]
---@field parameterCount int
---@field feetPivotActive float
---@field pivotWeight float
---@field pivotPosition UnityEngine.Vector3
---@field isMatchingTarget bool
---@field speed float
---@field targetPosition UnityEngine.Vector3
---@field targetRotation UnityEngine.Quaternion
---@field cullingMode UnityEngine.AnimatorCullingMode
---@field playbackTime float
---@field recorderStartTime float
---@field recorderStopTime float
---@field recorderMode UnityEngine.AnimatorRecorderMode
---@field runtimeAnimatorController UnityEngine.RuntimeAnimatorController
---@field hasBoundPlayables bool
---@field avatar UnityEngine.Avatar
---@field playableGraph UnityEngine.Playables.PlayableGraph
---@field layersAffectMassCenter bool
---@field leftFeetBottomHeight float
---@field rightFeetBottomHeight float
---@field logWarnings bool
---@field fireEvents bool
---@field keepAnimatorStateOnDisable bool
---@field writeDefaultValuesOnDisable bool
local Animator = {}

---@overload fun(id:int):float
---@param name System.String
---@return float
function Animator:GetFloat(name) end

---@overload fun(name:System.String, value:float, dampTime:float, deltaTime:float):void
---@overload fun(id:int, value:float):void
---@overload fun(id:int, value:float, dampTime:float, deltaTime:float):void
---@param name System.String
---@param value float
function Animator:SetFloat(name, value) end

---@overload fun(id:int):bool
---@param name System.String
---@return bool
function Animator:GetBool(name) end

---@overload fun(id:int, value:bool):void
---@param name System.String
---@param value bool
function Animator:SetBool(name, value) end

---@overload fun(id:int):int
---@param name System.String
---@return int
function Animator:GetInteger(name) end

---@overload fun(id:int, value:int):void
---@param name System.String
---@param value int
function Animator:SetInteger(name, value) end

---@overload fun(id:int):void
---@param name System.String
function Animator:SetTrigger(name) end

---@overload fun(id:int):void
---@param name System.String
function Animator:ResetTrigger(name) end

---@overload fun(id:int):bool
---@param name System.String
---@return bool
function Animator:IsParameterControlledByCurve(name) end

---@param goal UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function Animator:GetIKPosition(goal) end

---@param goal UnityEngine.AvatarIKGoal
---@param goalPosition UnityEngine.Vector3
function Animator:SetIKPosition(goal, goalPosition) end

---@param goal UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function Animator:GetIKRotation(goal) end

---@param goal UnityEngine.AvatarIKGoal
---@param goalRotation UnityEngine.Quaternion
function Animator:SetIKRotation(goal, goalRotation) end

---@param goal UnityEngine.AvatarIKGoal
---@return float
function Animator:GetIKPositionWeight(goal) end

---@param goal UnityEngine.AvatarIKGoal
---@param value float
function Animator:SetIKPositionWeight(goal, value) end

---@param goal UnityEngine.AvatarIKGoal
---@return float
function Animator:GetIKRotationWeight(goal) end

---@param goal UnityEngine.AvatarIKGoal
---@param value float
function Animator:SetIKRotationWeight(goal, value) end

---@param hint UnityEngine.AvatarIKHint
---@return UnityEngine.Vector3
function Animator:GetIKHintPosition(hint) end

---@param hint UnityEngine.AvatarIKHint
---@param hintPosition UnityEngine.Vector3
function Animator:SetIKHintPosition(hint, hintPosition) end

---@param hint UnityEngine.AvatarIKHint
---@return float
function Animator:GetIKHintPositionWeight(hint) end

---@param hint UnityEngine.AvatarIKHint
---@param value float
function Animator:SetIKHintPositionWeight(hint, value) end

---@param lookAtPosition UnityEngine.Vector3
function Animator:SetLookAtPosition(lookAtPosition) end

---@overload fun(weight:float, bodyWeight:float):void
---@overload fun(weight:float, bodyWeight:float, headWeight:float):void
---@overload fun(weight:float, bodyWeight:float, headWeight:float, eyesWeight:float):void
---@overload fun(weight:float, bodyWeight:float, headWeight:float, eyesWeight:float, clampWeight:float):void
---@param weight float
function Animator:SetLookAtWeight(weight) end

---@param humanBoneId UnityEngine.HumanBodyBones
---@param rotation UnityEngine.Quaternion
function Animator:SetBoneLocalRotation(humanBoneId, rotation) end

---@param fullPathHash int
---@param layerIndex int
---@return UnityEngine.StateMachineBehaviour[]
function Animator:GetBehaviours(fullPathHash, layerIndex) end

---@param layerIndex int
---@return System.String
function Animator:GetLayerName(layerIndex) end

---@param layerName System.String
---@return int
function Animator:GetLayerIndex(layerName) end

---@param layerIndex int
---@return float
function Animator:GetLayerWeight(layerIndex) end

---@param layerIndex int
---@param weight float
function Animator:SetLayerWeight(layerIndex, weight) end

---@param layerIndex int
---@return UnityEngine.AnimatorStateInfo
function Animator:GetCurrentAnimatorStateInfo(layerIndex) end

---@param layerIndex int
---@return UnityEngine.AnimatorStateInfo
function Animator:GetNextAnimatorStateInfo(layerIndex) end

---@param layerIndex int
---@return UnityEngine.AnimatorTransitionInfo
function Animator:GetAnimatorTransitionInfo(layerIndex) end

---@param layerIndex int
---@return int
function Animator:GetCurrentAnimatorClipInfoCount(layerIndex) end

---@param layerIndex int
---@return int
function Animator:GetNextAnimatorClipInfoCount(layerIndex) end

---@overload fun(layerIndex:int, clips:table):void
---@param layerIndex int
---@return UnityEngine.AnimatorClipInfo[]
function Animator:GetCurrentAnimatorClipInfo(layerIndex) end

---@overload fun(layerIndex:int, clips:table):void
---@param layerIndex int
---@return UnityEngine.AnimatorClipInfo[]
function Animator:GetNextAnimatorClipInfo(layerIndex) end

---@param layerIndex int
---@return bool
function Animator:IsInTransition(layerIndex) end

---@param index int
---@return UnityEngine.AnimatorControllerParameter
function Animator:GetParameter(index) end

---@overload fun(matchPosition:UnityEngine.Vector3, matchRotation:UnityEngine.Quaternion, targetBodyPart:UnityEngine.AvatarTarget, weightMask:UnityEngine.MatchTargetWeightMask, startNormalizedTime:float, targetNormalizedTime:float):void
---@overload fun(matchPosition:UnityEngine.Vector3, matchRotation:UnityEngine.Quaternion, targetBodyPart:UnityEngine.AvatarTarget, weightMask:UnityEngine.MatchTargetWeightMask, startNormalizedTime:float, targetNormalizedTime:float, completeMatch:bool):void
---@param matchPosition UnityEngine.Vector3
---@param matchRotation UnityEngine.Quaternion
---@param targetBodyPart UnityEngine.AvatarTarget
---@param weightMask UnityEngine.MatchTargetWeightMask
---@param startNormalizedTime float
function Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime) end

---@overload fun(completeMatch:bool):void
function Animator:InterruptMatchTarget() end

---@overload fun(stateName:System.String, fixedTransitionDuration:float, layer:int):void
---@overload fun(stateName:System.String, fixedTransitionDuration:float, layer:int, fixedTimeOffset:float):void
---@overload fun(stateName:System.String, fixedTransitionDuration:float, layer:int, fixedTimeOffset:float, normalizedTransitionTime:float):void
---@overload fun(stateHashName:int, fixedTransitionDuration:float, layer:int, fixedTimeOffset:float):void
---@overload fun(stateHashName:int, fixedTransitionDuration:float, layer:int):void
---@overload fun(stateHashName:int, fixedTransitionDuration:float):void
---@overload fun(stateHashName:int, fixedTransitionDuration:float, layer:int, fixedTimeOffset:float, normalizedTransitionTime:float):void
---@param stateName System.String
---@param fixedTransitionDuration float
function Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration) end

function Animator:WriteDefaultValues() end

---@overload fun(stateName:System.String, normalizedTransitionDuration:float, layer:int):void
---@overload fun(stateName:System.String, normalizedTransitionDuration:float):void
---@overload fun(stateName:System.String, normalizedTransitionDuration:float, layer:int, normalizedTimeOffset:float, normalizedTransitionTime:float):void
---@overload fun(stateHashName:int, normalizedTransitionDuration:float, layer:int, normalizedTimeOffset:float, normalizedTransitionTime:float):void
---@overload fun(stateHashName:int, normalizedTransitionDuration:float, layer:int, normalizedTimeOffset:float):void
---@overload fun(stateHashName:int, normalizedTransitionDuration:float, layer:int):void
---@overload fun(stateHashName:int, normalizedTransitionDuration:float):void
---@param stateName System.String
---@param normalizedTransitionDuration float
---@param layer int
---@param normalizedTimeOffset float
function Animator:CrossFade(stateName, normalizedTransitionDuration, layer, normalizedTimeOffset) end

---@overload fun(stateName:System.String):void
---@overload fun(stateName:System.String, layer:int, fixedTime:float):void
---@overload fun(stateNameHash:int, layer:int, fixedTime:float):void
---@overload fun(stateNameHash:int, layer:int):void
---@overload fun(stateNameHash:int):void
---@param stateName System.String
---@param layer int
function Animator:PlayInFixedTime(stateName, layer) end

---@overload fun(stateName:System.String):void
---@overload fun(stateName:System.String, layer:int, normalizedTime:float):void
---@overload fun(stateNameHash:int, layer:int, normalizedTime:float):void
---@overload fun(stateNameHash:int, layer:int):void
---@overload fun(stateNameHash:int):void
---@param stateName System.String
---@param layer int
function Animator:Play(stateName, layer) end

---@param targetIndex UnityEngine.AvatarTarget
---@param targetNormalizedTime float
function Animator:SetTarget(targetIndex, targetNormalizedTime) end

---@param humanBoneId UnityEngine.HumanBodyBones
---@return UnityEngine.Transform
function Animator:GetBoneTransform(humanBoneId) end

function Animator:StartPlayback() end

function Animator:StopPlayback() end

---@param frameCount int
function Animator:StartRecording(frameCount) end

function Animator:StopRecording() end

---@param layerIndex int
---@param stateID int
---@return bool
function Animator:HasState(layerIndex, stateID) end

---@param name System.String
---@return int
function Animator.StringToHash(name) end

---@param deltaTime float
function Animator:Update(deltaTime) end

function Animator:Rebind() end

function Animator:ApplyBuiltinRootMotion() end

UnityEngine.Animator = Animator
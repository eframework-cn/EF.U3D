---@class UnityEngine.Graphics : System.Object
---@field activeColorGamut UnityEngine.ColorGamut
---@field activeTier UnityEngine.Rendering.GraphicsTier
---@field preserveFramebufferAlpha bool
---@field minOpenGLESVersion UnityEngine.Rendering.OpenGLESVersion
---@field activeColorBuffer UnityEngine.RenderBuffer
---@field activeDepthBuffer UnityEngine.RenderBuffer
local Graphics = {}

function Graphics.ClearRandomWriteTargets() end

---@param buffer UnityEngine.Rendering.CommandBuffer
function Graphics.ExecuteCommandBuffer(buffer) end

---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function Graphics.ExecuteCommandBufferAsync(buffer, queueType) end

---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:int, face:UnityEngine.CubemapFace, depthSlice:int):void
---@overload fun(colorBuffers:UnityEngine.RenderBuffer[], depthBuffer:UnityEngine.RenderBuffer):void
---@overload fun(setup:UnityEngine.RenderTargetSetup):void
---@overload fun(rt:UnityEngine.RenderTexture):void
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:int):void
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:int, face:UnityEngine.CubemapFace):void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer):void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:int):void
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:int, face:UnityEngine.CubemapFace):void
---@param rt UnityEngine.RenderTexture
---@param mipLevel int
---@param face UnityEngine.CubemapFace
---@param depthSlice int
function Graphics.SetRenderTarget(rt, mipLevel, face, depthSlice) end

---@overload fun(index:int, uav:UnityEngine.ComputeBuffer, preserveCounterValue:bool):void
---@overload fun(index:int, uav:UnityEngine.GraphicsBuffer, preserveCounterValue:bool):void
---@overload fun(index:int, uav:UnityEngine.ComputeBuffer):void
---@overload fun(index:int, uav:UnityEngine.GraphicsBuffer):void
---@param index int
---@param uav UnityEngine.RenderTexture
function Graphics.SetRandomWriteTarget(index, uav) end

---@overload fun(src:UnityEngine.Texture, srcElement:int, dst:UnityEngine.Texture, dstElement:int):void
---@overload fun(src:UnityEngine.Texture, srcElement:int, srcMip:int, dst:UnityEngine.Texture, dstElement:int, dstMip:int):void
---@overload fun(src:UnityEngine.Texture, srcElement:int, srcMip:int, srcX:int, srcY:int, srcWidth:int, srcHeight:int, dst:UnityEngine.Texture, dstElement:int, dstMip:int, dstX:int, dstY:int):void
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
function Graphics.CopyTexture(src, dst) end

---@overload fun(src:UnityEngine.Texture, srcElement:int, dst:UnityEngine.Texture, dstElement:int):bool
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@return bool
function Graphics.ConvertTexture(src, dst) end

---@overload fun():UnityEngine.Rendering.GraphicsFence
---@param stage UnityEngine.Rendering.SynchronisationStage
---@return UnityEngine.Rendering.GraphicsFence
function Graphics.CreateAsyncGraphicsFence(stage) end

---@param fenceType UnityEngine.Rendering.GraphicsFenceType
---@param stage UnityEngine.Rendering.SynchronisationStageFlags
---@return UnityEngine.Rendering.GraphicsFence
function Graphics.CreateGraphicsFence(fenceType, stage) end

---@overload fun(fence:UnityEngine.Rendering.GraphicsFence, stage:UnityEngine.Rendering.SynchronisationStage):void
---@param fence UnityEngine.Rendering.GraphicsFence
function Graphics.WaitOnAsyncGraphicsFence(fence) end

---@param source UnityEngine.GraphicsBuffer
---@param dest UnityEngine.GraphicsBuffer
function Graphics.CopyBuffer(source, dest) end

---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int, mat:UnityEngine.Material, pass:int):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int, mat:UnityEngine.Material, pass:int):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material, pass:int):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int, color:UnityEngine.Color, mat:UnityEngine.Material):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int, color:UnityEngine.Color):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int, mat:UnityEngine.Material):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int, mat:UnityEngine.Material):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:int, rightBorder:int, topBorder:int, bottomBorder:int):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material):void
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture):void
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
---@param sourceRect UnityEngine.Rect
---@param leftBorder int
---@param rightBorder int
---@param topBorder int
---@param bottomBorder int
---@param color UnityEngine.Color
---@param mat UnityEngine.Material
---@param pass int
function Graphics.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, color, mat, pass) end

---@param rparams UnityEngine.RenderParams
---@param mesh UnityEngine.Mesh
---@param submeshIndex int
---@param objectToWorld UnityEngine.Matrix4x4
---@param prevObjectToWorld System.Nullable
function Graphics.RenderMesh(rparams, mesh, submeshIndex, objectToWorld, prevObjectToWorld) end

---@param rparams UnityEngine.RenderParams
---@param mesh UnityEngine.Mesh
---@param commandBuffer UnityEngine.GraphicsBuffer
---@param commandCount int
---@param startCommand int
function Graphics.RenderMeshIndirect(rparams, mesh, commandBuffer, commandCount, startCommand) end

---@param rparams UnityEngine.RenderParams
---@param mesh UnityEngine.Mesh
---@param submeshIndex int
---@param instanceCount int
function Graphics.RenderMeshPrimitives(rparams, mesh, submeshIndex, instanceCount) end

---@param rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param vertexCount int
---@param instanceCount int
function Graphics.RenderPrimitives(rparams, topology, vertexCount, instanceCount) end

---@param rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param indexCount int
---@param startIndex int
---@param instanceCount int
function Graphics.RenderPrimitivesIndexed(rparams, topology, indexBuffer, indexCount, startIndex, instanceCount) end

---@param rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param commandBuffer UnityEngine.GraphicsBuffer
---@param commandCount int
---@param startCommand int
function Graphics.RenderPrimitivesIndirect(rparams, topology, commandBuffer, commandCount, startCommand) end

---@param rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param commandBuffer UnityEngine.GraphicsBuffer
---@param commandCount int
---@param startCommand int
function Graphics.RenderPrimitivesIndexedIndirect(rparams, topology, indexBuffer, commandBuffer, commandCount, startCommand) end

---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, materialIndex:int):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4):void
---@param mesh UnityEngine.Mesh
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param materialIndex int
function Graphics.DrawMeshNow(mesh, position, rotation, materialIndex) end

---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, probeAnchor:UnityEngine.Transform, useLightProbes:bool):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:bool, receiveShadows:bool, useLightProbes:bool):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, probeAnchor:UnityEngine.Transform, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:bool, receiveShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, probeAnchor:UnityEngine.Transform):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:bool, receiveShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, probeAnchor:UnityEngine.Transform):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, probeAnchor:UnityEngine.Transform, useLightProbes:bool):void
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:int, camera:UnityEngine.Camera, submeshIndex:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, probeAnchor:UnityEngine.Transform, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):void
---@param mesh UnityEngine.Mesh
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param material UnityEngine.Material
---@param layer int
---@param camera UnityEngine.Camera
---@param submeshIndex int
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows bool
---@param receiveShadows bool
---@param useLightProbes bool
function Graphics.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, useLightProbes) end

---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[]):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int, properties:UnityEngine.MaterialPropertyBlock):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, matrices:table, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):void
---@param mesh UnityEngine.Mesh
---@param submeshIndex int
---@param material UnityEngine.Material
---@param matrices UnityEngine.Matrix4x4[]
---@param count int
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows bool
---@param layer int
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
function Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume) end

---@param mesh UnityEngine.Mesh
---@param submeshIndex int
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param count int
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows bool
---@param layer int
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
function Graphics.DrawMeshInstancedProcedural(mesh, submeshIndex, material, bounds, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume) end

---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.GraphicsBuffer, argsOffset:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):void
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:int, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.GraphicsBuffer, argsOffset:int, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage):void
---@param mesh UnityEngine.Mesh
---@param submeshIndex int
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset int
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows bool
---@param layer int
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
function Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume) end

---@overload fun(topology:UnityEngine.MeshTopology, indexBuffer:UnityEngine.GraphicsBuffer, indexCount:int, instanceCount:int):void
---@param topology UnityEngine.MeshTopology
---@param vertexCount int
---@param instanceCount int
function Graphics.DrawProceduralNow(topology, vertexCount, instanceCount) end

---@overload fun(topology:UnityEngine.MeshTopology, indexBuffer:UnityEngine.GraphicsBuffer, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:int):void
---@overload fun(topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.GraphicsBuffer, argsOffset:int):void
---@overload fun(topology:UnityEngine.MeshTopology, indexBuffer:UnityEngine.GraphicsBuffer, bufferWithArgs:UnityEngine.GraphicsBuffer, argsOffset:int):void
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset int
function Graphics.DrawProceduralIndirectNow(topology, bufferWithArgs, argsOffset) end

---@overload fun(material:UnityEngine.Material, bounds:UnityEngine.Bounds, topology:UnityEngine.MeshTopology, indexBuffer:UnityEngine.GraphicsBuffer, indexCount:int, instanceCount:int, camera:UnityEngine.Camera, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int):void
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param topology UnityEngine.MeshTopology
---@param vertexCount int
---@param instanceCount int
---@param camera UnityEngine.Camera
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows bool
---@param layer int
function Graphics.DrawProcedural(material, bounds, topology, vertexCount, instanceCount, camera, properties, castShadows, receiveShadows, layer) end

---@overload fun(material:UnityEngine.Material, bounds:UnityEngine.Bounds, topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.GraphicsBuffer, argsOffset:int, camera:UnityEngine.Camera, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int):void
---@overload fun(material:UnityEngine.Material, bounds:UnityEngine.Bounds, topology:UnityEngine.MeshTopology, indexBuffer:UnityEngine.GraphicsBuffer, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:int, camera:UnityEngine.Camera, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int):void
---@overload fun(material:UnityEngine.Material, bounds:UnityEngine.Bounds, topology:UnityEngine.MeshTopology, indexBuffer:UnityEngine.GraphicsBuffer, bufferWithArgs:UnityEngine.GraphicsBuffer, argsOffset:int, camera:UnityEngine.Camera, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:bool, layer:int):void
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset int
---@param camera UnityEngine.Camera
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows bool
---@param layer int
function Graphics.DrawProceduralIndirect(material, bounds, topology, bufferWithArgs, argsOffset, camera, properties, castShadows, receiveShadows, layer) end

---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, sourceDepthSlice:int, destDepthSlice:int):void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2):void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2, sourceDepthSlice:int, destDepthSlice:int):void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material, pass:int):void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material, pass:int, destDepthSlice:int):void
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material):void
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material, pass:int):void
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material, pass:int, destDepthSlice:int):void
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material):void
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
function Graphics.Blit(source, dest) end

---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material, destDepthSlice:int, offsets:UnityEngine.Vector2[]):void
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
---@param mat UnityEngine.Material
---@param offsets UnityEngine.Vector2[]
function Graphics.BlitMultiTap(source, dest, mat, offsets) end

UnityEngine.Graphics = Graphics
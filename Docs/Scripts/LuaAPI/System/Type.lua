---@class System.Type : System.Reflection.MemberInfo
---@field IsSerializable bool
---@field ContainsGenericParameters bool
---@field IsVisible bool
---@field MemberType System.Reflection.MemberTypes
---@field Namespace System.String
---@field AssemblyQualifiedName System.String
---@field FullName System.String
---@field Assembly System.Reflection.Assembly
---@field Module System.Reflection.Module
---@field IsNested bool
---@field DeclaringType System.Type
---@field DeclaringMethod System.Reflection.MethodBase
---@field ReflectedType System.Type
---@field UnderlyingSystemType System.Type
---@field IsTypeDefinition bool
---@field IsArray bool
---@field IsByRef bool
---@field IsPointer bool
---@field IsConstructedGenericType bool
---@field IsGenericParameter bool
---@field IsGenericTypeParameter bool
---@field IsGenericMethodParameter bool
---@field IsGenericType bool
---@field IsGenericTypeDefinition bool
---@field IsVariableBoundArray bool
---@field IsByRefLike bool
---@field HasElementType bool
---@field GenericTypeArguments System.Type[]
---@field GenericParameterPosition int
---@field GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field Attributes System.Reflection.TypeAttributes
---@field IsAbstract bool
---@field IsImport bool
---@field IsSealed bool
---@field IsSpecialName bool
---@field IsClass bool
---@field IsNestedAssembly bool
---@field IsNestedFamANDAssem bool
---@field IsNestedFamily bool
---@field IsNestedFamORAssem bool
---@field IsNestedPrivate bool
---@field IsNestedPublic bool
---@field IsNotPublic bool
---@field IsPublic bool
---@field IsAutoLayout bool
---@field IsExplicitLayout bool
---@field IsLayoutSequential bool
---@field IsAnsiClass bool
---@field IsAutoClass bool
---@field IsUnicodeClass bool
---@field IsCOMObject bool
---@field IsContextful bool
---@field IsCollectible bool
---@field IsEnum bool
---@field IsMarshalByRef bool
---@field IsPrimitive bool
---@field IsValueType bool
---@field IsSignatureType bool
---@field IsSecurityCritical bool
---@field IsSecuritySafeCritical bool
---@field IsSecurityTransparent bool
---@field StructLayoutAttribute System.Runtime.InteropServices.StructLayoutAttribute
---@field TypeInitializer System.Reflection.ConstructorInfo
---@field TypeHandle System.RuntimeTypeHandle
---@field GUID System.Guid
---@field BaseType System.Type
---@field DefaultBinder System.Reflection.Binder
---@field IsInterface bool
---@field Delimiter char
---@field EmptyTypes System.Type[]
---@field Missing System.Object
---@field FilterAttribute System.Reflection.MemberFilter
---@field FilterName System.Reflection.MemberFilter
---@field FilterNameIgnoreCase System.Reflection.MemberFilter
local Type = {}

---@param value System.Object
---@return bool
function Type:IsEnumDefined(value) end

---@param value System.Object
---@return System.String
function Type:GetEnumName(value) end

---@return string[]
function Type:GetEnumNames() end

---@param filter System.Reflection.TypeFilter
---@param filterCriteria System.Object
---@return System.Type[]
function Type:FindInterfaces(filter, filterCriteria) end

---@param memberType System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@param filter System.Reflection.MemberFilter
---@param filterCriteria System.Object
---@return System.Reflection.MemberInfo[]
function Type:FindMembers(memberType, bindingAttr, filter, filterCriteria) end

---@param c System.Type
---@return bool
function Type:IsSubclassOf(c) end

---@param c System.Type
---@return bool
function Type:IsAssignableFrom(c) end

---@overload fun(typeName:System.String, throwOnError:bool, ignoreCase:bool):System.Type
---@overload fun(typeName:System.String, throwOnError:bool):System.Type
---@overload fun(typeName:System.String):System.Type
---@overload fun(typeName:System.String, assemblyResolver:System.Func, typeResolver:System.Func):System.Type
---@overload fun(typeName:System.String, assemblyResolver:System.Func, typeResolver:System.Func, throwOnError:bool):System.Type
---@overload fun(typeName:System.String, assemblyResolver:System.Func, typeResolver:System.Func, throwOnError:bool, ignoreCase:bool):System.Type
---@return System.Type
function Type:GetType() end

---@return System.Type
function Type:GetElementType() end

---@return int
function Type:GetArrayRank() end

---@return System.Type
function Type:GetGenericTypeDefinition() end

---@return System.Type[]
function Type:GetGenericArguments() end

---@return System.Type[]
function Type:GetGenericParameterConstraints() end

---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.ConstructorInfo
---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.ConstructorInfo
---@param types System.Type[]
---@return System.Reflection.ConstructorInfo
function Type:GetConstructor(types) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.ConstructorInfo[]
---@return System.Reflection.ConstructorInfo[]
function Type:GetConstructors() end

---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo
---@param name System.String
---@return System.Reflection.EventInfo
function Type:GetEvent(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.EventInfo[]
---@return System.Reflection.EventInfo[]
function Type:GetEvents() end

---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.FieldInfo
---@param name System.String
---@return System.Reflection.FieldInfo
function Type:GetField(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.FieldInfo[]
---@return System.Reflection.FieldInfo[]
function Type:GetFields() end

---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.MemberInfo[]
---@overload fun(name:System.String, type:System.Reflection.MemberTypes, bindingAttr:System.Reflection.BindingFlags):System.Reflection.MemberInfo[]
---@param name System.String
---@return System.Reflection.MemberInfo[]
function Type:GetMember(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.MemberInfo[]
---@return System.Reflection.MemberInfo[]
function Type:GetMembers() end

---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.MethodInfo
---@overload fun(name:System.String, types:System.Type[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, genericParameterCount:int, types:System.Type[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, genericParameterCount:int, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, genericParameterCount:int, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@overload fun(name:System.String, genericParameterCount:int, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.MethodInfo
---@param name System.String
---@return System.Reflection.MethodInfo
function Type:GetMethod(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.MethodInfo[]
---@return System.Reflection.MethodInfo[]
function Type:GetMethods() end

---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Type
---@param name System.String
---@return System.Type
function Type:GetNestedType(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Type[]
---@return System.Type[]
function Type:GetNestedTypes() end

---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags):System.Reflection.PropertyInfo
---@overload fun(name:System.String, returnType:System.Type):System.Reflection.PropertyInfo
---@overload fun(name:System.String, types:System.Type[]):System.Reflection.PropertyInfo
---@overload fun(name:System.String, returnType:System.Type, types:System.Type[]):System.Reflection.PropertyInfo
---@overload fun(name:System.String, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.PropertyInfo
---@overload fun(name:System.String, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):System.Reflection.PropertyInfo
---@param name System.String
---@return System.Reflection.PropertyInfo
function Type:GetProperty(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags):System.Reflection.PropertyInfo[]
---@return System.Reflection.PropertyInfo[]
function Type:GetProperties() end

---@return System.Reflection.MemberInfo[]
function Type:GetDefaultMembers() end

---@param o System.Object
---@return System.RuntimeTypeHandle
function Type.GetTypeHandle(o) end

---@param args object[]
---@return System.Type[]
function Type.GetTypeArray(args) end

---@param type System.Type
---@return System.TypeCode
function Type.GetTypeCode(type) end

---@overload fun(clsid:System.Guid, throwOnError:bool):System.Type
---@overload fun(clsid:System.Guid, server:System.String):System.Type
---@overload fun(clsid:System.Guid, server:System.String, throwOnError:bool):System.Type
---@param clsid System.Guid
---@return System.Type
function Type.GetTypeFromCLSID(clsid) end

---@overload fun(progID:System.String, throwOnError:bool):System.Type
---@overload fun(progID:System.String, server:System.String):System.Type
---@overload fun(progID:System.String, server:System.String, throwOnError:bool):System.Type
---@param progID System.String
---@return System.Type
function Type.GetTypeFromProgID(progID) end

---@overload fun(name:System.String, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:System.Object, args:object[], culture:System.Globalization.CultureInfo):System.Object
---@overload fun(name:System.String, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:System.Object, args:object[], modifiers:System.Reflection.ParameterModifier[], culture:System.Globalization.CultureInfo, namedParameters:string[]):System.Object
---@param name System.String
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args object[]
---@return System.Object
function Type:InvokeMember(name, invokeAttr, binder, target, args) end

---@overload fun(name:System.String, ignoreCase:bool):System.Type
---@param name System.String
---@return System.Type
function Type:GetInterface(name) end

---@return System.Type[]
function Type:GetInterfaces() end

---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function Type:GetInterfaceMap(interfaceType) end

---@param o System.Object
---@return bool
function Type:IsInstanceOfType(o) end

---@param other System.Type
---@return bool
function Type:IsEquivalentTo(other) end

---@return System.Type
function Type:GetEnumUnderlyingType() end

---@return System.Array
function Type:GetEnumValues() end

---@overload fun(rank:int):System.Type
---@return System.Type
function Type:MakeArrayType() end

---@return System.Type
function Type:MakeByRefType() end

---@param typeArguments System.Type[]
---@return System.Type
function Type:MakeGenericType(typeArguments) end

---@return System.Type
function Type:MakePointerType() end

---@param genericTypeDefinition System.Type
---@param typeArguments System.Type[]
---@return System.Type
function Type.MakeGenericSignatureType(genericTypeDefinition, typeArguments) end

---@param position int
---@return System.Type
function Type.MakeGenericMethodParameter(position) end

---@return System.String
function Type:ToString() end

---@overload fun(o:System.Type):bool
---@param o System.Object
---@return bool
function Type:Equals(o) end

---@return int
function Type:GetHashCode() end

---@param handle System.RuntimeTypeHandle
---@return System.Type
function Type.GetTypeFromHandle(handle) end

---@param left System.Type
---@param right System.Type
---@return bool
function Type.op_Equality(left, right) end

---@param left System.Type
---@param right System.Type
---@return bool
function Type.op_Inequality(left, right) end

---@param typeName System.String
---@param throwIfNotFound bool
---@param ignoreCase bool
---@return System.Type
function Type.ReflectionOnlyGetType(typeName, throwIfNotFound, ignoreCase) end

System.Type = Type
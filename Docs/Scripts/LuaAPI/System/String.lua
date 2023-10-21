---@class System.String : System.Object
---@field Length int
---@field Empty System.String
local String = {}

---@overload fun(strA:System.String, strB:System.String, ignoreCase:bool):int
---@overload fun(strA:System.String, strB:System.String, comparisonType:System.StringComparison):int
---@overload fun(strA:System.String, strB:System.String, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions):int
---@overload fun(strA:System.String, strB:System.String, ignoreCase:bool, culture:System.Globalization.CultureInfo):int
---@overload fun(strA:System.String, indexA:int, strB:System.String, indexB:int, length:int):int
---@overload fun(strA:System.String, indexA:int, strB:System.String, indexB:int, length:int, ignoreCase:bool):int
---@overload fun(strA:System.String, indexA:int, strB:System.String, indexB:int, length:int, ignoreCase:bool, culture:System.Globalization.CultureInfo):int
---@overload fun(strA:System.String, indexA:int, strB:System.String, indexB:int, length:int, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions):int
---@overload fun(strA:System.String, indexA:int, strB:System.String, indexB:int, length:int, comparisonType:System.StringComparison):int
---@param strA System.String
---@param strB System.String
---@return int
function String.Compare(strA, strB) end

---@overload fun(strA:System.String, indexA:int, strB:System.String, indexB:int, length:int):int
---@param strA System.String
---@param strB System.String
---@return int
function String.CompareOrdinal(strA, strB) end

---@overload fun(strB:System.String):int
---@param value System.Object
---@return int
function String:CompareTo(value) end

---@overload fun(value:System.String, comparisonType:System.StringComparison):bool
---@overload fun(value:System.String, ignoreCase:bool, culture:System.Globalization.CultureInfo):bool
---@overload fun(value:char):bool
---@param value System.String
---@return bool
function String:EndsWith(value) end

---@overload fun(value:System.String):bool
---@overload fun(value:System.String, comparisonType:System.StringComparison):bool
---@overload fun(a:System.String, b:System.String):bool
---@overload fun(a:System.String, b:System.String, comparisonType:System.StringComparison):bool
---@param obj System.Object
---@return bool
function String:Equals(obj) end

---@param a System.String
---@param b System.String
---@return bool
function String.op_Equality(a, b) end

---@param a System.String
---@param b System.String
---@return bool
function String.op_Inequality(a, b) end

---@overload fun(comparisonType:System.StringComparison):int
---@return int
function String:GetHashCode() end

---@overload fun(value:System.String, comparisonType:System.StringComparison):bool
---@overload fun(value:System.String, ignoreCase:bool, culture:System.Globalization.CultureInfo):bool
---@overload fun(value:char):bool
---@param value System.String
---@return bool
function String:StartsWith(value) end

---@param value System.String
---@return System.ReadOnlySpan
function String.op_Implicit(value) end

---@return System.Object
function String:Clone() end

---@param str System.String
---@return System.String
function String.Copy(str) end

---@param sourceIndex int
---@param destination char[]
---@param destinationIndex int
---@param count int
function String:CopyTo(sourceIndex, destination, destinationIndex, count) end

---@overload fun(startIndex:int, length:int):char[]
---@return char[]
function String:ToCharArray() end

---@param value System.String
---@return bool
function String.IsNullOrEmpty(value) end

---@param value System.String
---@return bool
function String.IsNullOrWhiteSpace(value) end

---@overload fun(provider:System.IFormatProvider):System.String
---@return System.String
function String:ToString() end

---@return System.CharEnumerator
function String:GetEnumerator() end

---@return System.TypeCode
function String:GetTypeCode() end

---@overload fun(normalizationForm:System.Text.NormalizationForm):bool
---@return bool
function String:IsNormalized() end

---@overload fun(normalizationForm:System.Text.NormalizationForm):System.String
---@return System.String
function String:Normalize() end

---@overload fun(arg0:System.Object, arg1:System.Object):System.String
---@overload fun(arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String
---@overload fun(args:object[]):System.String
---@overload fun(values:System.Collections.Generic.IEnumerable):System.String
---@overload fun(str0:System.String, str1:System.String):System.String
---@overload fun(str0:System.String, str1:System.String, str2:System.String):System.String
---@overload fun(str0:System.String, str1:System.String, str2:System.String, str3:System.String):System.String
---@overload fun(values:string[]):System.String
---@overload fun(arg0:System.Object, arg1:System.Object, arg2:System.Object, arg3:System.Object):System.String
---@param arg0 System.Object
---@return System.String
function String.Concat(arg0) end

---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object):System.String
---@overload fun(format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String
---@overload fun(format:System.String, args:object[]):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object, arg1:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, arg0:System.Object, arg1:System.Object, arg2:System.Object):System.String
---@overload fun(provider:System.IFormatProvider, format:System.String, args:object[]):System.String
---@param format System.String
---@param arg0 System.Object
---@return System.String
function String.Format(format, arg0) end

---@param startIndex int
---@param value System.String
---@return System.String
function String:Insert(startIndex, value) end

---@overload fun(separator:char, values:object[]):System.String
---@overload fun(separator:char, value:string[], startIndex:int, count:int):System.String
---@overload fun(separator:System.String, value:string[]):System.String
---@overload fun(separator:System.String, values:object[]):System.String
---@overload fun(separator:System.String, values:System.Collections.Generic.IEnumerable):System.String
---@overload fun(separator:System.String, value:string[], startIndex:int, count:int):System.String
---@param separator char
---@param value string[]
---@return System.String
function String.Join(separator, value) end

---@overload fun(totalWidth:int, paddingChar:char):System.String
---@param totalWidth int
---@return System.String
function String:PadLeft(totalWidth) end

---@overload fun(totalWidth:int, paddingChar:char):System.String
---@param totalWidth int
---@return System.String
function String:PadRight(totalWidth) end

---@overload fun(startIndex:int):System.String
---@param startIndex int
---@param count int
---@return System.String
function String:Remove(startIndex, count) end

---@overload fun(oldValue:System.String, newValue:System.String, comparisonType:System.StringComparison):System.String
---@overload fun(oldChar:char, newChar:char):System.String
---@overload fun(oldValue:System.String, newValue:System.String):System.String
---@param oldValue System.String
---@param newValue System.String
---@param ignoreCase bool
---@param culture System.Globalization.CultureInfo
---@return System.String
function String:Replace(oldValue, newValue, ignoreCase, culture) end

---@overload fun(separator:char, count:int, options:System.StringSplitOptions):string[]
---@overload fun(separator:char[]):string[]
---@overload fun(separator:char[], count:int):string[]
---@overload fun(separator:char[], options:System.StringSplitOptions):string[]
---@overload fun(separator:char[], count:int, options:System.StringSplitOptions):string[]
---@overload fun(separator:System.String, options:System.StringSplitOptions):string[]
---@overload fun(separator:System.String, count:int, options:System.StringSplitOptions):string[]
---@overload fun(separator:string[], options:System.StringSplitOptions):string[]
---@overload fun(separator:string[], count:int, options:System.StringSplitOptions):string[]
---@param separator char
---@param options System.StringSplitOptions
---@return string[]
function String:Split(separator, options) end

---@overload fun(startIndex:int, length:int):System.String
---@param startIndex int
---@return System.String
function String:Substring(startIndex) end

---@overload fun(culture:System.Globalization.CultureInfo):System.String
---@return System.String
function String:ToLower() end

---@return System.String
function String:ToLowerInvariant() end

---@overload fun(culture:System.Globalization.CultureInfo):System.String
---@return System.String
function String:ToUpper() end

---@return System.String
function String:ToUpperInvariant() end

---@overload fun(trimChar:char):System.String
---@overload fun(trimChars:char[]):System.String
---@return System.String
function String:Trim() end

---@overload fun(trimChar:char):System.String
---@overload fun(trimChars:char[]):System.String
---@return System.String
function String:TrimStart() end

---@overload fun(trimChar:char):System.String
---@overload fun(trimChars:char[]):System.String
---@return System.String
function String:TrimEnd() end

---@overload fun(value:System.String, comparisonType:System.StringComparison):bool
---@overload fun(value:char):bool
---@overload fun(value:char, comparisonType:System.StringComparison):bool
---@param value System.String
---@return bool
function String:Contains(value) end

---@overload fun(value:char, startIndex:int):int
---@overload fun(value:char, comparisonType:System.StringComparison):int
---@overload fun(value:char, startIndex:int, count:int):int
---@overload fun(value:System.String):int
---@overload fun(value:System.String, startIndex:int):int
---@overload fun(value:System.String, startIndex:int, count:int):int
---@overload fun(value:System.String, comparisonType:System.StringComparison):int
---@overload fun(value:System.String, startIndex:int, comparisonType:System.StringComparison):int
---@overload fun(value:System.String, startIndex:int, count:int, comparisonType:System.StringComparison):int
---@param value char
---@return int
function String:IndexOf(value) end

---@overload fun(anyOf:char[], startIndex:int):int
---@overload fun(anyOf:char[], startIndex:int, count:int):int
---@param anyOf char[]
---@return int
function String:IndexOfAny(anyOf) end

---@overload fun(value:char, startIndex:int):int
---@overload fun(value:char, startIndex:int, count:int):int
---@overload fun(value:System.String):int
---@overload fun(value:System.String, startIndex:int):int
---@overload fun(value:System.String, startIndex:int, count:int):int
---@overload fun(value:System.String, comparisonType:System.StringComparison):int
---@overload fun(value:System.String, startIndex:int, comparisonType:System.StringComparison):int
---@overload fun(value:System.String, startIndex:int, count:int, comparisonType:System.StringComparison):int
---@param value char
---@return int
function String:LastIndexOf(value) end

---@overload fun(anyOf:char[], startIndex:int):int
---@overload fun(anyOf:char[], startIndex:int, count:int):int
---@param anyOf char[]
---@return int
function String:LastIndexOfAny(anyOf) end

---@param str System.String
---@return System.String
function String.Intern(str) end

---@param str System.String
---@return System.String
function String.IsInterned(str) end

System.String = String
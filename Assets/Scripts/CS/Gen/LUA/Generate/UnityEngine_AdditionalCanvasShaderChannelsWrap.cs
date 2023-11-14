﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UnityEngine_AdditionalCanvasShaderChannelsWrap
{
	public static void Register(LuaState L)
	{
		L.BeginEnum(typeof(UnityEngine.AdditionalCanvasShaderChannels));
		L.RegVar("None", get_None, null);
		L.RegVar("TexCoord1", get_TexCoord1, null);
		L.RegVar("TexCoord2", get_TexCoord2, null);
		L.RegVar("TexCoord3", get_TexCoord3, null);
		L.RegVar("Normal", get_Normal, null);
		L.RegVar("Tangent", get_Tangent, null);
		L.RegFunction("IntToEnum", IntToEnum);
		L.EndEnum();
		TypeTraits<UnityEngine.AdditionalCanvasShaderChannels>.Check = CheckType;
		StackTraits<UnityEngine.AdditionalCanvasShaderChannels>.Push = Push;
	}

	static void Push(IntPtr L, UnityEngine.AdditionalCanvasShaderChannels arg)
	{
		ToLua.Push(L, arg);
	}

	static bool CheckType(IntPtr L, int pos)
	{
		return TypeChecker.CheckEnumType(typeof(UnityEngine.AdditionalCanvasShaderChannels), L, pos);
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_None(IntPtr L)
	{
		ToLua.Push(L, UnityEngine.AdditionalCanvasShaderChannels.None);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_TexCoord1(IntPtr L)
	{
		ToLua.Push(L, UnityEngine.AdditionalCanvasShaderChannels.TexCoord1);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_TexCoord2(IntPtr L)
	{
		ToLua.Push(L, UnityEngine.AdditionalCanvasShaderChannels.TexCoord2);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_TexCoord3(IntPtr L)
	{
		ToLua.Push(L, UnityEngine.AdditionalCanvasShaderChannels.TexCoord3);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Normal(IntPtr L)
	{
		ToLua.Push(L, UnityEngine.AdditionalCanvasShaderChannels.Normal);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Tangent(IntPtr L)
	{
		ToLua.Push(L, UnityEngine.AdditionalCanvasShaderChannels.Tangent);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IntToEnum(IntPtr L)
	{
		int arg0 = (int)LuaDLL.lua_tonumber(L, 1);
		UnityEngine.AdditionalCanvasShaderChannels o = (UnityEngine.AdditionalCanvasShaderChannels)arg0;
		ToLua.Push(L, o);
		return 1;
	}
}

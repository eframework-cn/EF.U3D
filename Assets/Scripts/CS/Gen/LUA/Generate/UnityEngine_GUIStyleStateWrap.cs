﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UnityEngine_GUIStyleStateWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UnityEngine.GUIStyleState), typeof(System.Object));
		L.RegFunction("New", _CreateUnityEngine_GUIStyleState);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("background", get_background, set_background);
		L.RegVar("textColor", get_textColor, set_textColor);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateUnityEngine_GUIStyleState(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				UnityEngine.GUIStyleState obj = new UnityEngine.GUIStyleState();
				ToLua.PushSealed(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: UnityEngine.GUIStyleState.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_background(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.GUIStyleState obj = (UnityEngine.GUIStyleState)o;
			UnityEngine.Texture2D ret = obj.background;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index background on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_textColor(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.GUIStyleState obj = (UnityEngine.GUIStyleState)o;
			UnityEngine.Color ret = obj.textColor;
			ToLua.Push(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index textColor on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_background(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.GUIStyleState obj = (UnityEngine.GUIStyleState)o;
			UnityEngine.Texture2D arg0 = (UnityEngine.Texture2D)ToLua.CheckObject(L, 2, typeof(UnityEngine.Texture2D));
			obj.background = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index background on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_textColor(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.GUIStyleState obj = (UnityEngine.GUIStyleState)o;
			UnityEngine.Color arg0 = ToLua.ToColor(L, 2);
			obj.textColor = arg0;
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index textColor on a nil value");
		}
	}
}


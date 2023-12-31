﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class UnityEngine_UI_SpriteStateWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(UnityEngine.UI.SpriteState), null);
		L.RegFunction("Equals", Equals);
		L.RegFunction("New", _CreateUnityEngine_UI_SpriteState);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("highlightedSprite", get_highlightedSprite, set_highlightedSprite);
		L.RegVar("pressedSprite", get_pressedSprite, set_pressedSprite);
		L.RegVar("selectedSprite", get_selectedSprite, set_selectedSprite);
		L.RegVar("disabledSprite", get_disabledSprite, set_disabledSprite);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateUnityEngine_UI_SpriteState(IntPtr L)
	{
		UnityEngine.UI.SpriteState obj = new UnityEngine.UI.SpriteState();
		ToLua.PushValue(L, obj);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Equals(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 2);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)ToLua.CheckObject(L, 1, typeof(UnityEngine.UI.SpriteState));
			UnityEngine.UI.SpriteState arg0 = StackTraits<UnityEngine.UI.SpriteState>.Check(L, 2);
			bool o = obj.Equals(arg0);
			LuaDLL.lua_pushboolean(L, o);
			ToLua.SetBack(L, 1, obj);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_highlightedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite ret = obj.highlightedSprite;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index highlightedSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_pressedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite ret = obj.pressedSprite;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index pressedSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_selectedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite ret = obj.selectedSprite;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index selectedSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_disabledSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite ret = obj.disabledSprite;
			ToLua.PushSealed(L, ret);
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index disabledSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_highlightedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckObject(L, 2, typeof(UnityEngine.Sprite));
			obj.highlightedSprite = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index highlightedSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_pressedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckObject(L, 2, typeof(UnityEngine.Sprite));
			obj.pressedSprite = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index pressedSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_selectedSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckObject(L, 2, typeof(UnityEngine.Sprite));
			obj.selectedSprite = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index selectedSprite on a nil value");
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_disabledSprite(IntPtr L)
	{
		object o = null;

		try
		{
			o = ToLua.ToObject(L, 1);
			UnityEngine.UI.SpriteState obj = (UnityEngine.UI.SpriteState)o;
			UnityEngine.Sprite arg0 = (UnityEngine.Sprite)ToLua.CheckObject(L, 2, typeof(UnityEngine.Sprite));
			obj.disabledSprite = arg0;
			ToLua.SetBack(L, 1, obj);
			return 0;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e, o, "attempt to index disabledSprite on a nil value");
		}
	}
}


﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class EP_U3D_LIBRARY_SCENE_SceneManagerWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(EP.U3D.LIBRARY.SCENE.SceneManager), typeof(System.Object));
		L.RegFunction("Update", Update);
		L.RegFunction("Goto", Goto);
		L.RegFunction("New", _CreateEP_U3D_LIBRARY_SCENE_SceneManager);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.RegVar("Last", get_Last, set_Last);
		L.RegVar("Current", get_Current, set_Current);
		L.RegVar("Next", get_Next, set_Next);
		L.RegVar("OnSwap", get_OnSwap, set_OnSwap);
		L.RegFunction("SwapDelegate", EP_U3D_LIBRARY_SCENE_SceneManager_SwapDelegate);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateEP_U3D_LIBRARY_SCENE_SceneManager(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				EP.U3D.LIBRARY.SCENE.SceneManager obj = new EP.U3D.LIBRARY.SCENE.SceneManager();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: EP.U3D.LIBRARY.SCENE.SceneManager.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Update(IntPtr L)
	{
		try
		{
			ToLua.CheckArgsCount(L, 0);
			EP.U3D.LIBRARY.SCENE.SceneManager.Update();
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int Goto(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			EP.U3D.LIBRARY.SCENE.IScene arg0 = (EP.U3D.LIBRARY.SCENE.IScene)ToLua.CheckObject<EP.U3D.LIBRARY.SCENE.IScene>(L, 1);
			object[] arg1 = ToLua.ToParamsObject(L, 2, count - 1);
			EP.U3D.LIBRARY.SCENE.SceneManager.Goto(arg0, arg1);
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Last(IntPtr L)
	{
		try
		{
			ToLua.PushObject(L, EP.U3D.LIBRARY.SCENE.SceneManager.Last);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Current(IntPtr L)
	{
		try
		{
			ToLua.PushObject(L, EP.U3D.LIBRARY.SCENE.SceneManager.Current);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Next(IntPtr L)
	{
		try
		{
			ToLua.PushObject(L, EP.U3D.LIBRARY.SCENE.SceneManager.Next);
			return 1;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_OnSwap(IntPtr L)
	{
		ToLua.Push(L, new EventObject(typeof(EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate)));
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Last(IntPtr L)
	{
		try
		{
			EP.U3D.LIBRARY.SCENE.IScene arg0 = (EP.U3D.LIBRARY.SCENE.IScene)ToLua.CheckObject<EP.U3D.LIBRARY.SCENE.IScene>(L, 2);
			EP.U3D.LIBRARY.SCENE.SceneManager.Last = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Current(IntPtr L)
	{
		try
		{
			EP.U3D.LIBRARY.SCENE.IScene arg0 = (EP.U3D.LIBRARY.SCENE.IScene)ToLua.CheckObject<EP.U3D.LIBRARY.SCENE.IScene>(L, 2);
			EP.U3D.LIBRARY.SCENE.SceneManager.Current = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_Next(IntPtr L)
	{
		try
		{
			EP.U3D.LIBRARY.SCENE.IScene arg0 = (EP.U3D.LIBRARY.SCENE.IScene)ToLua.CheckObject<EP.U3D.LIBRARY.SCENE.IScene>(L, 2);
			EP.U3D.LIBRARY.SCENE.SceneManager.Next = arg0;
			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int set_OnSwap(IntPtr L)
	{
		try
		{
			EventObject arg0 = null;

			if (LuaDLL.lua_isuserdata(L, 2) != 0)
			{
				arg0 = (EventObject)ToLua.ToObject(L, 2);
			}
			else
			{
				return LuaDLL.luaL_throw(L, "The event 'EP.U3D.LIBRARY.SCENE.SceneManager.OnSwap' can only appear on the left hand side of += or -= when used outside of the type 'EP.U3D.LIBRARY.SCENE.SceneManager'");
			}

			if (arg0.op == EventOp.Add)
			{
				EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate ev = (EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate)arg0.func;
				EP.U3D.LIBRARY.SCENE.SceneManager.OnSwap += ev;
			}
			else if (arg0.op == EventOp.Sub)
			{
				EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate ev = (EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate)arg0.func;
				EP.U3D.LIBRARY.SCENE.SceneManager.OnSwap -= ev;
			}

			return 0;
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int EP_U3D_LIBRARY_SCENE_SceneManager_SwapDelegate(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);
			LuaFunction func = ToLua.CheckLuaFunction(L, 1);

			if (count == 1)
			{
				Delegate arg1 = DelegateTraits<EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate>.Create(func);
				ToLua.Push(L, arg1);
			}
			else
			{
				LuaTable self = ToLua.CheckLuaTable(L, 2);
				Delegate arg1 = DelegateTraits<EP.U3D.LIBRARY.SCENE.SceneManager.SwapDelegate>.Create(func, self);
				ToLua.Push(L, arg1);
			}
			return 1;
		}
		catch(Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}


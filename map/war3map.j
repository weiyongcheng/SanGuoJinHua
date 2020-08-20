globals
//globals from BzAPI:
constant boolean LIBRARY_BzAPI=true
//endglobals from BzAPI
//globals from DzAPI:
constant boolean LIBRARY_DzAPI=true
//endglobals from DzAPI
//globals from yaojingb:
constant boolean LIBRARY_yaojingb=true
//endglobals from yaojingb
    // User-defined
unit udg_mu= null
string udg_ms
integer udg_BHnum= 0
string udg_cds2
player udg_cdp= null
string udg_cds
integer udg_cdn= 0
integer udg_cdn2= 0
boolean udg_CDBUer= false
integer udg_UIframe1= 0
integer udg_UIframe2= 0
string udg_cds3
    // Generated
trigger gg_trg_BeginGame= null
trigger gg_trg_ChangeModol= null
trigger gg_trg_loadCDstr= null
trigger gg_trg_SaveCDstr= null
trigger gg_trg_SaveCDIngenter= null
trigger gg_trg_LoadCDIngenter= null
trigger gg_trg_LoadBuer= null


//JASSHelper struct globals:

endglobals
    native DzGetMouseTerrainX takes nothing returns real
    native DzGetMouseTerrainY takes nothing returns real
    native DzGetMouseTerrainZ takes nothing returns real
    native DzIsMouseOverUI takes nothing returns boolean
    native DzGetMouseX takes nothing returns integer
    native DzGetMouseY takes nothing returns integer
    native DzGetMouseXRelative takes nothing returns integer
    native DzGetMouseYRelative takes nothing returns integer
    native DzSetMousePos takes integer x, integer y returns nothing
    native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseWheelEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseMoveEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzGetTriggerKey takes nothing returns integer
    native DzGetWheelDelta takes nothing returns integer
    native DzIsKeyDown takes integer iKey returns boolean
    native DzGetTriggerKeyPlayer takes nothing returns player
    native DzGetWindowWidth takes nothing returns integer
    native DzGetWindowHeight takes nothing returns integer
    native DzGetWindowX takes nothing returns integer
    native DzGetWindowY takes nothing returns integer
    native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzIsWindowActive takes nothing returns boolean
    native DzDestructablePosition takes destructable d, real x, real y returns nothing
    native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing
    native DzExecuteFunc takes string funcName returns nothing
    native DzGetUnitUnderMouse takes nothing returns unit
    native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing
    native DzSetMemory takes integer address, real value returns nothing
    native DzSetUnitID takes unit whichUnit, integer id returns nothing
    native DzSetUnitModel takes unit whichUnit, string path returns nothing
    native DzSetWar3MapMap takes string map returns nothing
    native DzGetLocale takes nothing returns string
    native DzGetUnitNeededXP takes unit whichUnit, integer level returns integer
    native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
    native DzSyncData takes string prefix, string data returns nothing
    native DzGetTriggerSyncData takes nothing returns string
    native DzGetTriggerSyncPlayer takes nothing returns player
    native DzFrameHideInterface takes nothing returns nothing
    native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing
    native DzFrameGetPortrait takes nothing returns integer
    native DzFrameGetMinimap takes nothing returns integer
    native DzFrameGetCommandBarButton takes integer row, integer column returns integer
    native DzFrameGetHeroBarButton takes integer buttonId returns integer
    native DzFrameGetHeroHPBar takes integer buttonId returns integer
    native DzFrameGetHeroManaBar takes integer buttonId returns integer
    native DzFrameGetItemBarButton takes integer buttonId returns integer
    native DzFrameGetMinimapButton takes integer buttonId returns integer
    native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer
    native DzFrameGetTooltip takes nothing returns integer
    native DzFrameGetChatMessage takes nothing returns integer
    native DzFrameGetUnitMessage takes nothing returns integer
    native DzFrameGetTopMessage takes nothing returns integer
    native DzGetColor takes integer r, integer g, integer b, integer a returns integer
    native DzFrameSetUpdateCallback takes string func returns nothing
    native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
    native DzFrameShow takes integer frame, boolean enable returns nothing
    native DzCreateFrame takes string frame, integer parent, integer id returns integer
    native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer
    native DzDestroyFrame takes integer frame returns nothing
    native DzLoadToc takes string fileName returns nothing
    native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
    native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing
    native DzFrameClearAllPoints takes integer frame returns nothing
    native DzFrameSetEnable takes integer name, boolean enable returns nothing
    native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing
    native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
    native DzGetTriggerUIEventPlayer takes nothing returns player
    native DzGetTriggerUIEventFrame takes nothing returns integer
    native DzFrameFindByName takes string name, integer id returns integer
    native DzSimpleFrameFindByName takes string name, integer id returns integer
    native DzSimpleFontStringFindByName takes string name, integer id returns integer
    native DzSimpleTextureFindByName takes string name, integer id returns integer
    native DzGetGameUI takes nothing returns integer
    native DzClickFrame takes integer frame returns nothing
    native DzSetCustomFovFix takes real value returns nothing
    native DzEnableWideScreen takes boolean enable returns nothing
    native DzFrameSetText takes integer frame, string text returns nothing
    native DzFrameGetText takes integer frame returns string
    native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing
    native DzFrameGetTextSizeLimit takes integer frame returns integer
    native DzFrameSetTextColor takes integer frame, integer color returns nothing
    native DzGetMouseFocus takes nothing returns integer
    native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean
    native DzFrameSetFocus takes integer frame, boolean enable returns boolean
    native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
    native DzFrameGetEnable takes integer frame returns boolean
    native DzFrameSetAlpha takes integer frame, integer alpha returns nothing
    native DzFrameGetAlpha takes integer frame returns integer
    native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing
    native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing
    native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing
    native DzFrameSetScale takes integer frame, real scale returns nothing
    native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing
    native DzFrameCageMouse takes integer frame, boolean enable returns nothing
    native DzFrameGetValue takes integer frame returns real
    native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing
    native DzFrameSetStepValue takes integer frame, real step returns nothing
    native DzFrameSetValue takes integer frame, real value returns nothing
    native DzFrameSetSize takes integer frame, real w, real h returns nothing
    native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer
    native DzFrameSetVertexColor takes integer frame, integer color returns nothing
    native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
    native DzFrameSetPriority takes integer frame, integer priority returns nothing
    native DzFrameSetParent takes integer frame, integer parent returns nothing
    native DzFrameGetHeight takes integer frame returns real
    native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing
    native DzFrameGetParent takes integer frame returns integer
    native DzFrameSetTextAlignment takes integer frame, integer align returns nothing
    native DzFrameGetName takes integer frame returns string
	native DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
	native DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
	native DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_IsRPGLadder takes nothing returns boolean
	native DzAPI_Map_GetGameStartTime takes nothing returns integer
	native DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetMatchType takes nothing returns integer
	native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
	native DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
	native DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
	native DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
	native DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
	native DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
	native DzAPI_Map_GetGuildName takes player whichPlayer returns string
	native DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
	native DzAPI_Map_IsRPGLobby takes nothing returns boolean
	native DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
	native DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetActivityData takes nothing returns string
	native DzAPI_Map_GetMapConfig takes string key returns string
	native DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
	native DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
	native DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
	native DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
	native DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
	native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
	native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer
	native RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer
	native RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean
	native RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string
	native RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real
	native DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer


//library BzAPI:
    //hardware




























    //plus











    //sync




    //gui








































































    function DzTriggerRegisterMouseEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterKeyEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseMoveEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseWheelEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterWindowResizeEvent(trg, true, null)
    endfunction
    function DzF2I takes integer i returns integer
        return i
    endfunction
    function DzI2F takes integer i returns integer
        return i
    endfunction
    function DzK2I takes integer i returns integer
        return i
    endfunction
    function DzI2K takes integer i returns integer
        return i
    endfunction

//library BzAPI ends
//library DzAPI:

































 function DzAPI_Map_IsPlatformVIP takes player whichPlayer returns boolean
		return DzAPI_Map_GetPlatformVIP(whichPlayer) > 0
	endfunction
 function DzAPI_Map_Global_GetStoreString takes string key returns string
		return RequestExtraStringData(36, GetLocalPlayer(), key, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_Global_StoreString takes string key,string value returns nothing
		call RequestExtraStringData(37, GetLocalPlayer(), key, value, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_Global_ChangeMsg takes trigger trig returns nothing
		call DzTriggerRegisterSyncData(trig, "DZGAU", true)
	endfunction
 function DzAPI_Map_ServerArchive takes player whichPlayer,string key returns string
	    return RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_SaveServerArchive takes player whichPlayer,string key,string value returns nothing
	    call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_IsRPGQuickMatch takes nothing returns boolean
		return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_GetMallItemCount takes player whichPlayer,string key returns integer
		return RequestExtraIntegerData(41, whichPlayer, key, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_ConsumeMallItem takes player whichPlayer,string key,integer count returns boolean
		return RequestExtraBooleanData(42, whichPlayer, key, null, false, count, 0, 0)
	endfunction
 function DzAPI_Map_EnablePlatformSettings takes player whichPlayer,integer option,boolean enable returns boolean
		return RequestExtraBooleanData(43, whichPlayer, null, null, enable, option, 0, 0)
	endfunction
 function DzAPI_Map_IsBuyReforged takes player whichPlayer returns boolean
		return RequestExtraBooleanData(44, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
		if ( DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 ) then
			return true
		else
			return false
		endif
	endfunction
 function DzAPI_Map_StoreIntegerEX takes player whichPlayer,string key,integer value returns nothing
		set key="I" + key
		call RequestExtraBooleanData(39, whichPlayer, key, I2S(value), false, 0, 0, 0)
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_GetStoredIntegerEX takes player whichPlayer,string key returns integer
  local integer value
		set key="I" + key
		set value=S2I(RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0))
		set key=null
		set whichPlayer=null
		return value
	endfunction
 function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
		set key="I" + key
		call DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
  local integer value
		set key="I" + key
		set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
		set key=null
		set whichPlayer=null
		return value
	endfunction
        function DzAPI_Map_CommentTotalCount1 takes player whichPlayer,integer id returns integer
    		return RequestExtraIntegerData(52, whichPlayer, null, null, false, id, 0, 0)
	endfunction
 function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
		set key="R" + key
		call DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
  local real value
		set key="R" + key
		set value=S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
		set key=null
		set whichPlayer=null
		return value
	endfunction
 function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
		set key="B" + key
		if ( value ) then
			call DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
		else
			call DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
		endif
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
  local boolean value
		set key="B" + key
		set key=DzAPI_Map_GetServerValue(whichPlayer, key)
		if ( key == "1" ) then
			set value=true
		else
			set value=false
		endif
		set key=null
		set whichPlayer=null
		return value
	endfunction
 function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
		set key="S" + key
		call DzAPI_Map_SaveServerValue(whichPlayer, key, value)
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
		return DzAPI_Map_GetServerValue(whichPlayer, "S" + key)
	endfunction
 function DzAPI_Map_StoreStringEX takes player whichPlayer,string key,string value returns nothing
		set key="S" + key
		call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_GetStoredStringEX takes player whichPlayer,string key returns string
		return RequestExtraStringData(38, whichPlayer, "S" + key, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
  local integer value
		set key="I" + key
		set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
		set key=null
		set whichPlayer=null
		return value
	endfunction
 function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
  local integer value
		set key="I" + key
		set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
		set key=null
		set whichPlayer=null
		return value
	endfunction
 function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
		call DzAPI_Map_SaveServerValue(whichPlayer, key, null)
		set key=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	endfunction
 function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
		if ( value == 0 ) then
			//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
		else
			call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
		endif
	endfunction
 function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
		call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer , key , GetUnitTypeId(value))
	endfunction
 function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
		if ( value == 0 ) then
			//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
		else
			call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
		endif
	endfunction
 function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
  local string S
		if ( value == 0 ) then
			set S="0"
		else
			set S=I2S(value)
			call DzAPI_Map_Ladder_SetStat(whichPlayer, key, S)
		endif
		//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
		set S=null
		set whichPlayer=null
	endfunction
 function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
		call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer , key , GetItemTypeId(value))
	endfunction
 function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
		if ( value ) then
			call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
		else
			call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
		endif
	endfunction
 function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
		call DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
	endfunction
 function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
		call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
	endfunction
 function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
		call DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
	endfunction
 function DzAPI_Map_PlayedGames takes player whichPlayer returns integer
	    return RequestExtraIntegerData(45, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_CommentCount takes player whichPlayer returns integer
	    return RequestExtraIntegerData(46, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_FriendCount takes player whichPlayer returns integer
	    return RequestExtraIntegerData(47, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_IsConnoisseur takes player whichPlayer returns boolean
	    return RequestExtraBooleanData(48, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_IsBattleNetAccount takes player whichPlayer returns boolean
	    return RequestExtraBooleanData(49, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_IsAuthor takes player whichPlayer returns boolean
	    return RequestExtraBooleanData(50, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_CommentTotalCount takes nothing returns integer
	    return RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0)
	endfunction
 function DzAPI_Map_Statistics takes player whichPlayer,string eventKey,string eventType,integer value returns nothing
	    call RequestExtraBooleanData(34, whichPlayer, eventKey, "", false, value, 0, 0)
	endfunction
 function DzAPI_Map_Returns takes player whichPlayer,integer label returns boolean
	    return RequestExtraBooleanData(53, whichPlayer, null, null, false, label, 0, 0)
	endfunction
 function DzAPI_Map_ContinuousCount takes player whichPlayer,integer id returns integer
	    return RequestExtraIntegerData(54, whichPlayer, null, null, false, id, 0, 0)
	endfunction
	// IsPlayer,                      //是否为玩家
 function DzAPI_Map_IsPlayer takes player whichPlayer returns boolean
	    return RequestExtraBooleanData(55, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
	// MapsTotalPlayed,               //所有地图的总游戏时长
 function DzAPI_Map_MapsTotalPlayed takes player whichPlayer returns integer
	    return RequestExtraIntegerData(56, whichPlayer, null, null, false, 0, 0, 0)
	endfunction
	// MapsLevel,                    //指定地图的地图等级
 function DzAPI_Map_MapsLevel takes player whichPlayer,integer mapId returns integer
	    return RequestExtraIntegerData(57, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction
	// MapsConsumeGold,              //所有地图的金币消耗
 function DzAPI_Map_MapsConsumeGold takes player whichPlayer,integer mapId returns integer
	    return RequestExtraIntegerData(58, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction
	// MapsConsumeLumber,            //所有地图的木材消耗
 function DzAPI_Map_MapsConsumeLumber takes player whichPlayer,integer mapId returns integer
	    return RequestExtraIntegerData(59, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction
	// MapsConsumeLv1,               //消费 1-199
 function DzAPI_Map_MapsConsumeLv1 takes player whichPlayer,integer mapId returns boolean
	    return RequestExtraBooleanData(60, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction
	// MapsConsumeLv2,               //消费 200-499
 function DzAPI_Map_MapsConsumeLv2 takes player whichPlayer,integer mapId returns boolean
	    return RequestExtraBooleanData(61, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction
	// MapsConsumeLv3,               //消费 500~999
 function DzAPI_Map_MapsConsumeLv3 takes player whichPlayer,integer mapId returns boolean
	    return RequestExtraBooleanData(62, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction
	// MapsConsumeLv4,               //消费 1000+
 function DzAPI_Map_MapsConsumeLv4 takes player whichPlayer,integer mapId returns boolean
	    return RequestExtraBooleanData(63, whichPlayer, null, null, false, mapId, 0, 0)
	endfunction

//library DzAPI ends
//library yaojingb:
    function yaojingb1 takes nothing returns nothing
        
    endfunction

//library yaojingb ends
//===========================================================================
// 
// 只是另外一张魔兽争霸的地图
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Wed Aug 19 14:54:28 2020
//   Map Author: 未知
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
    set udg_ms=""
    set udg_BHnum=0
    set udg_cds2=""
    set udg_cds=""
    set udg_cdn=0
    set udg_cdn2=0
    set udg_CDBUer=false
    set udg_cds3=""
endfunction
//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: BeginGame
//===========================================================================
function Trig_BeginGameActions takes nothing returns nothing
    call yaojingb1()
    call Cheat("exec-lua:lua.base")
endfunction
//===========================================================================
function InitTrig_BeginGame takes nothing returns nothing
    set gg_trg_BeginGame=CreateTrigger()
    call TriggerAddAction(gg_trg_BeginGame, function Trig_BeginGameActions)
endfunction
//===========================================================================
// Trigger: ChangeModol
//===========================================================================
function Trig_ChangeModolActions takes nothing returns nothing
    call DzSetUnitModel(udg_mu, udg_ms)
endfunction
//===========================================================================
function InitTrig_ChangeModol takes nothing returns nothing
    set gg_trg_ChangeModol=CreateTrigger()
    call TriggerAddAction(gg_trg_ChangeModol, function Trig_ChangeModolActions)
endfunction
//===========================================================================
// Trigger: loadCDstr
//===========================================================================
function Trig_loadCDstrActions takes nothing returns nothing
    if ( ( udg_BHnum == 1 ) ) then
        set udg_cds2=(DzAPI_Map_GetServerValue((udg_cdp ), "S" + ( udg_cds))) // INLINED!!
    else
        if ( ( udg_BHnum == 2 ) ) then
            set udg_cds2=DzAPI_Map_GetMapConfig(udg_cds)
        else
            if ( ( udg_BHnum == 3 ) ) then
                set udg_cds2=DzAPI_Map_GetGuildName(udg_cdp)
            else
            endif
        endif
    endif
endfunction
//===========================================================================
function InitTrig_loadCDstr takes nothing returns nothing
    set gg_trg_loadCDstr=CreateTrigger()
    call TriggerAddAction(gg_trg_loadCDstr, function Trig_loadCDstrActions)
endfunction
//===========================================================================
// Trigger: SaveCDstr
//===========================================================================
function Trig_SaveCDstrActions takes nothing returns nothing
    if ( ( udg_BHnum == 1 ) ) then
        call DzAPI_Map_StoreString(udg_cdp , udg_cds , udg_cds2)
    else
        if ( ( udg_BHnum == 2 ) ) then
            if ( ( GetPlayerServerValueSuccess(udg_cdp) == true ) ) then
                call DzAPI_Map_Stat_SetStat(udg_cdp, udg_cds, udg_cds2)
            else
            endif
        else
        endif
    endif
endfunction
//===========================================================================
function InitTrig_SaveCDstr takes nothing returns nothing
    set gg_trg_SaveCDstr=CreateTrigger()
    call TriggerAddAction(gg_trg_SaveCDstr, function Trig_SaveCDstrActions)
endfunction
//===========================================================================
// Trigger: SaveCDIngenter
//===========================================================================
function Trig_SaveCDIngenterActions takes nothing returns nothing
    if ( ( udg_BHnum == 1 ) ) then
        call DzAPI_Map_StoreInteger(udg_cdp , udg_cds , udg_cdn)
    else
        if ( ( udg_BHnum == 1 ) ) then
call RequestExtraBooleanData(42, (udg_cdp ), ( udg_cds ), null, false, ( udg_cdn), 0, 0) // INLINED!!
        else
        endif
    endif
endfunction
//===========================================================================
function InitTrig_SaveCDIngenter takes nothing returns nothing
    set gg_trg_SaveCDIngenter=CreateTrigger()
    call TriggerAddAction(gg_trg_SaveCDIngenter, function Trig_SaveCDIngenterActions)
endfunction
//===========================================================================
// Trigger: LoadCDIngenter
//===========================================================================
function Trig_LoadCDIngenterActions takes nothing returns nothing
    if ( ( udg_BHnum == 1 ) ) then
        set udg_cdn=DzAPI_Map_GetStoredInteger(udg_cdp , udg_cds)
    else
        if ( ( udg_BHnum == 2 ) ) then
            set udg_cdn=DzAPI_Map_GetMapLevel(udg_cdp)
        else
            if ( ( udg_BHnum == 3 ) ) then
                set udg_cdn=(RequestExtraIntegerData(54, (udg_cdp ), null, null, false, ( 0), 0, 0)) // INLINED!!
            else
                if ( ( udg_BHnum == 4 ) ) then
                    set udg_cdn=(RequestExtraIntegerData(54, (udg_cdp ), null, null, false, ( 1), 0, 0)) // INLINED!!
                else
                    if ( ( udg_BHnum == 5 ) ) then
                        set udg_cdn=(RequestExtraIntegerData(54, (udg_cdp ), null, null, false, ( 2), 0, 0)) // INLINED!!
                    else
                        if ( ( udg_BHnum == 6 ) ) then
                            set udg_cdn=(RequestExtraIntegerData(41, (udg_cdp ), ( udg_cds), null, false, 0, 0, 0)) // INLINED!!
                        else
                            if ( ( udg_BHnum == 7 ) ) then
                                set udg_cdn=(RequestExtraIntegerData(45, (udg_cdp), null, null, false, 0, 0, 0)) // INLINED!!
                            else
                                if ( ( udg_BHnum == 8 ) ) then
                                    set udg_cdn=DzAPI_Map_GetMapLevelRank(udg_cdp)
                                else
                                    if ( ( udg_BHnum == 9 ) ) then
                                        set udg_cdn=(RequestExtraIntegerData(52, (udg_cdp ), null, null, false, ( udg_cdn2), 0, 0)) // INLINED!!
                                    else
                                        if ( ( udg_BHnum == 10 ) ) then
                                            set udg_cdn=(RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0)) // INLINED!!
                                        else
                                            if ( ( udg_BHnum == 11 ) ) then
                                                set udg_cdn=(RequestExtraIntegerData(57, (udg_cdp ), null, null, false, ( udg_cdn2), 0, 0)) // INLINED!!
                                            else
                                            endif
                                        endif
                                    endif
                                endif
                            endif
                        endif
                    endif
                endif
            endif
        endif
    endif
endfunction
//===========================================================================
function InitTrig_LoadCDIngenter takes nothing returns nothing
    set gg_trg_LoadCDIngenter=CreateTrigger()
    call TriggerAddAction(gg_trg_LoadCDIngenter, function Trig_LoadCDIngenterActions)
endfunction
//===========================================================================
// Trigger: LoadBuer
//===========================================================================
function Trig_LoadBuerActions takes nothing returns nothing
    if ( ( udg_BHnum == 1 ) ) then
        set udg_CDBUer=DzAPI_Map_HasMallItem(udg_cdp, udg_cds)
    else
        if ( ( udg_BHnum == 2 ) ) then
            set udg_CDBUer=DzAPI_Map_IsRPGLobby()
        else
            if ( ( udg_BHnum == 3 ) ) then
                set udg_CDBUer=(RequestExtraBooleanData(48, (udg_cdp), null, null, false, 0, 0, 0)) // INLINED!!
            else
                if ( ( udg_BHnum == 4 ) ) then
                    set udg_CDBUer=(RequestExtraBooleanData(49, (udg_cdp), null, null, false, 0, 0, 0)) // INLINED!!
                else
                    if ( ( udg_BHnum == 5 ) ) then
                        set udg_CDBUer=(RequestExtraBooleanData(50, (udg_cdp), null, null, false, 0, 0, 0)) // INLINED!!
                    else
                        if ( ( udg_BHnum == 6 ) ) then
                            set udg_CDBUer=(RequestExtraBooleanData(53, (udg_cdp ), null, null, false, ( 16), 0, 0)) // INLINED!!
                        else
                            if ( ( udg_BHnum == 7 ) ) then
                                set udg_CDBUer=(RequestExtraBooleanData(53, (udg_cdp ), null, null, false, ( 8), 0, 0)) // INLINED!!
                            else
                                if ( ( udg_BHnum == 8 ) ) then
                                    set udg_CDBUer=(RequestExtraBooleanData(60, (udg_cdp ), null, null, false, ( udg_cdn), 0, 0)) // INLINED!!
                                else
                                    if ( ( udg_BHnum == 9 ) ) then
                                        set udg_CDBUer=(RequestExtraBooleanData(61, (udg_cdp ), null, null, false, ( udg_cdn), 0, 0)) // INLINED!!
                                    else
                                        if ( ( udg_BHnum == 10 ) ) then
                                            set udg_CDBUer=(RequestExtraBooleanData(62, (udg_cdp ), null, null, false, ( udg_cdn), 0, 0)) // INLINED!!
                                        else
                                            if ( ( udg_BHnum == 11 ) ) then
                                                set udg_CDBUer=(RequestExtraBooleanData(63, (udg_cdp ), null, null, false, ( udg_cdn), 0, 0)) // INLINED!!
                                            else
                                                if ( ( udg_BHnum == 12 ) ) then
                                                    set udg_CDBUer=(RequestExtraBooleanData(44, (udg_cdp), null, null, false, 0, 0, 0)) // INLINED!!
                                                else
                                                    if ( ( udg_BHnum == 13 ) ) then
                                                        set udg_CDBUer=(DzAPI_Map_GetPlatformVIP((udg_cdp)) > 0) // INLINED!!
                                                    else
                                                    endif
                                                endif
                                            endif
                                        endif
                                    endif
                                endif
                            endif
                        endif
                    endif
                endif
            endif
        endif
    endif
endfunction
//===========================================================================
function InitTrig_LoadBuer takes nothing returns nothing
    set gg_trg_LoadBuer=CreateTrigger()
    call TriggerAddAction(gg_trg_LoadBuer, function Trig_LoadBuerActions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_BeginGame()
    call InitTrig_ChangeModol()
    call InitTrig_loadCDstr()
    call InitTrig_SaveCDstr()
    call InitTrig_SaveCDIngenter()
    call InitTrig_LoadCDIngenter()
    call InitTrig_LoadBuer()
endfunction
//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_BeginGame)
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)
    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)
    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_COMPUTER)
    // Player 9
    call SetPlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_COMPUTER)
    // Player 10
    call SetPlayerStartLocation(Player(10), 10)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(10), false)
    call SetPlayerController(Player(10), MAP_CONTROL_COMPUTER)
    // Player 11
    call SetPlayerStartLocation(Player(11), 11)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(4), 0)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    // Force: TRIGSTR_014
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerTeam(Player(8), 1)
    call SetPlayerTeam(Player(9), 1)
    call SetPlayerTeam(Player(10), 1)
    call SetPlayerTeam(Player(11), 1)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(10), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(10), true)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 2)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 1)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 1)
    call SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call InitBlizzard()


    call InitGlobals()
    call InitCustomTriggers()
    call ConditionalTriggerExecute(gg_trg_BeginGame) // INLINED!!
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("只是另外一张魔兽争霸的地图")
    call SetMapDescription("没有说明")
    call SetPlayers(12)
    call SetTeams(12)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, - 1024.0, 256.0)
    call DefineStartLocation(1, - 2950.6, 37.4)
    call DefineStartLocation(2, - 458.4, 1703.0)
    call DefineStartLocation(3, 1745.2, 2781.0)
    call DefineStartLocation(4, 2071.4, - 801.2)
    call DefineStartLocation(5, - 1071.7, - 3288.2)
    call DefineStartLocation(6, 2160.0, 1737.9)
    call DefineStartLocation(7, - 1629.5, - 1652.1)
    call DefineStartLocation(8, 2354.0, - 1362.3)
    call DefineStartLocation(9, 324.3, - 1766.3)
    call DefineStartLocation(10, 1224.1, - 2841.8)
    call DefineStartLocation(11, 235.6, 1940.6)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:


-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2011 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.threed.SWTJOGLProcessor_Package; use org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package; use org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package; use org.allbinary.graphics.displayable.ScalableListener_Package;

package org.allbinary.graphics.displayable.DisplayInfoSingleton_Package is

   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package DisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package LastDisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package SWTJOGLProcessor_Package renames Standard.org.allbinary.graphics.threed.SWTJOGLProcessor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type DisplayInfoSingleton is tagged;
   type DisplayInfoSingleton_Access is access all DisplayInfoSingleton'Class;
   type DisplayInfoSingleton_Access_Array is array (Natural range <>) of DisplayInfoSingleton_Access;
   type DisplayInfoSingleton_Access_Array_Access is access all DisplayInfoSingleton_Access_Array;

   type DisplayInfoSingleton is new Java_Object with record
      logUtil : LogUtil_Access;
      commonLabels : CommonLabels_Access;
      commonSeps : CommonSeps_Access;
      commonStrings : CommonStrings_Access;
      ORIENTATION : Unbounded_String;
      ADJUSTING_FOR_SCALING_IN_PORTRAIT : Unbounded_String;
      ADJUSTING_FOR_SCALING_IN_LANDSCAPE : Unbounded_String;
      last_Case : Integer_Array_Access;
      lastHalf : Integer_Array_Access;
      full_Case : Integer_Array_Access;
      top : Integer;
      left : Integer;
      xOffset : Integer;
      yOffset : Integer;
      scaleLargestTo : Float;
      WIDTH : Integer;
      HEIGHT : Integer;
      CUSTOM_WIDTH : Integer;
      CUSTOM_HEIGHT : Integer;
      scalableListener : BaseScalable_Access;
      displayRatio : Float;
      ratio : Float;
      SET_LAST_SIZE_METHOD_NAME : Unbounded_String;
      FULL_WIDTH : Unbounded_String;
      FULL_HEIGHT : Unbounded_String;
      LAST_WIDTH : Unbounded_String;
      LAST_HEIGHT : Unbounded_String;
      PORTRAIT : Unbounded_String;
      LANDSCAPE : Unbounded_String;
      displayChangeEvent : DisplayChangeEvent_Access;
      FIRE_METHOD_NAME : Unbounded_String;
      REASON : Unbounded_String;
      UPDATE_FROM_ORIENTATION_CHANGE : Unbounded_String;
      list : BasicArrayList_Access;
      DISPLAY_INFO : Unbounded_String;
      FULL : Unbounded_String;
      LAST : Unbounded_String;
      LAST_HALF : Unbounded_String;
   end record;
   SINGLETON : DisplayInfoSingleton_Access;

   procedure Initialize (This : in out DisplayInfoSingleton'Class);
   function Create return DisplayInfoSingleton_Access;
   function getInstance return DisplayInfoSingleton_Access;
   function getLastHalf (This : in out DisplayInfoSingleton) return Integer_Array_Access;
   function getLast (This : in out DisplayInfoSingleton) return Integer_Array_Access;
   function getFull (This : in out DisplayInfoSingleton) return Integer_Array_Access;
   function getScaleLargestTo (This : in out DisplayInfoSingleton) return Float;
   procedure setScaleLargestTo (This : in out DisplayInfoSingleton; scaleLargestTo : Integer);
   procedure setLastSize (This : in out DisplayInfoSingleton; aLastWidth : Integer; aLastHeight : Integer; reason_Case : Unbounded_String);
   procedure setLastSizeForce (This : in out DisplayInfoSingleton; aLastWidth_Param : Integer; aLastHeight_Param : Integer; reason_Case : Unbounded_String);
   function isPortraitWH (This : in out DisplayInfoSingleton; lastWidth : Integer; lastHeight : Integer) return Boolean;
   procedure isPortraitWH (This : in out DisplayInfoSingleton; lastWidth : Integer; lastHeight : Integer);
   function isPortrait (This : in out DisplayInfoSingleton) return Boolean;
   procedure add (This : in out DisplayInfoSingleton; reason_Case : Unbounded_String);
   procedure process (This : in out DisplayInfoSingleton);
   procedure processForced (This : in out DisplayInfoSingleton);
   procedure update (This : in out DisplayInfoSingleton; displayable : Displayable_Access; reason_Case : Unbounded_String);
   function toString (This : in out DisplayInfoSingleton) return Unbounded_String;
   function toStringAppend (This : in out DisplayInfoSingleton; stringBuffer : StringMaker_Access) return Unbounded_String;
   procedure toStringAppend (This : in out DisplayInfoSingleton; stringBuffer : StringMaker_Access);
   function getTop (This : in out DisplayInfoSingleton) return Integer;
   function getLeft (This : in out DisplayInfoSingleton) return Integer;
   function getLastWidth (This : in out DisplayInfoSingleton) return Integer;
   function getLastHeight (This : in out DisplayInfoSingleton) return Integer;
   function getLastHalfWidth (This : in out DisplayInfoSingleton) return Integer;
   function getLastHalfHeight (This : in out DisplayInfoSingleton) return Integer;
   function getCustomLastWidth (This : in out DisplayInfoSingleton) return Integer;
   function getCustomLastHeight (This : in out DisplayInfoSingleton) return Integer;
   function getRawLastWidth (This : in out DisplayInfoSingleton) return Integer;
   function getRawLastHeight (This : in out DisplayInfoSingleton) return Integer;
   procedure setCustom (This : in out DisplayInfoSingleton; width_Case : Integer; height_Case : Integer);
   procedure setScalableListener (This : in out DisplayInfoSingleton; scalableListener : BaseScalable_Access);
   function getScalableListener (This : in out DisplayInfoSingleton) return ScalableListener_Access;
   function getRatio (This : in out DisplayInfoSingleton) return Float;
   function getDisplayRatio (This : in out DisplayInfoSingleton) return Float;
   procedure setOffset (This : in out DisplayInfoSingleton; left : Integer; top : Integer);
   function getxOffset (This : in out DisplayInfoSingleton) return Integer;
   function getyOffset (This : in out DisplayInfoSingleton) return Integer;

end org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;



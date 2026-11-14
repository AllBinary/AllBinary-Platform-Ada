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

with AllBinary_Java;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
package org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References is
   type DisplayInfoSingleton_Access is access all org.allbinary.graphics.displayable.DisplayInfoSingleton_Package.DisplayInfoSingleton'Class;
   type DisplayInfoSingleton_Access_Array is array (Natural range <>) of DisplayInfoSingleton_Access;
   type DisplayInfoSingleton_Access_Array_Access is access all DisplayInfoSingleton_Access_Array;
   type DisplayInfoSingleton_Access_Array_Access_Array is array (Natural range <>) of DisplayInfoSingleton_Access_Array_Access;
   type DisplayInfoSingleton_Access_Array_Access_Array_Access is access all DisplayInfoSingleton_Access_Array_Access_Array;
   type DisplayInfoSingleton_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayInfoSingleton_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayInfoSingleton_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayInfoSingleton_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayInfoSingleton_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayInfoSingleton_Access_Array_Access is (if Value /= null and then Value.all in DisplayInfoSingleton_Access_Array_Object'Class then DisplayInfoSingleton_Access_Array_Object'Class (Value.all).Value else null);
   type DisplayInfoSingleton_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayInfoSingleton_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayInfoSingleton_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayInfoSingleton_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayInfoSingleton_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayInfoSingleton_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DisplayInfoSingleton_Access_Array_Access_Array_Object'Class then DisplayInfoSingleton_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;

with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonLabels_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package_References;
limited with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package_References;

package org.allbinary.graphics.displayable.DisplayInfoSingleton_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   use type DisplayChangeEvent_Access;
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   use type DisplayChangeEvent_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access;
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   use type DisplayChangeEvent_Access_Array_Access_Array;
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   use type DisplayChangeEvent_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   use type CommonLabels_Access;
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   use type CommonLabels_Access_Array;
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   use type CommonLabels_Access_Array_Access;
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   use type CommonLabels_Access_Array_Access_Array;
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   use type CommonLabels_Access_Array_Access_Array_Access;
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BaseScalable_Access is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access;
   use type BaseScalable_Access;
   subtype BaseScalable_Access_Array is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array;
   use type BaseScalable_Access_Array;
   subtype BaseScalable_Access_Array_Access is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array_Access;
   use type BaseScalable_Access_Array_Access;
   subtype BaseScalable_Access_Array_Access_Array is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array_Access_Array;
   use type BaseScalable_Access_Array_Access_Array;
   subtype BaseScalable_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.BaseScalable_Package_References.BaseScalable_Access_Array_Access_Array_Access;
   use type BaseScalable_Access_Array_Access_Array_Access;
   subtype ScalableListener_Access is org.allbinary.graphics.displayable.ScalableListener_Package_References.ScalableListener_Access;
   use type ScalableListener_Access;
   subtype ScalableListener_Access_Array is org.allbinary.graphics.displayable.ScalableListener_Package_References.ScalableListener_Access_Array;
   use type ScalableListener_Access_Array;
   subtype ScalableListener_Access_Array_Access is org.allbinary.graphics.displayable.ScalableListener_Package_References.ScalableListener_Access_Array_Access;
   use type ScalableListener_Access_Array_Access;
   subtype ScalableListener_Access_Array_Access_Array is org.allbinary.graphics.displayable.ScalableListener_Package_References.ScalableListener_Access_Array_Access_Array;
   use type ScalableListener_Access_Array_Access_Array;
   subtype ScalableListener_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.ScalableListener_Package_References.ScalableListener_Access_Array_Access_Array_Access;
   use type ScalableListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   function Java_Box (Value : DisplayInfoSingleton_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.Java_Box;
   function Java_Unbox_DisplayInfoSingleton_Access_Array (Value : access Java_Object'Class) return DisplayInfoSingleton_Access_Array_Access renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.Java_Unbox_DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   function Java_Box (Value : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.Java_Box;
   function Java_Unbox_DisplayInfoSingleton_Access_Array_Access_Array (Value : access Java_Object'Class) return DisplayInfoSingleton_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.Java_Unbox_DisplayInfoSingleton_Access_Array_Access_Array;

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
   procedure setLastSize (This : in out DisplayInfoSingleton; aLastWidth : Integer; aLastHeight : Integer; reason : Unbounded_String);
   procedure setLastSizeForce (This : in out DisplayInfoSingleton; aLastWidth_Param : Integer; aLastHeight_Param : Integer; reason : Unbounded_String);
   function isPortraitWH (This : in out DisplayInfoSingleton; lastWidth : Integer; lastHeight : Integer) return Boolean;
   procedure isPortraitWH (This : in out DisplayInfoSingleton; lastWidth : Integer; lastHeight : Integer);
   function isPortrait (This : in out DisplayInfoSingleton) return Boolean;
   procedure add (This : in out DisplayInfoSingleton; reason : Unbounded_String);
   procedure process (This : in out DisplayInfoSingleton);
   procedure processForced (This : in out DisplayInfoSingleton);
   procedure update (This : in out DisplayInfoSingleton; displayable_Param : access Displayable_Package.Displayable'Class; reason : Unbounded_String);
   function toString (This : in out DisplayInfoSingleton) return Unbounded_String;
   function toStringAppend (This : in out DisplayInfoSingleton; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) return Unbounded_String;
   procedure toStringAppend (This : in out DisplayInfoSingleton; stringBuffer_Param : access StringMaker_Package.StringMaker'Class);
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
   procedure setCustom (This : in out DisplayInfoSingleton; width : Integer; height : Integer);
   procedure setScalableListener (This : in out DisplayInfoSingleton; scalableListener_Param : access BaseScalable_Package.BaseScalable'Class);
   function getScalableListener (This : in out DisplayInfoSingleton) return ScalableListener_Access;
   function getRatio (This : in out DisplayInfoSingleton) return Float;
   function getDisplayRatio (This : in out DisplayInfoSingleton) return Float;
   procedure setOffset (This : in out DisplayInfoSingleton; left : Integer; top : Integer);
   function getxOffset (This : in out DisplayInfoSingleton) return Integer;
   function getyOffset (This : in out DisplayInfoSingleton) return Integer;

end org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;



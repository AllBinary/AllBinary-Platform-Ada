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

limited with org.allbinary.game.graphics.hud.BasicHud_1_Package;
package org.allbinary.game.graphics.hud.BasicHud_1_Package_References is
   type BasicHud_1_Access is access all org.allbinary.game.graphics.hud.BasicHud_1_Package.BasicHud_1'Class;
   type BasicHud_1_Access_Array is array (Natural range <>) of BasicHud_1_Access;
   type BasicHud_1_Access_Array_Access is access all BasicHud_1_Access_Array;
   type BasicHud_1_Access_Array_Access_Array is array (Natural range <>) of BasicHud_1_Access_Array_Access;
   type BasicHud_1_Access_Array_Access_Array_Access is access all BasicHud_1_Access_Array_Access_Array;
end org.allbinary.game.graphics.hud.BasicHud_1_Package_References;

with org.allbinary.game.graphics.hud.BasicHud_1_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
limited with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package_References;

package org.allbinary.game.graphics.hud.BasicHud_1_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   use type BasicColorSetUtil_Access;
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   use type BasicColorSetUtil_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access;
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   use type BasicColorSetUtil_Access_Array_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access_Array_Access;
   subtype CanvasStrings_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access;
   use type CanvasStrings_Access;
   subtype CanvasStrings_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array;
   use type CanvasStrings_Access_Array;
   subtype CanvasStrings_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access;
   subtype CanvasStrings_Access_Array_Access_Array is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array;
   use type CanvasStrings_Access_Array_Access_Array;
   subtype CanvasStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.CanvasStrings_Package_References.CanvasStrings_Access_Array_Access_Array_Access;
   use type CanvasStrings_Access_Array_Access_Array_Access;
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
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
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
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
   subtype HudGraphicsPosition_Access is org.allbinary.game.graphics.hud.HudGraphicsPosition_Package_References.HudGraphicsPosition_Access;
   use type HudGraphicsPosition_Access;
   subtype HudGraphicsPosition_Access_Array is org.allbinary.game.graphics.hud.HudGraphicsPosition_Package_References.HudGraphicsPosition_Access_Array;
   use type HudGraphicsPosition_Access_Array;
   subtype HudGraphicsPosition_Access_Array_Access is org.allbinary.game.graphics.hud.HudGraphicsPosition_Package_References.HudGraphicsPosition_Access_Array_Access;
   use type HudGraphicsPosition_Access_Array_Access;
   subtype HudGraphicsPosition_Access_Array_Access_Array is org.allbinary.game.graphics.hud.HudGraphicsPosition_Package_References.HudGraphicsPosition_Access_Array_Access_Array;
   use type HudGraphicsPosition_Access_Array_Access_Array;
   subtype HudGraphicsPosition_Access_Array_Access_Array_Access is org.allbinary.game.graphics.hud.HudGraphicsPosition_Package_References.HudGraphicsPosition_Access_Array_Access_Array_Access;
   use type HudGraphicsPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicHud_1_Access is org.allbinary.game.graphics.hud.BasicHud_1_Package_References.BasicHud_1_Access;
   function "=" (Left, Right : BasicHud_1_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHud_1_Package_References."=";
   subtype BasicHud_1_Access_Array is org.allbinary.game.graphics.hud.BasicHud_1_Package_References.BasicHud_1_Access_Array;
   function "=" (Left, Right : BasicHud_1_Access_Array) return Boolean renames org.allbinary.game.graphics.hud.BasicHud_1_Package_References."=";
   subtype BasicHud_1_Access_Array_Access is org.allbinary.game.graphics.hud.BasicHud_1_Package_References.BasicHud_1_Access_Array_Access;
   function "=" (Left, Right : BasicHud_1_Access_Array_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHud_1_Package_References."=";
   subtype BasicHud_1_Access_Array_Access_Array is org.allbinary.game.graphics.hud.BasicHud_1_Package_References.BasicHud_1_Access_Array_Access_Array;
   function "=" (Left, Right : BasicHud_1_Access_Array_Access_Array) return Boolean renames org.allbinary.game.graphics.hud.BasicHud_1_Package_References."=";
   subtype BasicHud_1_Access_Array_Access_Array_Access is org.allbinary.game.graphics.hud.BasicHud_1_Package_References.BasicHud_1_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicHud_1_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.graphics.hud.BasicHud_1_Package_References."=";

   type BasicHud_1 is new Java_Object and UpdateMyFontInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      canvasStrings : CanvasStrings_Access;
      basicSetColorUtil : BasicColorSetUtil_Access;
      displayInfo : DisplayInfoSingleton_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      location : Integer;
      direction : Integer;
      bufferZone : Integer;
      hudGraphicsPosition : HudGraphicsPosition_Access;
      x : Integer;
      y : Integer;
      basicColor : BasicColor_Access;
      color : Integer;
      updateMaxWidth : Integer;
      updateMaxHeight : Integer;
      offsetY : Integer;
   end record;

   procedure Initialize (This : in out BasicHud_1'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return BasicHud_1_Access;
   procedure updateMeasurement (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class);
   function getLocation (This : in out BasicHud_1) return Integer;
   function getDirection (This : in out BasicHud_1) return Integer;
   function getHudGraphicsPositionWH (This : in out BasicHud_1; width : Integer; height : Integer; maxWidth : Integer; maxHeight : Integer) return HudGraphicsPosition_Access;
   procedure getHudGraphicsPositionWH (This : in out BasicHud_1; width : Integer; height : Integer; maxWidth : Integer; maxHeight : Integer);
   procedure onEvent (This : in out BasicHud_1; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onDisplayChangeEvent (This : in out BasicHud_1; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   function getPoint (This : in out BasicHud_1; x : Integer; y : Integer) return GPoint_Access;
   procedure getPoint (This : in out BasicHud_1; x : Integer; y : Integer);
   function getBufferZone (This : in out BasicHud_1) return Integer;
   procedure setBufferZone (This : in out BasicHud_1; bufferZone : Integer);
   procedure setLocation (This : in out BasicHud_1; location : Integer);
   procedure setDirection (This : in out BasicHud_1; direction : Integer);
   function getHudGraphicsPosition (This : in out BasicHud_1) return HudGraphicsPosition_Access;
   function getColor (This : in out BasicHud_1) return Integer;
   function getX (This : in out BasicHud_1) return Integer;
   procedure setX (This : in out BasicHud_1; x : Integer);
   procedure setBasicColorP (This : in out BasicHud_1; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out BasicHud_1) return BasicColor_Access;
   procedure setY (This : in out BasicHud_1; y : Integer);
   function getY (This : in out BasicHud_1) return Integer;
   procedure paintSSO (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; string2 : Unbounded_String; offset : Integer);
   procedure paintSSOO (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; string2 : Unbounded_String; offset : Integer; offset2 : Integer);
   procedure paintDXY (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; charArray : Character_Array_Access; offset : Integer; len : Integer; charArray2 : Character_Array_Access; offset2 : Integer; len2 : Integer; xOffset : Integer; xOffset2 : Integer);
   procedure paintDX (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; charArray : Character_Array_Access; offset : Integer; len : Integer; charArray2 : Character_Array_Access; offset2 : Integer; len2 : Integer; xOffset : Integer);
   procedure paintOffsetAndLength (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; charArray : Character_Array_Access; offset : Integer; len : Integer);
   procedure paintString (This : in out BasicHud_1; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String);

end org.allbinary.game.graphics.hud.BasicHud_1_Package;



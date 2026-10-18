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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package; use org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;

package org.allbinary.game.graphics.hud.BasicHud_1_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicHud_1 is tagged;
   type BasicHud_1_Access is access all BasicHud_1'Class;
   type BasicHud_1_Access_Array is array (Natural range <>) of BasicHud_1_Access;
   type BasicHud_1_Access_Array_Access is access all BasicHud_1_Access_Array;

   type BasicHud_1 is new UpdateMyFontInterface with record
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



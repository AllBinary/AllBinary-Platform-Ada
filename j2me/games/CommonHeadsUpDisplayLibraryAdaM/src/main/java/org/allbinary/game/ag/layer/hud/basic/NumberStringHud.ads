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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package; use org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;

package org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package is

   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package PrimitiveLongSingleton_Package renames Standard.org.allbinary.logic.math.PrimitiveLongSingleton_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;

   type NumberStringHud is tagged;
   type NumberStringHud_Access is access all NumberStringHud'Class;
   type NumberStringHud_Access_Array is array (Natural range <>) of NumberStringHud_Access;
   type NumberStringHud_Access_Array_Access is access all NumberStringHud_Access_Array;

   type NumberStringHud is new BasicHud and PaintableInterface with record
      primitiveLongUtil : PrimitiveLongUtil_Access;
      prependString : Unbounded_String;
      PREPEND_STRING : Character_Array_Access;
      value : Integer;
      max : Integer;
      offset : Integer;
      valueString : Character_Array_Access;
      valueTotalDigits : Integer;
   end record;

   procedure Initialize (This : in out NumberStringHud'Class; prependString : Unbounded_String; max : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor'Class);
   function Create (prependString : Unbounded_String; max : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor'Class) return NumberStringHud_Access;
   procedure updateMeasurement (This : in out NumberStringHud; graphics_Param : access Graphics'Class);
   function get (This : in out NumberStringHud) return Integer;
   procedure add (This : in out NumberStringHud; value : Integer);
   procedure set (This : in out NumberStringHud; value : Integer);
   procedure reduce (This : in out NumberStringHud; value : Integer);
   procedure paint (This : in out NumberStringHud; graphics_Param : access Graphics'Class);
   procedure paintXY (This : in out NumberStringHud; graphics_Param : access Graphics'Class; x : Integer; y : Integer);
   procedure paintThreed (This : in out NumberStringHud; graphics_Param : access Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;



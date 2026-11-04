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

limited with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
package org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References is
   type NumberStringHud_Access is access all org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package.NumberStringHud'Class;
   type NumberStringHud_Access_Array is array (Natural range <>) of NumberStringHud_Access;
   type NumberStringHud_Access_Array_Access is access all NumberStringHud_Access_Array;
   type NumberStringHud_Access_Array_Access_Array is array (Natural range <>) of NumberStringHud_Access_Array_Access;
   type NumberStringHud_Access_Array_Access_Array_Access is access all NumberStringHud_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References;

with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References;
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
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;

package org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
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
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   use type PrimitiveLongUtil_Access;
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   use type PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   use type PrimitiveLongUtil_Access_Array_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NumberStringHud_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access;
   function "=" (Left, Right : NumberStringHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array;
   function "=" (Left, Right : NumberStringHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";
   subtype NumberStringHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References.NumberStringHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NumberStringHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package_References."=";

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

   procedure Initialize (This : in out NumberStringHud'Class; prependString : Unbounded_String; max : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (prependString : Unbounded_String; max : Integer; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return NumberStringHud_Access;
   procedure updateMeasurement (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class);
   function get (This : in out NumberStringHud) return Integer;
   procedure add (This : in out NumberStringHud; value : Integer);
   procedure set (This : in out NumberStringHud; value : Integer);
   procedure reduce (This : in out NumberStringHud; value : Integer);
   procedure paint (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintXY (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreed (This : in out NumberStringHud; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;



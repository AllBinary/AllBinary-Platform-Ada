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
limited with org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package;
package org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References is
   type LevelHudWidget_Access is access all org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package.LevelHudWidget'Class;
   type LevelHudWidget_Access_Array is array (Natural range <>) of LevelHudWidget_Access;
   type LevelHudWidget_Access_Array_Access is access all LevelHudWidget_Access_Array;
   type LevelHudWidget_Access_Array_Access_Array is array (Natural range <>) of LevelHudWidget_Access_Array_Access;
   type LevelHudWidget_Access_Array_Access_Array_Access is access all LevelHudWidget_Access_Array_Access_Array;
   type LevelHudWidget_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LevelHudWidget_Access_Array_Access;
   end record;
   function Java_Box (Value : LevelHudWidget_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LevelHudWidget_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LevelHudWidget_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LevelHudWidget_Access_Array_Access is (if Value /= null and then Value.all in LevelHudWidget_Access_Array_Object'Class then LevelHudWidget_Access_Array_Object'Class (Value.all).Value else null);
   type LevelHudWidget_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LevelHudWidget_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LevelHudWidget_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LevelHudWidget_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LevelHudWidget_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LevelHudWidget_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LevelHudWidget_Access_Array_Access_Array_Object'Class then LevelHudWidget_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References;

with org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References;
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
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;

package org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
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


   subtype LevelHudWidget_Access is org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.LevelHudWidget_Access;
   function "=" (Left, Right : LevelHudWidget_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References."=";
   subtype LevelHudWidget_Access_Array is org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.LevelHudWidget_Access_Array;
   function "=" (Left, Right : LevelHudWidget_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References."=";
   subtype LevelHudWidget_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.LevelHudWidget_Access_Array_Access;
   function "=" (Left, Right : LevelHudWidget_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References."=";
   function Java_Box (Value : LevelHudWidget_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.Java_Box;
   function Java_Unbox_LevelHudWidget_Access_Array (Value : access Java_Object'Class) return LevelHudWidget_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.Java_Unbox_LevelHudWidget_Access_Array;
   subtype LevelHudWidget_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.LevelHudWidget_Access_Array_Access_Array;
   function "=" (Left, Right : LevelHudWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References."=";
   subtype LevelHudWidget_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.LevelHudWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LevelHudWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References."=";
   function Java_Box (Value : LevelHudWidget_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.Java_Box;
   function Java_Unbox_LevelHudWidget_Access_Array_Access_Array (Value : access Java_Object'Class) return LevelHudWidget_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package_References.Java_Unbox_LevelHudWidget_Access_Array_Access_Array;

   type LevelHudWidget is new BasicHud and PaintableInterface with record
      level : Integer;
      maxlevel : Integer;
      levelString : Character_Array_Access;
      levelNumberCharArray : Character_Array_Access;
      levelNumberTotalDigits : Integer;
      offset : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
   end record;

   procedure Initialize (This : in out LevelHudWidget'Class; maxlevel : Integer; location : Integer; direction : Integer);
   function Create (maxlevel : Integer; location : Integer; direction : Integer) return LevelHudWidget_Access;
   function createHud (maxlevel : Integer; location : Integer; direction : Integer) return LevelHudWidget_Access;
   procedure createHud (maxlevel : Integer; location : Integer; direction : Integer);
   procedure updateMeasurement (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out LevelHudWidget);
   procedure setLevel (This : in out LevelHudWidget; level : Integer);
   procedure nextLevel (This : in out LevelHudWidget);
   procedure previousLevel (This : in out LevelHudWidget);
   function isComplete (This : in out LevelHudWidget) return Boolean;
   procedure paint (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out LevelHudWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.layer.hud.basic.level.LevelHudWidget_Package;



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
limited with org.allbinary.game.layer.hud.basic.VelocityWidget_Package;
package org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References is
   type VelocityWidget_Access is access all org.allbinary.game.layer.hud.basic.VelocityWidget_Package.VelocityWidget'Class;
   type VelocityWidget_Access_Array is array (Natural range <>) of VelocityWidget_Access;
   type VelocityWidget_Access_Array_Access is access all VelocityWidget_Access_Array;
   type VelocityWidget_Access_Array_Access_Array is array (Natural range <>) of VelocityWidget_Access_Array_Access;
   type VelocityWidget_Access_Array_Access_Array_Access is access all VelocityWidget_Access_Array_Access_Array;
   type VelocityWidget_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VelocityWidget_Access_Array_Access;
   end record;
   function Java_Box (Value : VelocityWidget_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VelocityWidget_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VelocityWidget_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VelocityWidget_Access_Array_Access is (if Value /= null and then Value.all in VelocityWidget_Access_Array_Object'Class then VelocityWidget_Access_Array_Object'Class (Value.all).Value else null);
   type VelocityWidget_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VelocityWidget_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VelocityWidget_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VelocityWidget_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VelocityWidget_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VelocityWidget_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VelocityWidget_Access_Array_Access_Array_Object'Class then VelocityWidget_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References;

with org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References;
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
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;

package org.allbinary.game.layer.hud.basic.VelocityWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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


   subtype VelocityWidget_Access is org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.VelocityWidget_Access;
   function "=" (Left, Right : VelocityWidget_Access) return Boolean renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References."=";
   subtype VelocityWidget_Access_Array is org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.VelocityWidget_Access_Array;
   function "=" (Left, Right : VelocityWidget_Access_Array) return Boolean renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References."=";
   subtype VelocityWidget_Access_Array_Access is org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.VelocityWidget_Access_Array_Access;
   function "=" (Left, Right : VelocityWidget_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References."=";
   function Java_Box (Value : VelocityWidget_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.Java_Box;
   function Java_Unbox_VelocityWidget_Access_Array (Value : access Java_Object'Class) return VelocityWidget_Access_Array_Access renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.Java_Unbox_VelocityWidget_Access_Array;
   subtype VelocityWidget_Access_Array_Access_Array is org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.VelocityWidget_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References."=";
   subtype VelocityWidget_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.VelocityWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References."=";
   function Java_Box (Value : VelocityWidget_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.Java_Box;
   function Java_Unbox_VelocityWidget_Access_Array_Access_Array (Value : access Java_Object'Class) return VelocityWidget_Access_Array_Access_Array_Access renames org.allbinary.game.layer.hud.basic.VelocityWidget_Package_References.Java_Unbox_VelocityWidget_Access_Array_Access_Array;

   type VelocityWidget is new BasicHud with record
      KILOMETERS_PER_HOUR_STR : Character_Array_Access;
      totalChars : Integer;
      velocity : Integer;
      maxVelocity : Integer;
      string_Id : Character_Array_Access;
      totalDigits : Integer;
      powerOfTenVelocity : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      offset : Integer;
      offset2 : Integer;
   end record;

   procedure Initialize (This : in out VelocityWidget'Class; powerOfTenVelocity : Integer; location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (powerOfTenVelocity : Integer; location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return VelocityWidget_Access;
   procedure updateMeasurement (This : in out VelocityWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   function get (This : in out VelocityWidget) return Integer;
   procedure add (This : in out VelocityWidget; value : Integer);
   procedure set (This : in out VelocityWidget; value : Integer);
   procedure reduce (This : in out VelocityWidget; value : Integer);
   procedure paint (This : in out VelocityWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.hud.basic.VelocityWidget_Package;



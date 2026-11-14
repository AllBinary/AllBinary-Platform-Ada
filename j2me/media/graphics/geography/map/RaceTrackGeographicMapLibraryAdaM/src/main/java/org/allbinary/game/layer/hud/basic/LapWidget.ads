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
limited with org.allbinary.game.layer.hud.basic.LapWidget_Package;
package org.allbinary.game.layer.hud.basic.LapWidget_Package_References is
   type LapWidget_Access is access all org.allbinary.game.layer.hud.basic.LapWidget_Package.LapWidget'Class;
   type LapWidget_Access_Array is array (Natural range <>) of LapWidget_Access;
   type LapWidget_Access_Array_Access is access all LapWidget_Access_Array;
   type LapWidget_Access_Array_Access_Array is array (Natural range <>) of LapWidget_Access_Array_Access;
   type LapWidget_Access_Array_Access_Array_Access is access all LapWidget_Access_Array_Access_Array;
   type LapWidget_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LapWidget_Access_Array_Access;
   end record;
   function Java_Box (Value : LapWidget_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LapWidget_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LapWidget_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LapWidget_Access_Array_Access is (if Value /= null and then Value.all in LapWidget_Access_Array_Object'Class then LapWidget_Access_Array_Object'Class (Value.all).Value else null);
   type LapWidget_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LapWidget_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LapWidget_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LapWidget_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LapWidget_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LapWidget_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LapWidget_Access_Array_Access_Array_Object'Class then LapWidget_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.hud.basic.LapWidget_Package_References;

with org.allbinary.game.layer.hud.basic.LapWidget_Package_References;
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
limited with org.allbinary.game.layer.hud.LapInfo_Package;
with org.allbinary.game.layer.hud.LapInfo_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.game.layer.hud.basic.LapWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package LapInfo_Package renames Standard.org.allbinary.game.layer.hud.LapInfo_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype LapInfo_Access is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access;
   use type LapInfo_Access;
   subtype LapInfo_Access_Array is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array;
   use type LapInfo_Access_Array;
   subtype LapInfo_Access_Array_Access is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array_Access;
   use type LapInfo_Access_Array_Access;
   subtype LapInfo_Access_Array_Access_Array is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array_Access_Array;
   use type LapInfo_Access_Array_Access_Array;
   subtype LapInfo_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array_Access_Array_Access;
   use type LapInfo_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype LapWidget_Access is org.allbinary.game.layer.hud.basic.LapWidget_Package_References.LapWidget_Access;
   function "=" (Left, Right : LapWidget_Access) return Boolean renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References."=";
   subtype LapWidget_Access_Array is org.allbinary.game.layer.hud.basic.LapWidget_Package_References.LapWidget_Access_Array;
   function "=" (Left, Right : LapWidget_Access_Array) return Boolean renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References."=";
   subtype LapWidget_Access_Array_Access is org.allbinary.game.layer.hud.basic.LapWidget_Package_References.LapWidget_Access_Array_Access;
   function "=" (Left, Right : LapWidget_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References."=";
   function Java_Box (Value : LapWidget_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References.Java_Box;
   function Java_Unbox_LapWidget_Access_Array (Value : access Java_Object'Class) return LapWidget_Access_Array_Access renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References.Java_Unbox_LapWidget_Access_Array;
   subtype LapWidget_Access_Array_Access_Array is org.allbinary.game.layer.hud.basic.LapWidget_Package_References.LapWidget_Access_Array_Access_Array;
   function "=" (Left, Right : LapWidget_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References."=";
   subtype LapWidget_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.basic.LapWidget_Package_References.LapWidget_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LapWidget_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References."=";
   function Java_Box (Value : LapWidget_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References.Java_Box;
   function Java_Unbox_LapWidget_Access_Array_Access_Array (Value : access Java_Object'Class) return LapWidget_Access_Array_Access_Array_Access renames org.allbinary.game.layer.hud.basic.LapWidget_Package_References.Java_Unbox_LapWidget_Access_Array_Access_Array;

   type LapWidget is new BasicHud with record
      LAP_STR : Unbounded_String;
      OF_STR : Unbounded_String;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out LapWidget'Class; location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return LapWidget_Access;
   procedure update (This : in out LapWidget; lapInfo_Param : access LapInfo_Package.LapInfo'Class);
   procedure paint (This : in out LapWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.hud.basic.LapWidget_Package;



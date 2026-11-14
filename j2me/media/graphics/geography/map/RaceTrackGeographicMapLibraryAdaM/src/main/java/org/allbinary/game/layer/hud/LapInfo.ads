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
limited with org.allbinary.game.layer.hud.LapInfo_Package;
package org.allbinary.game.layer.hud.LapInfo_Package_References is
   type LapInfo_Access is access all org.allbinary.game.layer.hud.LapInfo_Package.LapInfo'Class;
   type LapInfo_Access_Array is array (Natural range <>) of LapInfo_Access;
   type LapInfo_Access_Array_Access is access all LapInfo_Access_Array;
   type LapInfo_Access_Array_Access_Array is array (Natural range <>) of LapInfo_Access_Array_Access;
   type LapInfo_Access_Array_Access_Array_Access is access all LapInfo_Access_Array_Access_Array;
   type LapInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LapInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : LapInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LapInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LapInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LapInfo_Access_Array_Access is (if Value /= null and then Value.all in LapInfo_Access_Array_Object'Class then LapInfo_Access_Array_Object'Class (Value.all).Value else null);
   type LapInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LapInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LapInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LapInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LapInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LapInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LapInfo_Access_Array_Access_Array_Object'Class then LapInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.hud.LapInfo_Package_References;

with org.allbinary.game.layer.hud.LapInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.hud.LapInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LapInfo_Access is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access;
   function "=" (Left, Right : LapInfo_Access) return Boolean renames org.allbinary.game.layer.hud.LapInfo_Package_References."=";
   subtype LapInfo_Access_Array is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array;
   function "=" (Left, Right : LapInfo_Access_Array) return Boolean renames org.allbinary.game.layer.hud.LapInfo_Package_References."=";
   subtype LapInfo_Access_Array_Access is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array_Access;
   function "=" (Left, Right : LapInfo_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.LapInfo_Package_References."=";
   function Java_Box (Value : LapInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.LapInfo_Package_References.Java_Box;
   function Java_Unbox_LapInfo_Access_Array (Value : access Java_Object'Class) return LapInfo_Access_Array_Access renames org.allbinary.game.layer.hud.LapInfo_Package_References.Java_Unbox_LapInfo_Access_Array;
   subtype LapInfo_Access_Array_Access_Array is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array_Access_Array;
   function "=" (Left, Right : LapInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.LapInfo_Package_References."=";
   subtype LapInfo_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.LapInfo_Package_References.LapInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LapInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.LapInfo_Package_References."=";
   function Java_Box (Value : LapInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.hud.LapInfo_Package_References.Java_Box;
   function Java_Unbox_LapInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return LapInfo_Access_Array_Access_Array_Access renames org.allbinary.game.layer.hud.LapInfo_Package_References.Java_Unbox_LapInfo_Access_Array_Access_Array;

   type LapInfo is new Java_Object with record
      numberOfLaps : Integer;
      totalLaps : Integer;
   end record;
   NULL_LAP_INFO : LapInfo_Access;

   procedure Initialize (This : in out LapInfo'Class; totalLaps : Integer);
   function Create (totalLaps : Integer) return LapInfo_Access;
   procedure add (This : in out LapInfo);
   function getCurrentLap (This : in out LapInfo) return Integer;
   function getTotalLaps (This : in out LapInfo) return Integer;
   function isDone (This : in out LapInfo) return Boolean;
   function toString (This : in out LapInfo) return Unbounded_String;

end org.allbinary.game.layer.hud.LapInfo_Package;



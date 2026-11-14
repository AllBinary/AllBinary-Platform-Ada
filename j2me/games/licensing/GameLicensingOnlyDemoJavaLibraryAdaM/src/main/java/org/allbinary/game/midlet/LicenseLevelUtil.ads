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
limited with org.allbinary.game.midlet.LicenseLevelUtil_Package;
package org.allbinary.game.midlet.LicenseLevelUtil_Package_References is
   type LicenseLevelUtil_Access is access all org.allbinary.game.midlet.LicenseLevelUtil_Package.LicenseLevelUtil'Class;
   type LicenseLevelUtil_Access_Array is array (Natural range <>) of LicenseLevelUtil_Access;
   type LicenseLevelUtil_Access_Array_Access is access all LicenseLevelUtil_Access_Array;
   type LicenseLevelUtil_Access_Array_Access_Array is array (Natural range <>) of LicenseLevelUtil_Access_Array_Access;
   type LicenseLevelUtil_Access_Array_Access_Array_Access is access all LicenseLevelUtil_Access_Array_Access_Array;
   type LicenseLevelUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseLevelUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseLevelUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseLevelUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseLevelUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseLevelUtil_Access_Array_Access is (if Value /= null and then Value.all in LicenseLevelUtil_Access_Array_Object'Class then LicenseLevelUtil_Access_Array_Object'Class (Value.all).Value else null);
   type LicenseLevelUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseLevelUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseLevelUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseLevelUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseLevelUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseLevelUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LicenseLevelUtil_Access_Array_Access_Array_Object'Class then LicenseLevelUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.LicenseLevelUtil_Package_References;

with org.allbinary.game.midlet.LicenseLevelUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.midlet.LicenseLevelUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype LicenseLevelUtil_Access is org.allbinary.game.midlet.LicenseLevelUtil_Package_References.LicenseLevelUtil_Access;
   function "=" (Left, Right : LicenseLevelUtil_Access) return Boolean renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References."=";
   subtype LicenseLevelUtil_Access_Array is org.allbinary.game.midlet.LicenseLevelUtil_Package_References.LicenseLevelUtil_Access_Array;
   function "=" (Left, Right : LicenseLevelUtil_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References."=";
   subtype LicenseLevelUtil_Access_Array_Access is org.allbinary.game.midlet.LicenseLevelUtil_Package_References.LicenseLevelUtil_Access_Array_Access;
   function "=" (Left, Right : LicenseLevelUtil_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References."=";
   function Java_Box (Value : LicenseLevelUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References.Java_Box;
   function Java_Unbox_LicenseLevelUtil_Access_Array (Value : access Java_Object'Class) return LicenseLevelUtil_Access_Array_Access renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References.Java_Unbox_LicenseLevelUtil_Access_Array;
   subtype LicenseLevelUtil_Access_Array_Access_Array is org.allbinary.game.midlet.LicenseLevelUtil_Package_References.LicenseLevelUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseLevelUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References."=";
   subtype LicenseLevelUtil_Access_Array_Access_Array_Access is org.allbinary.game.midlet.LicenseLevelUtil_Package_References.LicenseLevelUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseLevelUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References."=";
   function Java_Box (Value : LicenseLevelUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References.Java_Box;
   function Java_Unbox_LicenseLevelUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return LicenseLevelUtil_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.LicenseLevelUtil_Package_References.Java_Unbox_LicenseLevelUtil_Access_Array_Access_Array;

   type LicenseLevelUtil is new Java_Object with null record;
   instance : LicenseLevelUtil_Access;

   procedure Initialize (This : in out LicenseLevelUtil'Class);
   function Create return LicenseLevelUtil_Access;
   function getInstance return LicenseLevelUtil_Access;
   function getMaxLevel (This : in out LicenseLevelUtil; maxLevel : Integer; demoLevel : Integer) return Integer;
   procedure getMaxLevel (This : in out LicenseLevelUtil; maxLevel : Integer; demoLevel : Integer);

end org.allbinary.game.midlet.LicenseLevelUtil_Package;



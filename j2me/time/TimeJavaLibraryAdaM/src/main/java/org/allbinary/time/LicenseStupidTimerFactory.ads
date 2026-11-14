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
limited with org.allbinary.time.LicenseStupidTimerFactory_Package;
package org.allbinary.time.LicenseStupidTimerFactory_Package_References is
   type LicenseStupidTimerFactory_Access is access all org.allbinary.time.LicenseStupidTimerFactory_Package.LicenseStupidTimerFactory'Class;
   type LicenseStupidTimerFactory_Access_Array is array (Natural range <>) of LicenseStupidTimerFactory_Access;
   type LicenseStupidTimerFactory_Access_Array_Access is access all LicenseStupidTimerFactory_Access_Array;
   type LicenseStupidTimerFactory_Access_Array_Access_Array is array (Natural range <>) of LicenseStupidTimerFactory_Access_Array_Access;
   type LicenseStupidTimerFactory_Access_Array_Access_Array_Access is access all LicenseStupidTimerFactory_Access_Array_Access_Array;
   type LicenseStupidTimerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseStupidTimerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseStupidTimerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseStupidTimerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseStupidTimerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseStupidTimerFactory_Access_Array_Access is (if Value /= null and then Value.all in LicenseStupidTimerFactory_Access_Array_Object'Class then LicenseStupidTimerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LicenseStupidTimerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LicenseStupidTimerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LicenseStupidTimerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LicenseStupidTimerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LicenseStupidTimerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LicenseStupidTimerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LicenseStupidTimerFactory_Access_Array_Access_Array_Object'Class then LicenseStupidTimerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.LicenseStupidTimerFactory_Package_References;

with org.allbinary.time.LicenseStupidTimerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.StupidTimer_Package;
with org.allbinary.time.StupidTimer_Package_References;

package org.allbinary.time.LicenseStupidTimerFactory_Package is

   package Reference_Types is
   subtype StupidTimer_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access;
   use type StupidTimer_Access;
   subtype StupidTimer_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array;
   use type StupidTimer_Access_Array;
   subtype StupidTimer_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access;
   use type StupidTimer_Access_Array_Access;
   subtype StupidTimer_Access_Array_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array;
   use type StupidTimer_Access_Array_Access_Array;
   subtype StupidTimer_Access_Array_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array_Access;
   use type StupidTimer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseStupidTimerFactory_Access is org.allbinary.time.LicenseStupidTimerFactory_Package_References.LicenseStupidTimerFactory_Access;
   function "=" (Left, Right : LicenseStupidTimerFactory_Access) return Boolean renames org.allbinary.time.LicenseStupidTimerFactory_Package_References."=";
   subtype LicenseStupidTimerFactory_Access_Array is org.allbinary.time.LicenseStupidTimerFactory_Package_References.LicenseStupidTimerFactory_Access_Array;
   function "=" (Left, Right : LicenseStupidTimerFactory_Access_Array) return Boolean renames org.allbinary.time.LicenseStupidTimerFactory_Package_References."=";
   subtype LicenseStupidTimerFactory_Access_Array_Access is org.allbinary.time.LicenseStupidTimerFactory_Package_References.LicenseStupidTimerFactory_Access_Array_Access;
   function "=" (Left, Right : LicenseStupidTimerFactory_Access_Array_Access) return Boolean renames org.allbinary.time.LicenseStupidTimerFactory_Package_References."=";
   function Java_Box (Value : LicenseStupidTimerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.LicenseStupidTimerFactory_Package_References.Java_Box;
   function Java_Unbox_LicenseStupidTimerFactory_Access_Array (Value : access Java_Object'Class) return LicenseStupidTimerFactory_Access_Array_Access renames org.allbinary.time.LicenseStupidTimerFactory_Package_References.Java_Unbox_LicenseStupidTimerFactory_Access_Array;
   subtype LicenseStupidTimerFactory_Access_Array_Access_Array is org.allbinary.time.LicenseStupidTimerFactory_Package_References.LicenseStupidTimerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseStupidTimerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.time.LicenseStupidTimerFactory_Package_References."=";
   subtype LicenseStupidTimerFactory_Access_Array_Access_Array_Access is org.allbinary.time.LicenseStupidTimerFactory_Package_References.LicenseStupidTimerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseStupidTimerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.LicenseStupidTimerFactory_Package_References."=";
   function Java_Box (Value : LicenseStupidTimerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.LicenseStupidTimerFactory_Package_References.Java_Box;
   function Java_Unbox_LicenseStupidTimerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LicenseStupidTimerFactory_Access_Array_Access_Array_Access renames org.allbinary.time.LicenseStupidTimerFactory_Package_References.Java_Unbox_LicenseStupidTimerFactory_Access_Array_Access_Array;

   type LicenseStupidTimerFactory is new Java_Object with null record;
   instance : StupidTimer_Access;

   procedure Initialize (This : in out LicenseStupidTimerFactory'Class);
   function Create return LicenseStupidTimerFactory_Access;
   function getInstance return StupidTimer_Access;

end org.allbinary.time.LicenseStupidTimerFactory_Package;



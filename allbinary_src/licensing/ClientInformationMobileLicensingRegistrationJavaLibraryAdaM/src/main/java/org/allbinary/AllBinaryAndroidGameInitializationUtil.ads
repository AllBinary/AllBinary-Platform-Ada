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
limited with org.allbinary.AllBinaryAndroidGameInitializationUtil_Package;
package org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References is
   type AllBinaryAndroidGameInitializationUtil_Access is access all org.allbinary.AllBinaryAndroidGameInitializationUtil_Package.AllBinaryAndroidGameInitializationUtil'Class;
   type AllBinaryAndroidGameInitializationUtil_Access_Array is array (Natural range <>) of AllBinaryAndroidGameInitializationUtil_Access;
   type AllBinaryAndroidGameInitializationUtil_Access_Array_Access is access all AllBinaryAndroidGameInitializationUtil_Access_Array;
   type AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array is array (Natural range <>) of AllBinaryAndroidGameInitializationUtil_Access_Array_Access;
   type AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access is access all AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array;
   type AllBinaryAndroidGameInitializationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAndroidGameInitializationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAndroidGameInitializationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAndroidGameInitializationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAndroidGameInitializationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAndroidGameInitializationUtil_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAndroidGameInitializationUtil_Access_Array_Object'Class then AllBinaryAndroidGameInitializationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Object'Class then AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References;

with org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.AllBinaryAndroidGameInitializationUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryAndroidGameInitializationUtil_Access is org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.AllBinaryAndroidGameInitializationUtil_Access;
   function "=" (Left, Right : AllBinaryAndroidGameInitializationUtil_Access) return Boolean renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References."=";
   subtype AllBinaryAndroidGameInitializationUtil_Access_Array is org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.AllBinaryAndroidGameInitializationUtil_Access_Array;
   function "=" (Left, Right : AllBinaryAndroidGameInitializationUtil_Access_Array) return Boolean renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References."=";
   subtype AllBinaryAndroidGameInitializationUtil_Access_Array_Access is org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.AllBinaryAndroidGameInitializationUtil_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAndroidGameInitializationUtil_Access_Array_Access) return Boolean renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References."=";
   function Java_Box (Value : AllBinaryAndroidGameInitializationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAndroidGameInitializationUtil_Access_Array (Value : access Java_Object'Class) return AllBinaryAndroidGameInitializationUtil_Access_Array_Access renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.Java_Unbox_AllBinaryAndroidGameInitializationUtil_Access_Array;
   subtype AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array is org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References."=";
   subtype AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access is org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References."=";
   function Java_Box (Value : AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array_Access renames org.allbinary.AllBinaryAndroidGameInitializationUtil_Package_References.Java_Unbox_AllBinaryAndroidGameInitializationUtil_Access_Array_Access_Array;

   type AllBinaryAndroidGameInitializationUtil is new Java_Object with null record;

   procedure Initialize (This : in out AllBinaryAndroidGameInitializationUtil'Class);
   function Create return AllBinaryAndroidGameInitializationUtil_Access;
   procedure init;

end org.allbinary.AllBinaryAndroidGameInitializationUtil_Package;



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
limited with org.allbinary.media.AllBinaryVibration_Package;
package org.allbinary.media.AllBinaryVibration_Package_References is
   type AllBinaryVibration_Access is access all org.allbinary.media.AllBinaryVibration_Package.AllBinaryVibration'Class;
   type AllBinaryVibration_Access_Array is array (Natural range <>) of AllBinaryVibration_Access;
   type AllBinaryVibration_Access_Array_Access is access all AllBinaryVibration_Access_Array;
   type AllBinaryVibration_Access_Array_Access_Array is array (Natural range <>) of AllBinaryVibration_Access_Array_Access;
   type AllBinaryVibration_Access_Array_Access_Array_Access is access all AllBinaryVibration_Access_Array_Access_Array;
   type AllBinaryVibration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryVibration_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryVibration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryVibration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryVibration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryVibration_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryVibration_Access_Array_Object'Class then AllBinaryVibration_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryVibration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryVibration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryVibration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryVibration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryVibration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryVibration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryVibration_Access_Array_Access_Array_Object'Class then AllBinaryVibration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.AllBinaryVibration_Package_References;

with org.allbinary.media.AllBinaryVibration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;

package org.allbinary.media.AllBinaryVibration_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryVibration_Access is org.allbinary.media.AllBinaryVibration_Package_References.AllBinaryVibration_Access;
   function "=" (Left, Right : AllBinaryVibration_Access) return Boolean renames org.allbinary.media.AllBinaryVibration_Package_References."=";
   subtype AllBinaryVibration_Access_Array is org.allbinary.media.AllBinaryVibration_Package_References.AllBinaryVibration_Access_Array;
   function "=" (Left, Right : AllBinaryVibration_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibration_Package_References."=";
   subtype AllBinaryVibration_Access_Array_Access is org.allbinary.media.AllBinaryVibration_Package_References.AllBinaryVibration_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibration_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibration_Package_References."=";
   function Java_Box (Value : AllBinaryVibration_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.AllBinaryVibration_Package_References.Java_Box;
   function Java_Unbox_AllBinaryVibration_Access_Array (Value : access Java_Object'Class) return AllBinaryVibration_Access_Array_Access renames org.allbinary.media.AllBinaryVibration_Package_References.Java_Unbox_AllBinaryVibration_Access_Array;
   subtype AllBinaryVibration_Access_Array_Access_Array is org.allbinary.media.AllBinaryVibration_Package_References.AllBinaryVibration_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryVibration_Access_Array_Access_Array) return Boolean renames org.allbinary.media.AllBinaryVibration_Package_References."=";
   subtype AllBinaryVibration_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryVibration_Package_References.AllBinaryVibration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryVibration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.AllBinaryVibration_Package_References."=";
   function Java_Box (Value : AllBinaryVibration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.AllBinaryVibration_Package_References.Java_Box;
   function Java_Unbox_AllBinaryVibration_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryVibration_Access_Array_Access_Array_Access renames org.allbinary.media.AllBinaryVibration_Package_References.Java_Unbox_AllBinaryVibration_Access_Array_Access_Array;

   type AllBinaryVibration is new AllBinaryVibrationME with null record;
   VIBRATION : AllBinaryVibrationME_Access;

   procedure Initialize (This : in out AllBinaryVibration'Class);
   function Create return AllBinaryVibration_Access;
   function getInstance return AllBinaryVibrationME_Access;
   procedure init;
   procedure vibrate (This : in out AllBinaryVibration; duration : Integer; type_Id : Integer; volume : Integer);

end org.allbinary.media.AllBinaryVibration_Package;



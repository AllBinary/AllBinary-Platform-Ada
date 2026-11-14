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
limited with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;
package org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References is
   type SensorGameUpdateProcessor_Access is access all org.allbinary.input.gyro.SensorGameUpdateProcessor_Package.SensorGameUpdateProcessor'Class;
   type SensorGameUpdateProcessor_Access_Array is array (Natural range <>) of SensorGameUpdateProcessor_Access;
   type SensorGameUpdateProcessor_Access_Array_Access is access all SensorGameUpdateProcessor_Access_Array;
   type SensorGameUpdateProcessor_Access_Array_Access_Array is array (Natural range <>) of SensorGameUpdateProcessor_Access_Array_Access;
   type SensorGameUpdateProcessor_Access_Array_Access_Array_Access is access all SensorGameUpdateProcessor_Access_Array_Access_Array;
   type SensorGameUpdateProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SensorGameUpdateProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SensorGameUpdateProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SensorGameUpdateProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SensorGameUpdateProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SensorGameUpdateProcessor_Access_Array_Access is (if Value /= null and then Value.all in SensorGameUpdateProcessor_Access_Array_Object'Class then SensorGameUpdateProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SensorGameUpdateProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SensorGameUpdateProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SensorGameUpdateProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SensorGameUpdateProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SensorGameUpdateProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SensorGameUpdateProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SensorGameUpdateProcessor_Access_Array_Access_Array_Object'Class then SensorGameUpdateProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References;

with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.AllBinarySensor_Package;
with org.allbinary.input.AllBinarySensor_Package_References;

package org.allbinary.input.gyro.SensorGameUpdateProcessor_Package is

   package AllBinarySensor_Package renames Standard.org.allbinary.input.AllBinarySensor_Package;
   package Reference_Types is
   subtype AllBinarySensor_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access;
   use type AllBinarySensor_Access;
   subtype AllBinarySensor_Access_Array is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array;
   use type AllBinarySensor_Access_Array;
   subtype AllBinarySensor_Access_Array_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access;
   use type AllBinarySensor_Access_Array_Access;
   subtype AllBinarySensor_Access_Array_Access_Array is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access_Array;
   use type AllBinarySensor_Access_Array_Access_Array;
   subtype AllBinarySensor_Access_Array_Access_Array_Access is org.allbinary.input.AllBinarySensor_Package_References.AllBinarySensor_Access_Array_Access_Array_Access;
   use type AllBinarySensor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SensorGameUpdateProcessor_Access is org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.SensorGameUpdateProcessor_Access;
   function "=" (Left, Right : SensorGameUpdateProcessor_Access) return Boolean renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References."=";
   subtype SensorGameUpdateProcessor_Access_Array is org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.SensorGameUpdateProcessor_Access_Array;
   function "=" (Left, Right : SensorGameUpdateProcessor_Access_Array) return Boolean renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References."=";
   subtype SensorGameUpdateProcessor_Access_Array_Access is org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.SensorGameUpdateProcessor_Access_Array_Access;
   function "=" (Left, Right : SensorGameUpdateProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References."=";
   function Java_Box (Value : SensorGameUpdateProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.Java_Box;
   function Java_Unbox_SensorGameUpdateProcessor_Access_Array (Value : access Java_Object'Class) return SensorGameUpdateProcessor_Access_Array_Access renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.Java_Unbox_SensorGameUpdateProcessor_Access_Array;
   subtype SensorGameUpdateProcessor_Access_Array_Access_Array is org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.SensorGameUpdateProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SensorGameUpdateProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References."=";
   subtype SensorGameUpdateProcessor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.SensorGameUpdateProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SensorGameUpdateProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References."=";
   function Java_Box (Value : SensorGameUpdateProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.Java_Box;
   function Java_Unbox_SensorGameUpdateProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SensorGameUpdateProcessor_Access_Array_Access_Array_Access renames org.allbinary.input.gyro.SensorGameUpdateProcessor_Package_References.Java_Unbox_SensorGameUpdateProcessor_Access_Array_Access_Array;

   type SensorGameUpdateProcessor is new Java_Object with record
      inputSensor : AllBinarySensor_Access;
   end record;

   procedure Initialize (This : in out SensorGameUpdateProcessor'Class);
   function Create return SensorGameUpdateProcessor_Access;
   procedure setInputSensor (This : in out SensorGameUpdateProcessor; inputSensor_Param : access AllBinarySensor_Package.AllBinarySensor'Class);
   function getInputSensor (This : in out SensorGameUpdateProcessor) return AllBinarySensor_Access;
   procedure process (This : in out SensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   procedure sendNotifications (This : in out SensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   function isAnySensor (This : in out SensorGameUpdateProcessor) return Boolean;
   procedure setNoSensors (This : in out SensorGameUpdateProcessor);
   procedure process (This : in out SensorGameUpdateProcessor; Value : Unbounded_String);
   procedure sendNotifications (This : in out SensorGameUpdateProcessor; Value : Unbounded_String);

end org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;



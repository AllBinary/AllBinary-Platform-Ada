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
limited with org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;
package org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References is
   type AccelerometerSensorFactory_Access is access all org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package.AccelerometerSensorFactory'Class;
   type AccelerometerSensorFactory_Access_Array is array (Natural range <>) of AccelerometerSensorFactory_Access;
   type AccelerometerSensorFactory_Access_Array_Access is access all AccelerometerSensorFactory_Access_Array;
   type AccelerometerSensorFactory_Access_Array_Access_Array is array (Natural range <>) of AccelerometerSensorFactory_Access_Array_Access;
   type AccelerometerSensorFactory_Access_Array_Access_Array_Access is access all AccelerometerSensorFactory_Access_Array_Access_Array;
   type AccelerometerSensorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AccelerometerSensorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AccelerometerSensorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AccelerometerSensorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AccelerometerSensorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AccelerometerSensorFactory_Access_Array_Access is (if Value /= null and then Value.all in AccelerometerSensorFactory_Access_Array_Object'Class then AccelerometerSensorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AccelerometerSensorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AccelerometerSensorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AccelerometerSensorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AccelerometerSensorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AccelerometerSensorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AccelerometerSensorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AccelerometerSensorFactory_Access_Array_Access_Array_Object'Class then AccelerometerSensorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References;

with org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
with org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References;

package org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package is

   package AllBinaryOrientationSensor_Package renames Standard.org.allbinary.input.gyro.AllBinaryOrientationSensor_Package;
   package Reference_Types is
   subtype AllBinaryOrientationSensor_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access;
   use type AllBinaryOrientationSensor_Access;
   subtype AllBinaryOrientationSensor_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array;
   use type AllBinaryOrientationSensor_Access_Array;
   subtype AllBinaryOrientationSensor_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access;
   use type AllBinaryOrientationSensor_Access_Array_Access;
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array;
   use type AllBinaryOrientationSensor_Access_Array_Access_Array;
   subtype AllBinaryOrientationSensor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.AllBinaryOrientationSensor_Package_References.AllBinaryOrientationSensor_Access_Array_Access_Array_Access;
   use type AllBinaryOrientationSensor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AccelerometerSensorFactory_Access is org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.AccelerometerSensorFactory_Access;
   function "=" (Left, Right : AccelerometerSensorFactory_Access) return Boolean renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References."=";
   subtype AccelerometerSensorFactory_Access_Array is org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.AccelerometerSensorFactory_Access_Array;
   function "=" (Left, Right : AccelerometerSensorFactory_Access_Array) return Boolean renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References."=";
   subtype AccelerometerSensorFactory_Access_Array_Access is org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.AccelerometerSensorFactory_Access_Array_Access;
   function "=" (Left, Right : AccelerometerSensorFactory_Access_Array_Access) return Boolean renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References."=";
   function Java_Box (Value : AccelerometerSensorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.Java_Box;
   function Java_Unbox_AccelerometerSensorFactory_Access_Array (Value : access Java_Object'Class) return AccelerometerSensorFactory_Access_Array_Access renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.Java_Unbox_AccelerometerSensorFactory_Access_Array;
   subtype AccelerometerSensorFactory_Access_Array_Access_Array is org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.AccelerometerSensorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AccelerometerSensorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References."=";
   subtype AccelerometerSensorFactory_Access_Array_Access_Array_Access is org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.AccelerometerSensorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AccelerometerSensorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References."=";
   function Java_Box (Value : AccelerometerSensorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.Java_Box;
   function Java_Unbox_AccelerometerSensorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AccelerometerSensorFactory_Access_Array_Access_Array_Access renames org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package_References.Java_Unbox_AccelerometerSensorFactory_Access_Array_Access_Array;

   type AccelerometerSensorFactory is new Java_Object with null record;
   allBinaryAccelerometerSensor : AllBinaryOrientationSensor_Access;

   procedure Initialize (This : in out AccelerometerSensorFactory'Class);
   function Create return AccelerometerSensorFactory_Access;
   procedure init;
   function getInstance return AllBinaryOrientationSensor_Access;

end org.allbinary.input.accelerometer.AccelerometerSensorFactory_Package;



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
limited with org.allbinary.input.gyro.GyroSensorFactory_Package;
package org.allbinary.input.gyro.GyroSensorFactory_Package_References is
   type GyroSensorFactory_Access is access all org.allbinary.input.gyro.GyroSensorFactory_Package.GyroSensorFactory'Class;
   type GyroSensorFactory_Access_Array is array (Natural range <>) of GyroSensorFactory_Access;
   type GyroSensorFactory_Access_Array_Access is access all GyroSensorFactory_Access_Array;
   type GyroSensorFactory_Access_Array_Access_Array is array (Natural range <>) of GyroSensorFactory_Access_Array_Access;
   type GyroSensorFactory_Access_Array_Access_Array_Access is access all GyroSensorFactory_Access_Array_Access_Array;
   type GyroSensorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GyroSensorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GyroSensorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GyroSensorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GyroSensorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GyroSensorFactory_Access_Array_Access is (if Value /= null and then Value.all in GyroSensorFactory_Access_Array_Object'Class then GyroSensorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GyroSensorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GyroSensorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GyroSensorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GyroSensorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GyroSensorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GyroSensorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GyroSensorFactory_Access_Array_Access_Array_Object'Class then GyroSensorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.gyro.GyroSensorFactory_Package_References;

with org.allbinary.input.gyro.GyroSensorFactory_Package_References;
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

package org.allbinary.input.gyro.GyroSensorFactory_Package is

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


   subtype GyroSensorFactory_Access is org.allbinary.input.gyro.GyroSensorFactory_Package_References.GyroSensorFactory_Access;
   function "=" (Left, Right : GyroSensorFactory_Access) return Boolean renames org.allbinary.input.gyro.GyroSensorFactory_Package_References."=";
   subtype GyroSensorFactory_Access_Array is org.allbinary.input.gyro.GyroSensorFactory_Package_References.GyroSensorFactory_Access_Array;
   function "=" (Left, Right : GyroSensorFactory_Access_Array) return Boolean renames org.allbinary.input.gyro.GyroSensorFactory_Package_References."=";
   subtype GyroSensorFactory_Access_Array_Access is org.allbinary.input.gyro.GyroSensorFactory_Package_References.GyroSensorFactory_Access_Array_Access;
   function "=" (Left, Right : GyroSensorFactory_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.GyroSensorFactory_Package_References."=";
   function Java_Box (Value : GyroSensorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.GyroSensorFactory_Package_References.Java_Box;
   function Java_Unbox_GyroSensorFactory_Access_Array (Value : access Java_Object'Class) return GyroSensorFactory_Access_Array_Access renames org.allbinary.input.gyro.GyroSensorFactory_Package_References.Java_Unbox_GyroSensorFactory_Access_Array;
   subtype GyroSensorFactory_Access_Array_Access_Array is org.allbinary.input.gyro.GyroSensorFactory_Package_References.GyroSensorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GyroSensorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.GyroSensorFactory_Package_References."=";
   subtype GyroSensorFactory_Access_Array_Access_Array_Access is org.allbinary.input.gyro.GyroSensorFactory_Package_References.GyroSensorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GyroSensorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.GyroSensorFactory_Package_References."=";
   function Java_Box (Value : GyroSensorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.GyroSensorFactory_Package_References.Java_Box;
   function Java_Unbox_GyroSensorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GyroSensorFactory_Access_Array_Access_Array_Access renames org.allbinary.input.gyro.GyroSensorFactory_Package_References.Java_Unbox_GyroSensorFactory_Access_Array_Access_Array;

   type GyroSensorFactory is new Java_Object with null record;
   allBinaryGyroSensor : AllBinaryOrientationSensor_Access;

   procedure Initialize (This : in out GyroSensorFactory'Class);
   function Create return GyroSensorFactory_Access;
   procedure init;
   function getInstance return AllBinaryOrientationSensor_Access;

end org.allbinary.input.gyro.GyroSensorFactory_Package;



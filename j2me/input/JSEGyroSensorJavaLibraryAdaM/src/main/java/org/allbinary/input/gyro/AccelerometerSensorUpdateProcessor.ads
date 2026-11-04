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

limited with org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package;
package org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References is
   type AccelerometerSensorUpdateProcessor_Access is access all org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package.AccelerometerSensorUpdateProcessor'Class;
   type AccelerometerSensorUpdateProcessor_Access_Array is array (Natural range <>) of AccelerometerSensorUpdateProcessor_Access;
   type AccelerometerSensorUpdateProcessor_Access_Array_Access is access all AccelerometerSensorUpdateProcessor_Access_Array;
   type AccelerometerSensorUpdateProcessor_Access_Array_Access_Array is array (Natural range <>) of AccelerometerSensorUpdateProcessor_Access_Array_Access;
   type AccelerometerSensorUpdateProcessor_Access_Array_Access_Array_Access is access all AccelerometerSensorUpdateProcessor_Access_Array_Access_Array;
end org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References;

with org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AccelerometerSensorUpdateProcessor_Access is org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References.AccelerometerSensorUpdateProcessor_Access;
   function "=" (Left, Right : AccelerometerSensorUpdateProcessor_Access) return Boolean renames org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References."=";
   subtype AccelerometerSensorUpdateProcessor_Access_Array is org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References.AccelerometerSensorUpdateProcessor_Access_Array;
   function "=" (Left, Right : AccelerometerSensorUpdateProcessor_Access_Array) return Boolean renames org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References."=";
   subtype AccelerometerSensorUpdateProcessor_Access_Array_Access is org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References.AccelerometerSensorUpdateProcessor_Access_Array_Access;
   function "=" (Left, Right : AccelerometerSensorUpdateProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References."=";
   subtype AccelerometerSensorUpdateProcessor_Access_Array_Access_Array is org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References.AccelerometerSensorUpdateProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : AccelerometerSensorUpdateProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References."=";
   subtype AccelerometerSensorUpdateProcessor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References.AccelerometerSensorUpdateProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AccelerometerSensorUpdateProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package_References."=";

   type AccelerometerSensorUpdateProcessor is new Processor with null record;

   procedure Initialize (This : in out AccelerometerSensorUpdateProcessor'Class);
   function Create return AccelerometerSensorUpdateProcessor_Access;
   procedure process (This : in out AccelerometerSensorUpdateProcessor);

end org.allbinary.input.gyro.AccelerometerSensorUpdateProcessor_Package;



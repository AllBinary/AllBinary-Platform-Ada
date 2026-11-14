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
limited with org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package;
package org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References is
   type GyroSensorUpdateProcessor_Access is access all org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package.GyroSensorUpdateProcessor'Class;
   type GyroSensorUpdateProcessor_Access_Array is array (Natural range <>) of GyroSensorUpdateProcessor_Access;
   type GyroSensorUpdateProcessor_Access_Array_Access is access all GyroSensorUpdateProcessor_Access_Array;
   type GyroSensorUpdateProcessor_Access_Array_Access_Array is array (Natural range <>) of GyroSensorUpdateProcessor_Access_Array_Access;
   type GyroSensorUpdateProcessor_Access_Array_Access_Array_Access is access all GyroSensorUpdateProcessor_Access_Array_Access_Array;
   type GyroSensorUpdateProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GyroSensorUpdateProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : GyroSensorUpdateProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GyroSensorUpdateProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GyroSensorUpdateProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GyroSensorUpdateProcessor_Access_Array_Access is (if Value /= null and then Value.all in GyroSensorUpdateProcessor_Access_Array_Object'Class then GyroSensorUpdateProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type GyroSensorUpdateProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GyroSensorUpdateProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GyroSensorUpdateProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GyroSensorUpdateProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GyroSensorUpdateProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GyroSensorUpdateProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GyroSensorUpdateProcessor_Access_Array_Access_Array_Object'Class then GyroSensorUpdateProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References;

with org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GyroSensorUpdateProcessor_Access is org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.GyroSensorUpdateProcessor_Access;
   function "=" (Left, Right : GyroSensorUpdateProcessor_Access) return Boolean renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References."=";
   subtype GyroSensorUpdateProcessor_Access_Array is org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.GyroSensorUpdateProcessor_Access_Array;
   function "=" (Left, Right : GyroSensorUpdateProcessor_Access_Array) return Boolean renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References."=";
   subtype GyroSensorUpdateProcessor_Access_Array_Access is org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.GyroSensorUpdateProcessor_Access_Array_Access;
   function "=" (Left, Right : GyroSensorUpdateProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References."=";
   function Java_Box (Value : GyroSensorUpdateProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.Java_Box;
   function Java_Unbox_GyroSensorUpdateProcessor_Access_Array (Value : access Java_Object'Class) return GyroSensorUpdateProcessor_Access_Array_Access renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.Java_Unbox_GyroSensorUpdateProcessor_Access_Array;
   subtype GyroSensorUpdateProcessor_Access_Array_Access_Array is org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.GyroSensorUpdateProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GyroSensorUpdateProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References."=";
   subtype GyroSensorUpdateProcessor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.GyroSensorUpdateProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GyroSensorUpdateProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References."=";
   function Java_Box (Value : GyroSensorUpdateProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.Java_Box;
   function Java_Unbox_GyroSensorUpdateProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return GyroSensorUpdateProcessor_Access_Array_Access_Array_Access renames org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package_References.Java_Unbox_GyroSensorUpdateProcessor_Access_Array_Access_Array;

   type GyroSensorUpdateProcessor is new Processor with null record;

   procedure Initialize (This : in out GyroSensorUpdateProcessor'Class);
   function Create return GyroSensorUpdateProcessor_Access;
   procedure process (This : in out GyroSensorUpdateProcessor);

end org.allbinary.input.gyro.GyroSensorUpdateProcessor_Package;



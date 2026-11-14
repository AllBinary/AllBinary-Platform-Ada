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
limited with org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package;
package org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References is
   type SingleSensorGameUpdateProcessor_Access is access all org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package.SingleSensorGameUpdateProcessor'Class;
   type SingleSensorGameUpdateProcessor_Access_Array is array (Natural range <>) of SingleSensorGameUpdateProcessor_Access;
   type SingleSensorGameUpdateProcessor_Access_Array_Access is access all SingleSensorGameUpdateProcessor_Access_Array;
   type SingleSensorGameUpdateProcessor_Access_Array_Access_Array is array (Natural range <>) of SingleSensorGameUpdateProcessor_Access_Array_Access;
   type SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access is access all SingleSensorGameUpdateProcessor_Access_Array_Access_Array;
   type SingleSensorGameUpdateProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SingleSensorGameUpdateProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SingleSensorGameUpdateProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SingleSensorGameUpdateProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SingleSensorGameUpdateProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SingleSensorGameUpdateProcessor_Access_Array_Access is (if Value /= null and then Value.all in SingleSensorGameUpdateProcessor_Access_Array_Object'Class then SingleSensorGameUpdateProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SingleSensorGameUpdateProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Object'Class then SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References;

with org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package; use org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;

package org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   use type Processor_Access;
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   use type Processor_Access_Array;
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   use type Processor_Access_Array_Access;
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   use type Processor_Access_Array_Access_Array;
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   use type Processor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SingleSensorGameUpdateProcessor_Access is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array_Access is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array_Access;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   function Java_Box (Value : SingleSensorGameUpdateProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.Java_Box;
   function Java_Unbox_SingleSensorGameUpdateProcessor_Access_Array (Value : access Java_Object'Class) return SingleSensorGameUpdateProcessor_Access_Array_Access renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.Java_Unbox_SingleSensorGameUpdateProcessor_Access_Array;
   subtype SingleSensorGameUpdateProcessor_Access_Array_Access_Array is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   function Java_Box (Value : SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.Java_Box;
   function Java_Unbox_SingleSensorGameUpdateProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.Java_Unbox_SingleSensorGameUpdateProcessor_Access_Array_Access_Array;

   type SingleSensorGameUpdateProcessor is new SensorGameUpdateProcessor with record
      accelerometerSensorUpdateProcessor : Processor_Access;
      gyroSensorUpdateProcessor : Processor_Access;
   end record;

   procedure Initialize (This : in out SingleSensorGameUpdateProcessor'Class);
   function Create return SingleSensorGameUpdateProcessor_Access;
   procedure process (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   procedure sendNotifications (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   procedure process (This : in out SingleSensorGameUpdateProcessor; Value : Unbounded_String);
   procedure sendNotifications (This : in out SingleSensorGameUpdateProcessor; Value : Unbounded_String);

end org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package;



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

limited with org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package;
package org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References is
   type SingleSensorGameUpdateProcessor_Access is access all org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package.SingleSensorGameUpdateProcessor'Class;
   type SingleSensorGameUpdateProcessor_Access_Array is array (Natural range <>) of SingleSensorGameUpdateProcessor_Access;
   type SingleSensorGameUpdateProcessor_Access_Array_Access is access all SingleSensorGameUpdateProcessor_Access_Array;
   type SingleSensorGameUpdateProcessor_Access_Array_Access_Array is array (Natural range <>) of SingleSensorGameUpdateProcessor_Access_Array_Access;
   type SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access is access all SingleSensorGameUpdateProcessor_Access_Array_Access_Array;
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
with org.allbinary.input.gyro.SensorGameUpdateProcessor_Package; use org.allbinary.input.gyro.SensorGameUpdateProcessor_Package;

package org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype SingleSensorGameUpdateProcessor_Access is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array_Access is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array_Access;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array_Access_Array is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";
   subtype SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access is org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References.SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SingleSensorGameUpdateProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package_References."=";

   type SingleSensorGameUpdateProcessor is new SensorGameUpdateProcessor with null record;

   procedure Initialize (This : in out SingleSensorGameUpdateProcessor'Class);
   function Create return SingleSensorGameUpdateProcessor_Access;
   procedure process (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   procedure sendNotifications (This : in out SingleSensorGameUpdateProcessor; anyType_Param : access Java_Object'Class);
   procedure process (This : in out SingleSensorGameUpdateProcessor; Value : Unbounded_String);
   procedure sendNotifications (This : in out SingleSensorGameUpdateProcessor; Value : Unbounded_String);

end org.allbinary.input.gyro.SingleSensorGameUpdateProcessor_Package;



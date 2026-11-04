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

limited with org.allbinary.input.gyro.OrientationData_Package;
package org.allbinary.input.gyro.OrientationData_Package_References is
   type OrientationData_Access is access all org.allbinary.input.gyro.OrientationData_Package.OrientationData'Class;
   type OrientationData_Access_Array is array (Natural range <>) of OrientationData_Access;
   type OrientationData_Access_Array_Access is access all OrientationData_Access_Array;
   type OrientationData_Access_Array_Access_Array is array (Natural range <>) of OrientationData_Access_Array_Access;
   type OrientationData_Access_Array_Access_Array_Access is access all OrientationData_Access_Array_Access_Array;
end org.allbinary.input.gyro.OrientationData_Package_References;

with org.allbinary.input.gyro.OrientationData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.gyro.OrientationData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OrientationData_Access is org.allbinary.input.gyro.OrientationData_Package_References.OrientationData_Access;
   function "=" (Left, Right : OrientationData_Access) return Boolean renames org.allbinary.input.gyro.OrientationData_Package_References."=";
   subtype OrientationData_Access_Array is org.allbinary.input.gyro.OrientationData_Package_References.OrientationData_Access_Array;
   function "=" (Left, Right : OrientationData_Access_Array) return Boolean renames org.allbinary.input.gyro.OrientationData_Package_References."=";
   subtype OrientationData_Access_Array_Access is org.allbinary.input.gyro.OrientationData_Package_References.OrientationData_Access_Array_Access;
   function "=" (Left, Right : OrientationData_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.OrientationData_Package_References."=";
   subtype OrientationData_Access_Array_Access_Array is org.allbinary.input.gyro.OrientationData_Package_References.OrientationData_Access_Array_Access_Array;
   function "=" (Left, Right : OrientationData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.gyro.OrientationData_Package_References."=";
   subtype OrientationData_Access_Array_Access_Array_Access is org.allbinary.input.gyro.OrientationData_Package_References.OrientationData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrientationData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.gyro.OrientationData_Package_References."=";

   type OrientationData is new Java_Object with record
      ORIENTATION_SENSOR_INPUT : Unbounded_String;
      ORIENTATION_TYPE : Unbounded_String;
   end record;
   SINGLETON : OrientationData_Access;

   procedure Initialize (This : in out OrientationData'Class);
   function Create return OrientationData_Access;
   function getInstance return OrientationData_Access;

end org.allbinary.input.gyro.OrientationData_Package;



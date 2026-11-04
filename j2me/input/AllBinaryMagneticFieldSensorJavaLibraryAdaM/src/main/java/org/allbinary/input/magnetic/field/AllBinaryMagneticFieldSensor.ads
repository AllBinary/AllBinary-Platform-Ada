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

limited with org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package;
package org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References is
   type AllBinaryMagneticFieldSensor_Access is access all org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package.AllBinaryMagneticFieldSensor'Class;
   type AllBinaryMagneticFieldSensor_Access_Array is array (Natural range <>) of AllBinaryMagneticFieldSensor_Access;
   type AllBinaryMagneticFieldSensor_Access_Array_Access is access all AllBinaryMagneticFieldSensor_Access_Array;
   type AllBinaryMagneticFieldSensor_Access_Array_Access_Array is array (Natural range <>) of AllBinaryMagneticFieldSensor_Access_Array_Access;
   type AllBinaryMagneticFieldSensor_Access_Array_Access_Array_Access is access all AllBinaryMagneticFieldSensor_Access_Array_Access_Array;
end org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References;

with org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.AllBinarySensor_Package; use org.allbinary.input.AllBinarySensor_Package;

package org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package is

   package AllBinarySensor_Package renames Standard.org.allbinary.input.AllBinarySensor_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryMagneticFieldSensor_Access is org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References.AllBinaryMagneticFieldSensor_Access;
   function "=" (Left, Right : AllBinaryMagneticFieldSensor_Access) return Boolean renames org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References."=";
   subtype AllBinaryMagneticFieldSensor_Access_Array is org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References.AllBinaryMagneticFieldSensor_Access_Array;
   function "=" (Left, Right : AllBinaryMagneticFieldSensor_Access_Array) return Boolean renames org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References."=";
   subtype AllBinaryMagneticFieldSensor_Access_Array_Access is org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References.AllBinaryMagneticFieldSensor_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMagneticFieldSensor_Access_Array_Access) return Boolean renames org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References."=";
   subtype AllBinaryMagneticFieldSensor_Access_Array_Access_Array is org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References.AllBinaryMagneticFieldSensor_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMagneticFieldSensor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References."=";
   subtype AllBinaryMagneticFieldSensor_Access_Array_Access_Array_Access is org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References.AllBinaryMagneticFieldSensor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMagneticFieldSensor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package_References."=";

   type AllBinaryMagneticFieldSensor is new AllBinarySensor with null record;

   procedure Initialize (This : in out AllBinaryMagneticFieldSensor'Class);
   function Create return AllBinaryMagneticFieldSensor_Access;

end org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package;



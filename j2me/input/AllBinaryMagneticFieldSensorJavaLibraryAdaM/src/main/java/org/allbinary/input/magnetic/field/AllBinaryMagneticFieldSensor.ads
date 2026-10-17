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

   package AllBinarySensor_Package renames org.allbinary.input.AllBinarySensor_Package;

   type AllBinaryMagneticFieldSensor is tagged;
   type AllBinaryMagneticFieldSensor_Access is access all AllBinaryMagneticFieldSensor'Class;
   type AllBinaryMagneticFieldSensor_Access_Array is array (Natural range <>) of AllBinaryMagneticFieldSensor_Access;
   type AllBinaryMagneticFieldSensor_Access_Array_Access is access all AllBinaryMagneticFieldSensor_Access_Array;

   type AllBinaryMagneticFieldSensor is new AllBinarySensor with null record;

   procedure Initialize (This : in out AllBinaryMagneticFieldSensor'Class);
   function Create return AllBinaryMagneticFieldSensor_Access;

end org.allbinary.input.magnetic.field.AllBinaryMagneticFieldSensor_Package;



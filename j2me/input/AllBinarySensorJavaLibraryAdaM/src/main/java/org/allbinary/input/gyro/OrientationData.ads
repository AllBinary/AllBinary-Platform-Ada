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

package org.allbinary.input.gyro.OrientationData_Package is


   type OrientationData is tagged;
   type OrientationData_Access is access all OrientationData'Class;
   type OrientationData_Access_Array is array (Natural range <>) of OrientationData_Access;
   type OrientationData_Access_Array_Access is access all OrientationData_Access_Array;

   type OrientationData is new Java_Object with record
      ORIENTATION_SENSOR_INPUT : Unbounded_String;
      ORIENTATION_TYPE : Unbounded_String;
   end record;
   SINGLETON : OrientationData_Access;

   procedure Initialize (This : in out OrientationData'Class);
   function Create return OrientationData_Access;
   function getInstance return OrientationData_Access;
   procedure getInstance;

end org.allbinary.input.gyro.OrientationData_Package;



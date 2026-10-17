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

package org.allbinary.input.NoAllBinarySensor_Package is


   type NoAllBinarySensor is tagged;
   type NoAllBinarySensor_Access is access all NoAllBinarySensor'Class;
   type NoAllBinarySensor_Access_Array is array (Natural range <>) of NoAllBinarySensor_Access;
   type NoAllBinarySensor_Access_Array_Access is access all NoAllBinarySensor_Access_Array;

   type NoAllBinarySensor is new AllBinarySensor with null record;
   instance : NoAllBinarySensor_Access;

   procedure Initialize (This : in out NoAllBinarySensor'Class);
   function Create return NoAllBinarySensor_Access;
   function getInstance return NoAllBinarySensor_Access;
   procedure getInstance;

end org.allbinary.input.NoAllBinarySensor_Package;



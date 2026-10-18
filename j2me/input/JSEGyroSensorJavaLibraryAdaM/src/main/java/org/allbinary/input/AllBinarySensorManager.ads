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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.input.AllBinarySensorManager_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AllBinarySensorManager is tagged;
   type AllBinarySensorManager_Access is access all AllBinarySensorManager'Class;
   type AllBinarySensorManager_Access_Array is array (Natural range <>) of AllBinarySensorManager_Access;
   type AllBinarySensorManager_Access_Array_Access is access all AllBinarySensorManager_Access_Array;
   type AllBinarySensorManager_Access_Array_Access_Array is array (Natural range <>) of AllBinarySensorManager_Access_Array_Access;
   type AllBinarySensorManager_Access_Array_Access_Array_Access is access all AllBinarySensorManager_Access_Array_Access_Array;

   type AllBinarySensorManager is new Java_Object with record
      ORIENTATION_SENSOR_INPUT : Unbounded_String;
      ORIENTATION_TYPE : Unbounded_String;
      list : BasicArrayList_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out AllBinarySensorManager'Class);
   function Create return AllBinarySensorManager_Access;
   function getInstance return AllBinarySensorManager_Access;
   procedure init (This : in out AllBinarySensorManager);
   function getSensorNamesList (This : in out AllBinarySensorManager) return BasicArrayList_Access;
   procedure shutdown (This : in out AllBinarySensorManager);

end org.allbinary.input.AllBinarySensorManager_Package;



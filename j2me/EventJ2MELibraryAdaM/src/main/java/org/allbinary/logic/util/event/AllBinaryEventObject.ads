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

package org.allbinary.logic.util.event.AllBinaryEventObject_Package is


   type AllBinaryEventObject is tagged;
   type AllBinaryEventObject_Access is access all AllBinaryEventObject'Class;
   type AllBinaryEventObject_Access_Array is array (Natural range <>) of AllBinaryEventObject_Access;
   type AllBinaryEventObject_Access_Array_Access is access all AllBinaryEventObject_Access_Array;
   type AllBinaryEventObject_Access_Array_Access_Array is array (Natural range <>) of AllBinaryEventObject_Access_Array_Access;
   type AllBinaryEventObject_Access_Array_Access_Array_Access is access all AllBinaryEventObject_Access_Array_Access_Array;

   type AllBinaryEventObject is new Java_Object with record
      source : Java_Object_Access;
   end record;
   NULL_EVENT : AllBinaryEventObject_Access;

   procedure Initialize (This : in out AllBinaryEventObject'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return AllBinaryEventObject_Access;
   function getSource (This : in out AllBinaryEventObject) return Java_Object_Access;
   procedure setSource (This : in out AllBinaryEventObject; source_Param : access Java_Object'Class);
   procedure setSource (This : in out AllBinaryEventObject; Value : Unbounded_String);

end org.allbinary.logic.util.event.AllBinaryEventObject_Package;



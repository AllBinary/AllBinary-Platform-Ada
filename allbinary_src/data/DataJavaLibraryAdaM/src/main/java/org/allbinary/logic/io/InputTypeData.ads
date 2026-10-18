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

package org.allbinary.logic.io.InputTypeData_Package is


   type InputTypeData is tagged;
   type InputTypeData_Access is access all InputTypeData'Class;
   type InputTypeData_Access_Array is array (Natural range <>) of InputTypeData_Access;
   type InputTypeData_Access_Array_Access is access all InputTypeData_Access_Array;
   type InputTypeData_Access_Array_Access_Array is array (Natural range <>) of InputTypeData_Access_Array_Access;
   type InputTypeData_Access_Array_Access_Array_Access is access all InputTypeData_Access_Array_Access_Array;

   type InputTypeData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : InputTypeData_Access;

   procedure Initialize (This : in out InputTypeData'Class);
   function Create return InputTypeData_Access;
   function getInstance return InputTypeData_Access;

end org.allbinary.logic.io.InputTypeData_Package;



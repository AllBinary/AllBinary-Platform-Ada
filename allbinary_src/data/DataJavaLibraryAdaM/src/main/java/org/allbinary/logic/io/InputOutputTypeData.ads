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

package org.allbinary.logic.io.InputOutputTypeData_Package is


   type InputOutputTypeData is tagged;
   type InputOutputTypeData_Access is access all InputOutputTypeData'Class;
   type InputOutputTypeData_Access_Array is array (Natural range <>) of InputOutputTypeData_Access;
   type InputOutputTypeData_Access_Array_Access is access all InputOutputTypeData_Access_Array;
   type InputOutputTypeData_Access_Array_Access_Array is array (Natural range <>) of InputOutputTypeData_Access_Array_Access;
   type InputOutputTypeData_Access_Array_Access_Array_Access is access all InputOutputTypeData_Access_Array_Access_Array;

   type InputOutputTypeData is new Java_Object with record
      NAME : Unbounded_String;
      FILE : Unbounded_String;
      RESPONSE : Unbounded_String;
      DB : Unbounded_String;
      JSP : Unbounded_String;
      JSP_FRAGMENT : Unbounded_String;
      PHP : Unbounded_String;
      ASP : Unbounded_String;
      PL : Unbounded_String;
      DEFAULT : Unbounded_String;
      DEFAULT_FRAGMENT : Unbounded_String;
   end record;
   instance : InputOutputTypeData_Access;

   procedure Initialize (This : in out InputOutputTypeData'Class);
   function Create return InputOutputTypeData_Access;
   function getInstance return InputOutputTypeData_Access;

end org.allbinary.logic.io.InputOutputTypeData_Package;



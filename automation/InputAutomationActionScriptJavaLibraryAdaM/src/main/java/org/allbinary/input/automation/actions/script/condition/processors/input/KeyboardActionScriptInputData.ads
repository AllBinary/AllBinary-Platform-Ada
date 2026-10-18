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

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package is


   type KeyboardActionScriptInputData is tagged;
   type KeyboardActionScriptInputData_Access is access all KeyboardActionScriptInputData'Class;
   type KeyboardActionScriptInputData_Access_Array is array (Natural range <>) of KeyboardActionScriptInputData_Access;
   type KeyboardActionScriptInputData_Access_Array_Access is access all KeyboardActionScriptInputData_Access_Array;
   type KeyboardActionScriptInputData_Access_Array_Access_Array is array (Natural range <>) of KeyboardActionScriptInputData_Access_Array_Access;
   type KeyboardActionScriptInputData_Access_Array_Access_Array_Access is access all KeyboardActionScriptInputData_Access_Array_Access_Array;

   type KeyboardActionScriptInputData is new Java_Object with null record;
   NAME : Unbounded_String;
   KEY : Unbounded_String;
   DELAY_BETWEEN_KEYS : Unbounded_String;
   PRESS : Unbounded_String;
   RELEASE : Unbounded_String;

   procedure Initialize (This : in out KeyboardActionScriptInputData'Class);
   function Create return KeyboardActionScriptInputData_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;



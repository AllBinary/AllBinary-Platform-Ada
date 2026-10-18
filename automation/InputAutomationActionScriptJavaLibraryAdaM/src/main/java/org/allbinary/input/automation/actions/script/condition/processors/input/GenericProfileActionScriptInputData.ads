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

package org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package is


   type GenericProfileActionScriptInputData is tagged;
   type GenericProfileActionScriptInputData_Access is access all GenericProfileActionScriptInputData'Class;
   type GenericProfileActionScriptInputData_Access_Array is array (Natural range <>) of GenericProfileActionScriptInputData_Access;
   type GenericProfileActionScriptInputData_Access_Array_Access is access all GenericProfileActionScriptInputData_Access_Array;
   type GenericProfileActionScriptInputData_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionScriptInputData_Access_Array_Access;
   type GenericProfileActionScriptInputData_Access_Array_Access_Array_Access is access all GenericProfileActionScriptInputData_Access_Array_Access_Array;

   type GenericProfileActionScriptInputData is new Java_Object with null record;
   NAME : Unbounded_String;
   TYPE_Id : Unbounded_String;
   DELAY_Id : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActionScriptInputData'Class);
   function Create return GenericProfileActionScriptInputData_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;



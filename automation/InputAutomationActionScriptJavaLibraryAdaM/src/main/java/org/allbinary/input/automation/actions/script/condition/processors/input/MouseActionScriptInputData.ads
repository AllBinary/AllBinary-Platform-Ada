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

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package is


   type MouseActionScriptInputData is tagged;
   type MouseActionScriptInputData_Access is access all MouseActionScriptInputData'Class;
   type MouseActionScriptInputData_Access_Array is array (Natural range <>) of MouseActionScriptInputData_Access;
   type MouseActionScriptInputData_Access_Array_Access is access all MouseActionScriptInputData_Access_Array;

   type MouseActionScriptInputData is new Java_Object with null record;
   NAME : Unbounded_String;
   BUTTONS : Unbounded_String;
   MOVE : Unbounded_String;
   MOVE_X : Unbounded_String;
   MOVE_Y : Unbounded_String;

   procedure Initialize (This : in out MouseActionScriptInputData'Class);
   function Create return MouseActionScriptInputData_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package;



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

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package is


   type ColorAtActionScriptConditionData is tagged;
   type ColorAtActionScriptConditionData_Access is access all ColorAtActionScriptConditionData'Class;
   type ColorAtActionScriptConditionData_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionData_Access;
   type ColorAtActionScriptConditionData_Access_Array_Access is access all ColorAtActionScriptConditionData_Access_Array;
   type ColorAtActionScriptConditionData_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionData_Access_Array_Access;
   type ColorAtActionScriptConditionData_Access_Array_Access_Array_Access is access all ColorAtActionScriptConditionData_Access_Array_Access_Array;

   type ColorAtActionScriptConditionData is new Java_Object with null record;
   NAME : Unbounded_String;
   LOCATION_X : Unbounded_String;
   LOCATION_Y : Unbounded_String;
   MIN_RED : Unbounded_String;
   MAX_RED : Unbounded_String;
   MIN_GREEN : Unbounded_String;
   MAX_GREEN : Unbounded_String;
   MIN_BLUE : Unbounded_String;
   MAX_BLUE : Unbounded_String;

   procedure Initialize (This : in out ColorAtActionScriptConditionData'Class);
   function Create return ColorAtActionScriptConditionData_Access;

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;



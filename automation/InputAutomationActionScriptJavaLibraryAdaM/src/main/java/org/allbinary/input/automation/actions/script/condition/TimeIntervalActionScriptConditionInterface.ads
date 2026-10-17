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
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package is

   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;

   type TimeIntervalActionScriptConditionInterface is interface;
   type TimeIntervalActionScriptConditionInterface_Access is access all TimeIntervalActionScriptConditionInterface'Class;
   type TimeIntervalActionScriptConditionInterface_Access_Array is array (Natural range <>) of TimeIntervalActionScriptConditionInterface_Access;
   type TimeIntervalActionScriptConditionInterface_Access_Array_Access is access all TimeIntervalActionScriptConditionInterface_Access_Array;
   function getTimeDelayHelper (This : in out TimeIntervalActionScriptConditionInterface) return TimeDelayHelper_Access is abstract;
   procedure log (This : in out TimeIntervalActionScriptConditionInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;



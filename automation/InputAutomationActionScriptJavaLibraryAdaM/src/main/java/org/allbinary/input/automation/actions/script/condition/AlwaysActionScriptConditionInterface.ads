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

package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package is


   type AlwaysActionScriptConditionInterface is interface;
   type AlwaysActionScriptConditionInterface_Access is access all AlwaysActionScriptConditionInterface'Class;
   type AlwaysActionScriptConditionInterface_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionInterface_Access;
   type AlwaysActionScriptConditionInterface_Access_Array_Access is access all AlwaysActionScriptConditionInterface_Access_Array;
   type AlwaysActionScriptConditionInterface_Access_Array_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionInterface_Access_Array_Access;
   type AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access is access all AlwaysActionScriptConditionInterface_Access_Array_Access_Array;
   procedure setIsOn (This : in out AlwaysActionScriptConditionInterface; isOn : Boolean) is abstract;
   function isIsOn (This : in out AlwaysActionScriptConditionInterface) return Boolean is abstract;
   procedure log (This : in out AlwaysActionScriptConditionInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;



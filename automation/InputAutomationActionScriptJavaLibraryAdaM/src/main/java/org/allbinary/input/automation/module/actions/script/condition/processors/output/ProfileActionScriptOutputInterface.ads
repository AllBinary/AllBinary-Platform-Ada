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
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package is

   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

   type ProfileActionScriptOutputInterface is interface and ProfileActionScriptProcessorInterface;
   type ProfileActionScriptOutputInterface_Access is access all ProfileActionScriptOutputInterface'Class;
   type ProfileActionScriptOutputInterface_Access_Array is array (Natural range <>) of ProfileActionScriptOutputInterface_Access;
   type ProfileActionScriptOutputInterface_Access_Array_Access is access all ProfileActionScriptOutputInterface_Access_Array;
   type ProfileActionScriptOutputInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptOutputInterface_Access_Array_Access;
   type ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptOutputInterface_Access_Array_Access_Array;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;



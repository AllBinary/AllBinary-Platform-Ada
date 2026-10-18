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
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package is

   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;

   type ProfileActionScriptInputInterface is interface and ProfileActionScriptProcessorInterface;
   type ProfileActionScriptInputInterface_Access is access all ProfileActionScriptInputInterface'Class;
   type ProfileActionScriptInputInterface_Access_Array is array (Natural range <>) of ProfileActionScriptInputInterface_Access;
   type ProfileActionScriptInputInterface_Access_Array_Access is access all ProfileActionScriptInputInterface_Access_Array;
   type ProfileActionScriptInputInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptInputInterface_Access_Array_Access;
   type ProfileActionScriptInputInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptInputInterface_Access_Array_Access_Array;
   procedure setInputRobotInterface (This : in out ProfileActionScriptInputInterface; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is abstract;
   function getInputRobotInterface (This : in out ProfileActionScriptInputInterface) return InputRobotInterface_Access is abstract;
   function getTime (This : in out ProfileActionScriptInputInterface) return Integer is abstract;
   procedure setTime (This : in out ProfileActionScriptInputInterface; time : Integer) is abstract;

end org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;



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
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package is

   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;

   type InputAutomationRobotInterfaceWrapper is tagged;
   type InputAutomationRobotInterfaceWrapper_Access is access all InputAutomationRobotInterfaceWrapper'Class;
   type InputAutomationRobotInterfaceWrapper_Access_Array is array (Natural range <>) of InputAutomationRobotInterfaceWrapper_Access;
   type InputAutomationRobotInterfaceWrapper_Access_Array_Access is access all InputAutomationRobotInterfaceWrapper_Access_Array;
   type InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotInterfaceWrapper_Access_Array_Access;
   type InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array_Access is access all InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array;

   type InputAutomationRobotInterfaceWrapper is new Java_Object with record
      inputRobotInterface : InputRobotInterface_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotInterfaceWrapper'Class; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class);
   function Create (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) return InputAutomationRobotInterfaceWrapper_Access;
   function getInputRobotInterface (This : in out InputAutomationRobotInterfaceWrapper) return InputRobotInterface_Access;
   procedure setInputRobotInterface (This : in out InputAutomationRobotInterfaceWrapper; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package;



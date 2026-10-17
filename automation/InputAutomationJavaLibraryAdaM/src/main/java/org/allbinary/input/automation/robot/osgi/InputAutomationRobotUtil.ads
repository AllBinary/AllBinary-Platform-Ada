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
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package is

   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;

   type InputAutomationRobotUtil is tagged;
   type InputAutomationRobotUtil_Access is access all InputAutomationRobotUtil'Class;
   type InputAutomationRobotUtil_Access_Array is array (Natural range <>) of InputAutomationRobotUtil_Access;
   type InputAutomationRobotUtil_Access_Array_Access is access all InputAutomationRobotUtil_Access_Array;

   type InputAutomationRobotUtil is new Java_Object with null record;

   procedure Initialize (This : in out InputAutomationRobotUtil'Class);
   function Create return InputAutomationRobotUtil_Access;
   function getChangeEvent (inputRobotInterface_Param : access InputRobotInterface'Class) return InputAutomationRobotChangeEvent_Access;
   procedure getChangeEvent (inputRobotInterface_Param : access InputRobotInterface'Class);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;



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
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;

package bundle.input.automation.robot.InputAutomationRobotChangeListener_Package is

   package InputAutomationRobotChangeEvent_Package renames Standard.org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;

   type InputAutomationRobotChangeListener is interface;
   type InputAutomationRobotChangeListener_Access is access all InputAutomationRobotChangeListener'Class;
   type InputAutomationRobotChangeListener_Access_Array is array (Natural range <>) of InputAutomationRobotChangeListener_Access;
   type InputAutomationRobotChangeListener_Access_Array_Access is access all InputAutomationRobotChangeListener_Access_Array;
   procedure onAdd (This : in out InputAutomationRobotChangeListener; inputAutomationRobotChangeEvent : InputAutomationRobotChangeEvent_Access) is abstract;
   procedure onRemove (This : in out InputAutomationRobotChangeListener; inputAutomationRobotChangeEvent : InputAutomationRobotChangeEvent_Access) is abstract;

end bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;



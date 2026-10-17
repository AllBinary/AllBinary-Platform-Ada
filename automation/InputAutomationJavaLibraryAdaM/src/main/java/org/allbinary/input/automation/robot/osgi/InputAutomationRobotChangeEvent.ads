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

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package is


   type InputAutomationRobotChangeEvent is tagged;
   type InputAutomationRobotChangeEvent_Access is access all InputAutomationRobotChangeEvent'Class;
   type InputAutomationRobotChangeEvent_Access_Array is array (Natural range <>) of InputAutomationRobotChangeEvent_Access;
   type InputAutomationRobotChangeEvent_Access_Array_Access is access all InputAutomationRobotChangeEvent_Access_Array;

   type InputAutomationRobotChangeEvent is new Java_Object with record
      inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotChangeEvent'Class; inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access);
   function Create (inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access) return InputAutomationRobotChangeEvent_Access;
   function getInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent) return InputAutomationRobotInterfaceWrapper_Access;
   procedure getInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent);
   procedure setInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent; inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;



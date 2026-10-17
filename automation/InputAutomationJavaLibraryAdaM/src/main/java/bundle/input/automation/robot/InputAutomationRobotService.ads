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
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;

package bundle.input.automation.robot.InputAutomationRobotService_Package is

   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;

   type InputAutomationRobotService is tagged;
   type InputAutomationRobotService_Access is access all InputAutomationRobotService'Class;
   type InputAutomationRobotService_Access_Array is array (Natural range <>) of InputAutomationRobotService_Access;
   type InputAutomationRobotService_Access_Array_Access is access all InputAutomationRobotService_Access_Array;

   type InputAutomationRobotService is new InputAutomationRobotServiceInterface with record
      inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotService'Class; inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access);
   function Create (inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access) return InputAutomationRobotService_Access;
   function getInputRobotInterfaceArray (This : in out InputAutomationRobotService) return InputRobotInterface_Access_Array_Access;
   procedure setInputRobotInterfaceArray (This : in out InputAutomationRobotService; inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access);

end bundle.input.automation.robot.InputAutomationRobotService_Package;



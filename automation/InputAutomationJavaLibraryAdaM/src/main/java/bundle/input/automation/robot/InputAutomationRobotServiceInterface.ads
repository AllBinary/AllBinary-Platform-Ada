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
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;

package bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package is

   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;

   type InputAutomationRobotServiceInterface is interface and OSGIServiceInterface;
   type InputAutomationRobotServiceInterface_Access is access all InputAutomationRobotServiceInterface'Class;
   type InputAutomationRobotServiceInterface_Access_Array is array (Natural range <>) of InputAutomationRobotServiceInterface_Access;
   type InputAutomationRobotServiceInterface_Access_Array_Access is access all InputAutomationRobotServiceInterface_Access_Array;
   type InputAutomationRobotServiceInterface_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotServiceInterface_Access_Array_Access;
   type InputAutomationRobotServiceInterface_Access_Array_Access_Array_Access is access all InputAutomationRobotServiceInterface_Access_Array_Access_Array;
   function getInputRobotInterfaceArray (This : in out InputAutomationRobotServiceInterface) return InputRobotInterface_Access_Array_Access is abstract;

end bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;



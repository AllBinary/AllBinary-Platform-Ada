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

limited with org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package;
package org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References is
   type GenericInputAutomationAction_Access is access all org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package.GenericInputAutomationAction'Class;
   type GenericInputAutomationAction_Access_Array is array (Natural range <>) of GenericInputAutomationAction_Access;
   type GenericInputAutomationAction_Access_Array_Access is access all GenericInputAutomationAction_Access_Array;
   type GenericInputAutomationAction_Access_Array_Access_Array is array (Natural range <>) of GenericInputAutomationAction_Access_Array_Access;
   type GenericInputAutomationAction_Access_Array_Access_Array_Access is access all GenericInputAutomationAction_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References;

with org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
limited with org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;

package org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package is

   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package Reference_Types is
   subtype InputRobotInterface_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access;
   use type InputRobotInterface_Access;
   subtype InputRobotInterface_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array;
   use type InputRobotInterface_Access_Array;
   subtype InputRobotInterface_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access;
   use type InputRobotInterface_Access_Array_Access;
   subtype InputRobotInterface_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array;
   use type InputRobotInterface_Access_Array_Access_Array;
   subtype InputRobotInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array_Access;
   use type InputRobotInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericInputAutomationAction_Access is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References.GenericInputAutomationAction_Access;
   function "=" (Left, Right : GenericInputAutomationAction_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References."=";
   subtype GenericInputAutomationAction_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References.GenericInputAutomationAction_Access_Array;
   function "=" (Left, Right : GenericInputAutomationAction_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References."=";
   subtype GenericInputAutomationAction_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References.GenericInputAutomationAction_Access_Array_Access;
   function "=" (Left, Right : GenericInputAutomationAction_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References."=";
   subtype GenericInputAutomationAction_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References.GenericInputAutomationAction_Access_Array_Access_Array;
   function "=" (Left, Right : GenericInputAutomationAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References."=";
   subtype GenericInputAutomationAction_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References.GenericInputAutomationAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericInputAutomationAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package_References."=";

   type GenericInputAutomationAction is new Java_Object and InputAutomationActionInterface with null record;

   procedure Initialize (This : in out GenericInputAutomationAction'Class);
   function Create return GenericInputAutomationAction_Access;
   procedure test (This : in out GenericInputAutomationAction);
   function getInputRobotInterfaceArray (This : in out GenericInputAutomationAction) return InputRobotInterface_Access_Array_Access;

end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package;



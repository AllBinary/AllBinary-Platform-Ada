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
with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;

package org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package is

   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;

   type GenericInputAutomationAction is tagged;
   type GenericInputAutomationAction_Access is access all GenericInputAutomationAction'Class;
   type GenericInputAutomationAction_Access_Array is array (Natural range <>) of GenericInputAutomationAction_Access;
   type GenericInputAutomationAction_Access_Array_Access is access all GenericInputAutomationAction_Access_Array;
   type GenericInputAutomationAction_Access_Array_Access_Array is array (Natural range <>) of GenericInputAutomationAction_Access_Array_Access;
   type GenericInputAutomationAction_Access_Array_Access_Array_Access is access all GenericInputAutomationAction_Access_Array_Access_Array;

   type GenericInputAutomationAction is new Java_Object and InputAutomationActionInterface with null record;

   procedure Initialize (This : in out GenericInputAutomationAction'Class);
   function Create return GenericInputAutomationAction_Access;
   procedure test (This : in out GenericInputAutomationAction);
   function getInputRobotInterfaceArray (This : in out GenericInputAutomationAction) return InputRobotInterface_Access_Array_Access;

end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package;



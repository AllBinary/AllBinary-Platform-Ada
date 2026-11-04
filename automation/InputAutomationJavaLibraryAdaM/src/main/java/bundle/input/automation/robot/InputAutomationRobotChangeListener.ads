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

limited with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
package bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References is
   type InputAutomationRobotChangeListener_Access is access all bundle.input.automation.robot.InputAutomationRobotChangeListener_Package.InputAutomationRobotChangeListener'Class;
   type InputAutomationRobotChangeListener_Access_Array is array (Natural range <>) of InputAutomationRobotChangeListener_Access;
   type InputAutomationRobotChangeListener_Access_Array_Access is access all InputAutomationRobotChangeListener_Access_Array;
   type InputAutomationRobotChangeListener_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotChangeListener_Access_Array_Access;
   type InputAutomationRobotChangeListener_Access_Array_Access_Array_Access is access all InputAutomationRobotChangeListener_Access_Array_Access_Array;
end bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References;

with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References;

package bundle.input.automation.robot.InputAutomationRobotChangeListener_Package is

   package InputAutomationRobotChangeEvent_Package renames Standard.org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
   package Reference_Types is
   subtype InputAutomationRobotChangeEvent_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access;
   use type InputAutomationRobotChangeEvent_Access;
   subtype InputAutomationRobotChangeEvent_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array;
   use type InputAutomationRobotChangeEvent_Access_Array;
   subtype InputAutomationRobotChangeEvent_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access;
   use type InputAutomationRobotChangeEvent_Access_Array_Access;
   subtype InputAutomationRobotChangeEvent_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access_Array;
   use type InputAutomationRobotChangeEvent_Access_Array_Access_Array;
   subtype InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access;
   use type InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type InputAutomationRobotChangeListener is interface;
   subtype InputAutomationRobotChangeListener_Access is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access;
   function "=" (Left, Right : InputAutomationRobotChangeListener_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References."=";
   subtype InputAutomationRobotChangeListener_Access_Array is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array;
   function "=" (Left, Right : InputAutomationRobotChangeListener_Access_Array) return Boolean renames bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References."=";
   subtype InputAutomationRobotChangeListener_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotChangeListener_Access_Array_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References."=";
   subtype InputAutomationRobotChangeListener_Access_Array_Access_Array is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotChangeListener_Access_Array_Access_Array) return Boolean renames bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References."=";
   subtype InputAutomationRobotChangeListener_Access_Array_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References.InputAutomationRobotChangeListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotChangeListener_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotChangeListener_Package_References."=";
   function Java_Object_Access_From_InputAutomationRobotChangeListener (Value : InputAutomationRobotChangeListener_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onAdd (This : in out InputAutomationRobotChangeListener; inputAutomationRobotChangeEvent_Param : access InputAutomationRobotChangeEvent_Package.InputAutomationRobotChangeEvent'Class) is abstract;
   procedure onRemove (This : in out InputAutomationRobotChangeListener; inputAutomationRobotChangeEvent_Param : access InputAutomationRobotChangeEvent_Package.InputAutomationRobotChangeEvent'Class) is abstract;

end bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;



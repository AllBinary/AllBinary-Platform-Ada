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

with AllBinary_Java;
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;
package org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References is
   type InputAutomationRobotUtil_Access is access all org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package.InputAutomationRobotUtil'Class;
   type InputAutomationRobotUtil_Access_Array is array (Natural range <>) of InputAutomationRobotUtil_Access;
   type InputAutomationRobotUtil_Access_Array_Access is access all InputAutomationRobotUtil_Access_Array;
   type InputAutomationRobotUtil_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotUtil_Access_Array_Access;
   type InputAutomationRobotUtil_Access_Array_Access_Array_Access is access all InputAutomationRobotUtil_Access_Array_Access_Array;
   type InputAutomationRobotUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotUtil_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotUtil_Access_Array_Object'Class then InputAutomationRobotUtil_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationRobotUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotUtil_Access_Array_Access_Array_Object'Class then InputAutomationRobotUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References;

with org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package is

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


   subtype InputAutomationRobotUtil_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.InputAutomationRobotUtil_Access;
   function "=" (Left, Right : InputAutomationRobotUtil_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References."=";
   subtype InputAutomationRobotUtil_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.InputAutomationRobotUtil_Access_Array;
   function "=" (Left, Right : InputAutomationRobotUtil_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References."=";
   subtype InputAutomationRobotUtil_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.InputAutomationRobotUtil_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotUtil_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References."=";
   function Java_Box (Value : InputAutomationRobotUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotUtil_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotUtil_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.Java_Unbox_InputAutomationRobotUtil_Access_Array;
   subtype InputAutomationRobotUtil_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.InputAutomationRobotUtil_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References."=";
   subtype InputAutomationRobotUtil_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.InputAutomationRobotUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References."=";
   function Java_Box (Value : InputAutomationRobotUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotUtil_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package_References.Java_Unbox_InputAutomationRobotUtil_Access_Array_Access_Array;

   type InputAutomationRobotUtil is new Java_Object with null record;

   procedure Initialize (This : in out InputAutomationRobotUtil'Class);
   function Create return InputAutomationRobotUtil_Access;
   function getChangeEvent (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) return InputAutomationRobotChangeEvent_Access;
   procedure getChangeEvent (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;



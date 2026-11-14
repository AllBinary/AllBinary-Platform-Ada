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
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
package org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References is
   type InputAutomationRobotChangeEvent_Access is access all org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package.InputAutomationRobotChangeEvent'Class;
   type InputAutomationRobotChangeEvent_Access_Array is array (Natural range <>) of InputAutomationRobotChangeEvent_Access;
   type InputAutomationRobotChangeEvent_Access_Array_Access is access all InputAutomationRobotChangeEvent_Access_Array;
   type InputAutomationRobotChangeEvent_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotChangeEvent_Access_Array_Access;
   type InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access is access all InputAutomationRobotChangeEvent_Access_Array_Access_Array;
   type InputAutomationRobotChangeEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotChangeEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotChangeEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotChangeEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotChangeEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotChangeEvent_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotChangeEvent_Access_Array_Object'Class then InputAutomationRobotChangeEvent_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationRobotChangeEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotChangeEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotChangeEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotChangeEvent_Access_Array_Access_Array_Object'Class then InputAutomationRobotChangeEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References;

with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package_References;

package org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package is

   package Reference_Types is
   subtype InputAutomationRobotInterfaceWrapper_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package_References.InputAutomationRobotInterfaceWrapper_Access;
   use type InputAutomationRobotInterfaceWrapper_Access;
   subtype InputAutomationRobotInterfaceWrapper_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package_References.InputAutomationRobotInterfaceWrapper_Access_Array;
   use type InputAutomationRobotInterfaceWrapper_Access_Array;
   subtype InputAutomationRobotInterfaceWrapper_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package_References.InputAutomationRobotInterfaceWrapper_Access_Array_Access;
   use type InputAutomationRobotInterfaceWrapper_Access_Array_Access;
   subtype InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package_References.InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array;
   use type InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array;
   subtype InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package_References.InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array_Access;
   use type InputAutomationRobotInterfaceWrapper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationRobotChangeEvent_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   function Java_Box (Value : InputAutomationRobotChangeEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotChangeEvent_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotChangeEvent_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.Java_Unbox_InputAutomationRobotChangeEvent_Access_Array;
   subtype InputAutomationRobotChangeEvent_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   function Java_Box (Value : InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotChangeEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.Java_Unbox_InputAutomationRobotChangeEvent_Access_Array_Access_Array;

   type InputAutomationRobotChangeEvent is new Java_Object with record
      inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotChangeEvent'Class; inputAutomationRobotInterfaceWrapper_Param : access InputAutomationRobotInterfaceWrapper_Package.InputAutomationRobotInterfaceWrapper'Class);
   function Create (inputAutomationRobotInterfaceWrapper_Param : access InputAutomationRobotInterfaceWrapper_Package.InputAutomationRobotInterfaceWrapper'Class) return InputAutomationRobotChangeEvent_Access;
   function getInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent) return InputAutomationRobotInterfaceWrapper_Access;
   procedure setInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent; inputAutomationRobotInterfaceWrapper_Param : access InputAutomationRobotInterfaceWrapper_Package.InputAutomationRobotInterfaceWrapper'Class);

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;



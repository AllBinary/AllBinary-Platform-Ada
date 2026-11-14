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
limited with bundle.input.automation.robot.InputAutomationRobotService_Package;
package bundle.input.automation.robot.InputAutomationRobotService_Package_References is
   type InputAutomationRobotService_Access is access all bundle.input.automation.robot.InputAutomationRobotService_Package.InputAutomationRobotService'Class;
   type InputAutomationRobotService_Access_Array is array (Natural range <>) of InputAutomationRobotService_Access;
   type InputAutomationRobotService_Access_Array_Access is access all InputAutomationRobotService_Access_Array;
   type InputAutomationRobotService_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotService_Access_Array_Access;
   type InputAutomationRobotService_Access_Array_Access_Array_Access is access all InputAutomationRobotService_Access_Array_Access_Array;
   type InputAutomationRobotService_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotService_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotService_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotService_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotService_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotService_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotService_Access_Array_Object'Class then InputAutomationRobotService_Access_Array_Object'Class (Value.all).Value else null);
   type InputAutomationRobotService_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputAutomationRobotService_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputAutomationRobotService_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputAutomationRobotService_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputAutomationRobotService_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputAutomationRobotService_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputAutomationRobotService_Access_Array_Access_Array_Object'Class then InputAutomationRobotService_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end bundle.input.automation.robot.InputAutomationRobotService_Package_References;

with bundle.input.automation.robot.InputAutomationRobotService_Package_References;
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
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;

package bundle.input.automation.robot.InputAutomationRobotService_Package is

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


   subtype InputAutomationRobotService_Access is bundle.input.automation.robot.InputAutomationRobotService_Package_References.InputAutomationRobotService_Access;
   function "=" (Left, Right : InputAutomationRobotService_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotService_Package_References."=";
   subtype InputAutomationRobotService_Access_Array is bundle.input.automation.robot.InputAutomationRobotService_Package_References.InputAutomationRobotService_Access_Array;
   function "=" (Left, Right : InputAutomationRobotService_Access_Array) return Boolean renames bundle.input.automation.robot.InputAutomationRobotService_Package_References."=";
   subtype InputAutomationRobotService_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotService_Package_References.InputAutomationRobotService_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotService_Access_Array_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotService_Package_References."=";
   function Java_Box (Value : InputAutomationRobotService_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.robot.InputAutomationRobotService_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotService_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotService_Access_Array_Access renames bundle.input.automation.robot.InputAutomationRobotService_Package_References.Java_Unbox_InputAutomationRobotService_Access_Array;
   subtype InputAutomationRobotService_Access_Array_Access_Array is bundle.input.automation.robot.InputAutomationRobotService_Package_References.InputAutomationRobotService_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotService_Access_Array_Access_Array) return Boolean renames bundle.input.automation.robot.InputAutomationRobotService_Package_References."=";
   subtype InputAutomationRobotService_Access_Array_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotService_Package_References.InputAutomationRobotService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotService_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotService_Package_References."=";
   function Java_Box (Value : InputAutomationRobotService_Access_Array_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.robot.InputAutomationRobotService_Package_References.Java_Box;
   function Java_Unbox_InputAutomationRobotService_Access_Array_Access_Array (Value : access Java_Object'Class) return InputAutomationRobotService_Access_Array_Access_Array_Access renames bundle.input.automation.robot.InputAutomationRobotService_Package_References.Java_Unbox_InputAutomationRobotService_Access_Array_Access_Array;

   type InputAutomationRobotService is new Java_Object and InputAutomationRobotServiceInterface with record
      inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out InputAutomationRobotService'Class; inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access);
   function Create (inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access) return InputAutomationRobotService_Access;
   function getInputRobotInterfaceArray (This : in out InputAutomationRobotService) return InputRobotInterface_Access_Array_Access;
   procedure setInputRobotInterfaceArray (This : in out InputAutomationRobotService; inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access);

end bundle.input.automation.robot.InputAutomationRobotService_Package;



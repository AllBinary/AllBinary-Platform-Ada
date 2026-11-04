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

limited with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
package bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References is
   type InputAutomationRobotServiceInterface_Access is access all bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package.InputAutomationRobotServiceInterface'Class;
   type InputAutomationRobotServiceInterface_Access_Array is array (Natural range <>) of InputAutomationRobotServiceInterface_Access;
   type InputAutomationRobotServiceInterface_Access_Array_Access is access all InputAutomationRobotServiceInterface_Access_Array;
   type InputAutomationRobotServiceInterface_Access_Array_Access_Array is array (Natural range <>) of InputAutomationRobotServiceInterface_Access_Array_Access;
   type InputAutomationRobotServiceInterface_Access_Array_Access_Array_Access is access all InputAutomationRobotServiceInterface_Access_Array_Access_Array;
end bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References;

with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References;
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
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;

package bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package is

   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package OSGIServiceInterface_Package renames Standard.org.allbinary.osgi.OSGIServiceInterface_Package;
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


   type InputAutomationRobotServiceInterface is interface and OSGIServiceInterface;
   subtype InputAutomationRobotServiceInterface_Access is bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References.InputAutomationRobotServiceInterface_Access;
   function "=" (Left, Right : InputAutomationRobotServiceInterface_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References."=";
   subtype InputAutomationRobotServiceInterface_Access_Array is bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References.InputAutomationRobotServiceInterface_Access_Array;
   function "=" (Left, Right : InputAutomationRobotServiceInterface_Access_Array) return Boolean renames bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References."=";
   subtype InputAutomationRobotServiceInterface_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References.InputAutomationRobotServiceInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotServiceInterface_Access_Array_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References."=";
   subtype InputAutomationRobotServiceInterface_Access_Array_Access_Array is bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References.InputAutomationRobotServiceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotServiceInterface_Access_Array_Access_Array) return Boolean renames bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References."=";
   subtype InputAutomationRobotServiceInterface_Access_Array_Access_Array_Access is bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References.InputAutomationRobotServiceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotServiceInterface_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package_References."=";
   function Java_Object_Access_From_InputAutomationRobotServiceInterface (Value : InputAutomationRobotServiceInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInputRobotInterfaceArray (This : in out InputAutomationRobotServiceInterface) return InputRobotInterface_Access_Array_Access is abstract;

end bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;



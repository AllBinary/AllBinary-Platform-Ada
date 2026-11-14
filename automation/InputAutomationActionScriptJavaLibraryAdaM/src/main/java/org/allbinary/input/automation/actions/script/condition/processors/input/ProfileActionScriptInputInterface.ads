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
limited with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References is
   type ProfileActionScriptInputInterface_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package.ProfileActionScriptInputInterface'Class;
   type ProfileActionScriptInputInterface_Access_Array is array (Natural range <>) of ProfileActionScriptInputInterface_Access;
   type ProfileActionScriptInputInterface_Access_Array_Access is access all ProfileActionScriptInputInterface_Access_Array;
   type ProfileActionScriptInputInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptInputInterface_Access_Array_Access;
   type ProfileActionScriptInputInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptInputInterface_Access_Array_Access_Array;
   type ProfileActionScriptInputInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProfileActionScriptInputInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ProfileActionScriptInputInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProfileActionScriptInputInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProfileActionScriptInputInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProfileActionScriptInputInterface_Access_Array_Access is (if Value /= null and then Value.all in ProfileActionScriptInputInterface_Access_Array_Object'Class then ProfileActionScriptInputInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ProfileActionScriptInputInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProfileActionScriptInputInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProfileActionScriptInputInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProfileActionScriptInputInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProfileActionScriptInputInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProfileActionScriptInputInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProfileActionScriptInputInterface_Access_Array_Access_Array_Object'Class then ProfileActionScriptInputInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
limited with org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package is

   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
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


   type ProfileActionScriptInputInterface is interface and ProfileActionScriptProcessorInterface;
   subtype ProfileActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.ProfileActionScriptInputInterface_Access;
   function "=" (Left, Right : ProfileActionScriptInputInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References."=";
   subtype ProfileActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.ProfileActionScriptInputInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptInputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References."=";
   subtype ProfileActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.ProfileActionScriptInputInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptInputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References."=";
   function Java_Box (Value : ProfileActionScriptInputInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.Java_Box;
   function Java_Unbox_ProfileActionScriptInputInterface_Access_Array (Value : access Java_Object'Class) return ProfileActionScriptInputInterface_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.Java_Unbox_ProfileActionScriptInputInterface_Access_Array;
   subtype ProfileActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.ProfileActionScriptInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References."=";
   subtype ProfileActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.ProfileActionScriptInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References."=";
   function Java_Box (Value : ProfileActionScriptInputInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.Java_Box;
   function Java_Unbox_ProfileActionScriptInputInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ProfileActionScriptInputInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package_References.Java_Unbox_ProfileActionScriptInputInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ProfileActionScriptInputInterface (Value : ProfileActionScriptInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setInputRobotInterface (This : in out ProfileActionScriptInputInterface; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is abstract;
   function getInputRobotInterface (This : in out ProfileActionScriptInputInterface) return InputRobotInterface_Access is abstract;
   function getTime (This : in out ProfileActionScriptInputInterface) return Integer is abstract;
   procedure setTime (This : in out ProfileActionScriptInputInterface; time : Integer) is abstract;

end org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;



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
limited with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
package org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References is
   type ProfileActionScriptConditionInterface_Access is access all org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package.ProfileActionScriptConditionInterface'Class;
   type ProfileActionScriptConditionInterface_Access_Array is array (Natural range <>) of ProfileActionScriptConditionInterface_Access;
   type ProfileActionScriptConditionInterface_Access_Array_Access is access all ProfileActionScriptConditionInterface_Access_Array;
   type ProfileActionScriptConditionInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptConditionInterface_Access_Array_Access;
   type ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   type ProfileActionScriptConditionInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProfileActionScriptConditionInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ProfileActionScriptConditionInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProfileActionScriptConditionInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProfileActionScriptConditionInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProfileActionScriptConditionInterface_Access_Array_Access is (if Value /= null and then Value.all in ProfileActionScriptConditionInterface_Access_Array_Object'Class then ProfileActionScriptConditionInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ProfileActionScriptConditionInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProfileActionScriptConditionInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProfileActionScriptConditionInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProfileActionScriptConditionInterface_Access_Array_Access_Array_Object'Class then ProfileActionScriptConditionInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package; use org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;

package org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package is

   package ProfileActionScriptItemInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
   package ProfileActionScriptNodeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
   package Reference_Types is
   subtype ProfileActionScriptProcessorInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access;
   use type ProfileActionScriptProcessorInterface_Access;
   subtype ProfileActionScriptProcessorInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array;
   use type ProfileActionScriptProcessorInterface_Access_Array;
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access;
   use type ProfileActionScriptProcessorInterface_Access_Array_Access;
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access_Array;
   use type ProfileActionScriptProcessorInterface_Access_Array_Access_Array;
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access;
   use type ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ProfileActionScriptConditionInterface is interface and ProfileActionScriptNodeInterface and CustomTreeNodeInterface and ProfileActionScriptItemInterface;
   subtype ProfileActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : ProfileActionScriptConditionInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_ProfileActionScriptConditionInterface_Access_Array (Value : access Java_Object'Class) return ProfileActionScriptConditionInterface_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.Java_Unbox_ProfileActionScriptConditionInterface_Access_Array;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_ProfileActionScriptConditionInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.Java_Unbox_ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ProfileActionScriptConditionInterface (Value : ProfileActionScriptConditionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure addProcessor (This : in out ProfileActionScriptConditionInterface; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class) is abstract;
   procedure removeProcessor (This : in out ProfileActionScriptConditionInterface; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class) is abstract;
   function shouldProcess (This : in out ProfileActionScriptConditionInterface; frame : Long_Long_Integer) return Boolean is abstract;
   procedure shouldProcess (This : in out ProfileActionScriptConditionInterface; frame : Long_Long_Integer) is abstract;

end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;



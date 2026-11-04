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

limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References is
   type ProfileActionScriptOutputInterface_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package.ProfileActionScriptOutputInterface'Class;
   type ProfileActionScriptOutputInterface_Access_Array is array (Natural range <>) of ProfileActionScriptOutputInterface_Access;
   type ProfileActionScriptOutputInterface_Access_Array_Access is access all ProfileActionScriptOutputInterface_Access_Array;
   type ProfileActionScriptOutputInterface_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptOutputInterface_Access_Array_Access;
   type ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access is access all ProfileActionScriptOutputInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package is

   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ProfileActionScriptOutputInterface is interface and ProfileActionScriptProcessorInterface;
   subtype ProfileActionScriptOutputInterface_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   subtype ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References.ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptOutputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package_References."=";
   function Java_Object_Access_From_ProfileActionScriptOutputInterface (Value : ProfileActionScriptOutputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;



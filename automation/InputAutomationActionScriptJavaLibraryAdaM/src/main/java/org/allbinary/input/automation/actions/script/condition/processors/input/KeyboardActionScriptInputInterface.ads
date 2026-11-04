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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References is
   type KeyboardActionScriptInputInterface_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class;
   type KeyboardActionScriptInputInterface_Access_Array is array (Natural range <>) of KeyboardActionScriptInputInterface_Access;
   type KeyboardActionScriptInputInterface_Access_Array_Access is access all KeyboardActionScriptInputInterface_Access_Array;
   type KeyboardActionScriptInputInterface_Access_Array_Access_Array is array (Natural range <>) of KeyboardActionScriptInputInterface_Access_Array_Access;
   type KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access is access all KeyboardActionScriptInputInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type KeyboardActionScriptInputInterface is interface and ProfileActionScriptInputInterface;
   subtype KeyboardActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access;
   function "=" (Left, Right : KeyboardActionScriptInputInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References."=";
   subtype KeyboardActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References."=";
   subtype KeyboardActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References."=";
   subtype KeyboardActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References."=";
   subtype KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References."=";
   function Java_Object_Access_From_KeyboardActionScriptInputInterface (Value : KeyboardActionScriptInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getDelayBetweenKeys (This : in out KeyboardActionScriptInputInterface) return Integer is abstract;
   function getKeyArray (This : in out KeyboardActionScriptInputInterface) return Integer_Array_Access is abstract;
   function isPress (This : in out KeyboardActionScriptInputInterface) return Boolean is abstract;
   function isRelease (This : in out KeyboardActionScriptInputInterface) return Boolean is abstract;
   function isNormal (This : in out KeyboardActionScriptInputInterface) return Boolean is abstract;
   procedure setPress (This : in out KeyboardActionScriptInputInterface; press : Boolean) is abstract;
   procedure setRelease (This : in out KeyboardActionScriptInputInterface; release : Boolean) is abstract;
   procedure setNormal (This : in out KeyboardActionScriptInputInterface) is abstract;
   function getText (This : in out KeyboardActionScriptInputInterface) return Unbounded_String is abstract;
   procedure setText (This : in out KeyboardActionScriptInputInterface; text : Unbounded_String) is abstract;
   procedure log (This : in out KeyboardActionScriptInputInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package;



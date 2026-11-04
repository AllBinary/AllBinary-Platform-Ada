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

limited with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;
package org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References is
   type ProfileActionScriptConditionFactory_Access is access all org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package.ProfileActionScriptConditionFactory'Class;
   type ProfileActionScriptConditionFactory_Access_Array is array (Natural range <>) of ProfileActionScriptConditionFactory_Access;
   type ProfileActionScriptConditionFactory_Access_Array_Access is access all ProfileActionScriptConditionFactory_Access_Array;
   type ProfileActionScriptConditionFactory_Access_Array_Access_Array is array (Natural range <>) of ProfileActionScriptConditionFactory_Access_Array_Access;
   type ProfileActionScriptConditionFactory_Access_Array_Access_Array_Access is access all ProfileActionScriptConditionFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References;

with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package is

   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype ProfileActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access;
   use type ProfileActionScriptConditionInterface_Access;
   subtype ProfileActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array;
   use type ProfileActionScriptConditionInterface_Access_Array;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access;
   use type ProfileActionScriptConditionInterface_Access_Array_Access;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   use type ProfileActionScriptConditionInterface_Access_Array_Access_Array;
   subtype ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package_References.ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   use type ProfileActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProfileActionScriptConditionFactory_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References.ProfileActionScriptConditionFactory_Access;
   function "=" (Left, Right : ProfileActionScriptConditionFactory_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References."=";
   subtype ProfileActionScriptConditionFactory_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References.ProfileActionScriptConditionFactory_Access_Array;
   function "=" (Left, Right : ProfileActionScriptConditionFactory_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References."=";
   subtype ProfileActionScriptConditionFactory_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References.ProfileActionScriptConditionFactory_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptConditionFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References."=";
   subtype ProfileActionScriptConditionFactory_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References.ProfileActionScriptConditionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ProfileActionScriptConditionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References."=";
   subtype ProfileActionScriptConditionFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References.ProfileActionScriptConditionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfileActionScriptConditionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package_References."=";

   type ProfileActionScriptConditionFactory is new Java_Object with null record;

   procedure Initialize (This : in out ProfileActionScriptConditionFactory'Class);
   function Create return ProfileActionScriptConditionFactory_Access;
   function getInstance (node_Param : access Node_Package.Node'Class) return ProfileActionScriptConditionInterface_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;



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

limited with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References is
   type AlwaysActionScriptConditionData_Access is access all org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package.AlwaysActionScriptConditionData'Class;
   type AlwaysActionScriptConditionData_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionData_Access;
   type AlwaysActionScriptConditionData_Access_Array_Access is access all AlwaysActionScriptConditionData_Access_Array;
   type AlwaysActionScriptConditionData_Access_Array_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionData_Access_Array_Access;
   type AlwaysActionScriptConditionData_Access_Array_Access_Array_Access is access all AlwaysActionScriptConditionData_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References;

with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AlwaysActionScriptConditionData_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References.AlwaysActionScriptConditionData_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionData_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References."=";
   subtype AlwaysActionScriptConditionData_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References.AlwaysActionScriptConditionData_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionData_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References."=";
   subtype AlwaysActionScriptConditionData_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References.AlwaysActionScriptConditionData_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References."=";
   subtype AlwaysActionScriptConditionData_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References.AlwaysActionScriptConditionData_Access_Array_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References."=";
   subtype AlwaysActionScriptConditionData_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References.AlwaysActionScriptConditionData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package_References."=";

   type AlwaysActionScriptConditionData is new Java_Object with null record;
   NAME : Unbounded_String;
   IS_ON : Unbounded_String;

   procedure Initialize (This : in out AlwaysActionScriptConditionData'Class);
   function Create return AlwaysActionScriptConditionData_Access;

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;



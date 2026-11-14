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
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References is
   type GenericProfileActionScriptOutputData_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package.GenericProfileActionScriptOutputData'Class;
   type GenericProfileActionScriptOutputData_Access_Array is array (Natural range <>) of GenericProfileActionScriptOutputData_Access;
   type GenericProfileActionScriptOutputData_Access_Array_Access is access all GenericProfileActionScriptOutputData_Access_Array;
   type GenericProfileActionScriptOutputData_Access_Array_Access_Array is array (Natural range <>) of GenericProfileActionScriptOutputData_Access_Array_Access;
   type GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access is access all GenericProfileActionScriptOutputData_Access_Array_Access_Array;
   type GenericProfileActionScriptOutputData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericProfileActionScriptOutputData_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericProfileActionScriptOutputData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericProfileActionScriptOutputData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericProfileActionScriptOutputData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericProfileActionScriptOutputData_Access_Array_Access is (if Value /= null and then Value.all in GenericProfileActionScriptOutputData_Access_Array_Object'Class then GenericProfileActionScriptOutputData_Access_Array_Object'Class (Value.all).Value else null);
   type GenericProfileActionScriptOutputData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericProfileActionScriptOutputData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericProfileActionScriptOutputData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericProfileActionScriptOutputData_Access_Array_Access_Array_Object'Class then GenericProfileActionScriptOutputData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileActionScriptOutputData_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.GenericProfileActionScriptOutputData_Access;
   function "=" (Left, Right : GenericProfileActionScriptOutputData_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References."=";
   subtype GenericProfileActionScriptOutputData_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.GenericProfileActionScriptOutputData_Access_Array;
   function "=" (Left, Right : GenericProfileActionScriptOutputData_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References."=";
   subtype GenericProfileActionScriptOutputData_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.GenericProfileActionScriptOutputData_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionScriptOutputData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References."=";
   function Java_Box (Value : GenericProfileActionScriptOutputData_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.Java_Box;
   function Java_Unbox_GenericProfileActionScriptOutputData_Access_Array (Value : access Java_Object'Class) return GenericProfileActionScriptOutputData_Access_Array_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.Java_Unbox_GenericProfileActionScriptOutputData_Access_Array;
   subtype GenericProfileActionScriptOutputData_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.GenericProfileActionScriptOutputData_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileActionScriptOutputData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References."=";
   subtype GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References."=";
   function Java_Box (Value : GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.Java_Box;
   function Java_Unbox_GenericProfileActionScriptOutputData_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericProfileActionScriptOutputData_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package_References.Java_Unbox_GenericProfileActionScriptOutputData_Access_Array_Access_Array;

   type GenericProfileActionScriptOutputData is new Java_Object with null record;
   NAME : Unbounded_String;
   TYPE_Id : Unbounded_String;

   procedure Initialize (This : in out GenericProfileActionScriptOutputData'Class);
   function Create return GenericProfileActionScriptOutputData_Access;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;



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
limited with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;
package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References is
   type AlwaysActionScriptConditionInterface_Access is access all org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package.AlwaysActionScriptConditionInterface'Class;
   type AlwaysActionScriptConditionInterface_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionInterface_Access;
   type AlwaysActionScriptConditionInterface_Access_Array_Access is access all AlwaysActionScriptConditionInterface_Access_Array;
   type AlwaysActionScriptConditionInterface_Access_Array_Access_Array is array (Natural range <>) of AlwaysActionScriptConditionInterface_Access_Array_Access;
   type AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access is access all AlwaysActionScriptConditionInterface_Access_Array_Access_Array;
   type AlwaysActionScriptConditionInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AlwaysActionScriptConditionInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AlwaysActionScriptConditionInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AlwaysActionScriptConditionInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AlwaysActionScriptConditionInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AlwaysActionScriptConditionInterface_Access_Array_Access is (if Value /= null and then Value.all in AlwaysActionScriptConditionInterface_Access_Array_Object'Class then AlwaysActionScriptConditionInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AlwaysActionScriptConditionInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Object'Class then AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type AlwaysActionScriptConditionInterface is interface;
   subtype AlwaysActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : AlwaysActionScriptConditionInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_AlwaysActionScriptConditionInterface_Access_Array (Value : access Java_Object'Class) return AlwaysActionScriptConditionInterface_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.Java_Unbox_AlwaysActionScriptConditionInterface_Access_Array;
   subtype AlwaysActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   subtype AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_AlwaysActionScriptConditionInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AlwaysActionScriptConditionInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package_References.Java_Unbox_AlwaysActionScriptConditionInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AlwaysActionScriptConditionInterface (Value : AlwaysActionScriptConditionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setIsOn (This : in out AlwaysActionScriptConditionInterface; isOn : Boolean) is abstract;
   function isIsOn (This : in out AlwaysActionScriptConditionInterface) return Boolean is abstract;
   procedure log (This : in out AlwaysActionScriptConditionInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;



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
limited with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;
package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References is
   type TimeIntervalActionScriptConditionInterface_Access is access all org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package.TimeIntervalActionScriptConditionInterface'Class;
   type TimeIntervalActionScriptConditionInterface_Access_Array is array (Natural range <>) of TimeIntervalActionScriptConditionInterface_Access;
   type TimeIntervalActionScriptConditionInterface_Access_Array_Access is access all TimeIntervalActionScriptConditionInterface_Access_Array;
   type TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array is array (Natural range <>) of TimeIntervalActionScriptConditionInterface_Access_Array_Access;
   type TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access is access all TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array;
   type TimeIntervalActionScriptConditionInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeIntervalActionScriptConditionInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeIntervalActionScriptConditionInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeIntervalActionScriptConditionInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeIntervalActionScriptConditionInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeIntervalActionScriptConditionInterface_Access_Array_Access is (if Value /= null and then Value.all in TimeIntervalActionScriptConditionInterface_Access_Array_Object'Class then TimeIntervalActionScriptConditionInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Object'Class then TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package is

   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TimeIntervalActionScriptConditionInterface is interface;
   subtype TimeIntervalActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access;
   function "=" (Left, Right : TimeIntervalActionScriptConditionInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References."=";
   subtype TimeIntervalActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array;
   function "=" (Left, Right : TimeIntervalActionScriptConditionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References."=";
   subtype TimeIntervalActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array_Access;
   function "=" (Left, Right : TimeIntervalActionScriptConditionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : TimeIntervalActionScriptConditionInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_TimeIntervalActionScriptConditionInterface_Access_Array (Value : access Java_Object'Class) return TimeIntervalActionScriptConditionInterface_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.Java_Unbox_TimeIntervalActionScriptConditionInterface_Access_Array;
   subtype TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References."=";
   subtype TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package_References.Java_Unbox_TimeIntervalActionScriptConditionInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TimeIntervalActionScriptConditionInterface (Value : TimeIntervalActionScriptConditionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTimeDelayHelper (This : in out TimeIntervalActionScriptConditionInterface) return TimeDelayHelper_Access is abstract;
   procedure log (This : in out TimeIntervalActionScriptConditionInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;



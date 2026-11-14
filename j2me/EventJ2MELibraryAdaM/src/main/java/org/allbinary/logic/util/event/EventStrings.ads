-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.logic.util.event.EventStrings_Package;
package org.allbinary.logic.util.event.EventStrings_Package_References is
   type EventStrings_Access is access all org.allbinary.logic.util.event.EventStrings_Package.EventStrings'Class;
   type EventStrings_Access_Array is array (Natural range <>) of EventStrings_Access;
   type EventStrings_Access_Array_Access is access all EventStrings_Access_Array;
   type EventStrings_Access_Array_Access_Array is array (Natural range <>) of EventStrings_Access_Array_Access;
   type EventStrings_Access_Array_Access_Array_Access is access all EventStrings_Access_Array_Access_Array;
   type EventStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EventStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : EventStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EventStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EventStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EventStrings_Access_Array_Access is (if Value /= null and then Value.all in EventStrings_Access_Array_Object'Class then EventStrings_Access_Array_Object'Class (Value.all).Value else null);
   type EventStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EventStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EventStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EventStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EventStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EventStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EventStrings_Access_Array_Access_Array_Object'Class then EventStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.event.EventStrings_Package_References;

with org.allbinary.logic.util.event.EventStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.util.event.EventStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype EventStrings_Access is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access;
   function "=" (Left, Right : EventStrings_Access) return Boolean renames org.allbinary.logic.util.event.EventStrings_Package_References."=";
   subtype EventStrings_Access_Array is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array;
   function "=" (Left, Right : EventStrings_Access_Array) return Boolean renames org.allbinary.logic.util.event.EventStrings_Package_References."=";
   subtype EventStrings_Access_Array_Access is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array_Access;
   function "=" (Left, Right : EventStrings_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.EventStrings_Package_References."=";
   function Java_Box (Value : EventStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.EventStrings_Package_References.Java_Box;
   function Java_Unbox_EventStrings_Access_Array (Value : access Java_Object'Class) return EventStrings_Access_Array_Access renames org.allbinary.logic.util.event.EventStrings_Package_References.Java_Unbox_EventStrings_Access_Array;
   subtype EventStrings_Access_Array_Access_Array is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array_Access_Array;
   function "=" (Left, Right : EventStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.EventStrings_Package_References."=";
   subtype EventStrings_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EventStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.EventStrings_Package_References."=";
   function Java_Box (Value : EventStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.EventStrings_Package_References.Java_Box;
   function Java_Unbox_EventStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return EventStrings_Access_Array_Access_Array_Access renames org.allbinary.logic.util.event.EventStrings_Package_References.Java_Unbox_EventStrings_Access_Array_Access_Array;

   type EventStrings is new Java_Object with record
      PERFORMANCE_MESSAGE : Unbounded_String;
      TOTAL_LISTENERS : Unbounded_String;
      LISTENER_LABEL : Unbounded_String;
      FIRE_EVENT : Unbounded_String;
   end record;
   instance : EventStrings_Access;

   procedure Initialize (This : in out EventStrings'Class);
   function Create return EventStrings_Access;
   function getInstance return EventStrings_Access;

end org.allbinary.logic.util.event.EventStrings_Package;



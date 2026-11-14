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
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
package org.allbinary.logic.util.event.EventListenerInterface_Package_References is
   type EventListenerInterface_Access is access all org.allbinary.logic.util.event.EventListenerInterface_Package.EventListenerInterface'Class;
   type EventListenerInterface_Access_Array is array (Natural range <>) of EventListenerInterface_Access;
   type EventListenerInterface_Access_Array_Access is access all EventListenerInterface_Access_Array;
   type EventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of EventListenerInterface_Access_Array_Access;
   type EventListenerInterface_Access_Array_Access_Array_Access is access all EventListenerInterface_Access_Array_Access_Array;
   type EventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : EventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in EventListenerInterface_Access_Array_Object'Class then EventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type EventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EventListenerInterface_Access_Array_Access_Array_Object'Class then EventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.event.EventListenerInterface_Package_References;

with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.logic.util.event.EventListenerInterface_Package is

   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type EventListenerInterface is interface;
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   function "=" (Left, Right : EventListenerInterface_Access) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   function "=" (Left, Right : EventListenerInterface_Access_Array) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : EventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   function Java_Box (Value : EventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.EventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_EventListenerInterface_Access_Array (Value : access Java_Object'Class) return EventListenerInterface_Access_Array_Access renames org.allbinary.logic.util.event.EventListenerInterface_Package_References.Java_Unbox_EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : EventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.EventListenerInterface_Package_References."=";
   function Java_Box (Value : EventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.EventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_EventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return EventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.util.event.EventListenerInterface_Package_References.Java_Unbox_EventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_EventListenerInterface (Value : EventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onEvent (This : in out EventListenerInterface; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is abstract;

end org.allbinary.logic.util.event.EventListenerInterface_Package;



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
limited with org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package;
package org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References is
   type ScrolledMotionGesturesHandler_Access is access all org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package.ScrolledMotionGesturesHandler'Class;
   type ScrolledMotionGesturesHandler_Access_Array is array (Natural range <>) of ScrolledMotionGesturesHandler_Access;
   type ScrolledMotionGesturesHandler_Access_Array_Access is access all ScrolledMotionGesturesHandler_Access_Array;
   type ScrolledMotionGesturesHandler_Access_Array_Access_Array is array (Natural range <>) of ScrolledMotionGesturesHandler_Access_Array_Access;
   type ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access is access all ScrolledMotionGesturesHandler_Access_Array_Access_Array;
   type ScrolledMotionGesturesHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrolledMotionGesturesHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrolledMotionGesturesHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrolledMotionGesturesHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrolledMotionGesturesHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrolledMotionGesturesHandler_Access_Array_Access is (if Value /= null and then Value.all in ScrolledMotionGesturesHandler_Access_Array_Object'Class then ScrolledMotionGesturesHandler_Access_Array_Object'Class (Value.all).Value else null);
   type ScrolledMotionGesturesHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScrolledMotionGesturesHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScrolledMotionGesturesHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScrolledMotionGesturesHandler_Access_Array_Access_Array_Object'Class then ScrolledMotionGesturesHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References;

with org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References;
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
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
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
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScrolledMotionGesturesHandler_Access is org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.ScrolledMotionGesturesHandler_Access;
   function "=" (Left, Right : ScrolledMotionGesturesHandler_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References."=";
   subtype ScrolledMotionGesturesHandler_Access_Array is org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.ScrolledMotionGesturesHandler_Access_Array;
   function "=" (Left, Right : ScrolledMotionGesturesHandler_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References."=";
   subtype ScrolledMotionGesturesHandler_Access_Array_Access is org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.ScrolledMotionGesturesHandler_Access_Array_Access;
   function "=" (Left, Right : ScrolledMotionGesturesHandler_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References."=";
   function Java_Box (Value : ScrolledMotionGesturesHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.Java_Box;
   function Java_Unbox_ScrolledMotionGesturesHandler_Access_Array (Value : access Java_Object'Class) return ScrolledMotionGesturesHandler_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.Java_Unbox_ScrolledMotionGesturesHandler_Access_Array;
   subtype ScrolledMotionGesturesHandler_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.ScrolledMotionGesturesHandler_Access_Array_Access_Array;
   function "=" (Left, Right : ScrolledMotionGesturesHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References."=";
   subtype ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References."=";
   function Java_Box (Value : ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.Java_Box;
   function Java_Unbox_ScrolledMotionGesturesHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return ScrolledMotionGesturesHandler_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package_References.Java_Unbox_ScrolledMotionGesturesHandler_Access_Array_Access_Array;

   type ScrolledMotionGesturesHandler is new BasicEventHandler with null record;
   SINGLETON : ScrolledMotionGesturesHandler_Access;

   procedure Initialize (This : in out ScrolledMotionGesturesHandler'Class);
   function Create return ScrolledMotionGesturesHandler_Access;
   function getInstance return ScrolledMotionGesturesHandler_Access;
   procedure process (This : in out ScrolledMotionGesturesHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package;



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
limited with org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;
package org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References is
   type MotionGestureReceiveInterfaceFactory_Access is access all org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package.MotionGestureReceiveInterfaceFactory'Class;
   type MotionGestureReceiveInterfaceFactory_Access_Array is array (Natural range <>) of MotionGestureReceiveInterfaceFactory_Access;
   type MotionGestureReceiveInterfaceFactory_Access_Array_Access is access all MotionGestureReceiveInterfaceFactory_Access_Array;
   type MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of MotionGestureReceiveInterfaceFactory_Access_Array_Access;
   type MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access is access all MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array;
   type MotionGestureReceiveInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureReceiveInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureReceiveInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureReceiveInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureReceiveInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureReceiveInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureReceiveInterfaceFactory_Access_Array_Object'Class then MotionGestureReceiveInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Object'Class then MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References;

with org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References;

package org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package is

   package Reference_Types is
   subtype CompleteMotionGestureListenerInterface_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access;
   use type CompleteMotionGestureListenerInterface_Access;
   subtype CompleteMotionGestureListenerInterface_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array;
   use type CompleteMotionGestureListenerInterface_Access_Array;
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access;
   use type CompleteMotionGestureListenerInterface_Access_Array_Access;
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array;
   use type CompleteMotionGestureListenerInterface_Access_Array_Access_Array;
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access;
   use type CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionGestureReceiveInterfaceFactory_Access is org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.MotionGestureReceiveInterfaceFactory_Access;
   function "=" (Left, Right : MotionGestureReceiveInterfaceFactory_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References."=";
   subtype MotionGestureReceiveInterfaceFactory_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.MotionGestureReceiveInterfaceFactory_Access_Array;
   function "=" (Left, Right : MotionGestureReceiveInterfaceFactory_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References."=";
   subtype MotionGestureReceiveInterfaceFactory_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.MotionGestureReceiveInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : MotionGestureReceiveInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References."=";
   function Java_Box (Value : MotionGestureReceiveInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_MotionGestureReceiveInterfaceFactory_Access_Array (Value : access Java_Object'Class) return MotionGestureReceiveInterfaceFactory_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.Java_Unbox_MotionGestureReceiveInterfaceFactory_Access_Array;
   subtype MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References."=";
   subtype MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References."=";
   function Java_Box (Value : MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package_References.Java_Unbox_MotionGestureReceiveInterfaceFactory_Access_Array_Access_Array;

   type MotionGestureReceiveInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out MotionGestureReceiveInterfaceFactory'Class);
   function Create return MotionGestureReceiveInterfaceFactory_Access;
   function getInstance return CompleteMotionGestureListenerInterface_Access;

end org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;



--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
limited with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
package org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References is
   type BaseGameInputMotionEventProcessor_Access is access all org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package.BaseGameInputMotionEventProcessor'Class;
   type BaseGameInputMotionEventProcessor_Access_Array is array (Natural range <>) of BaseGameInputMotionEventProcessor_Access;
   type BaseGameInputMotionEventProcessor_Access_Array_Access is access all BaseGameInputMotionEventProcessor_Access_Array;
   type BaseGameInputMotionEventProcessor_Access_Array_Access_Array is array (Natural range <>) of BaseGameInputMotionEventProcessor_Access_Array_Access;
   type BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access is access all BaseGameInputMotionEventProcessor_Access_Array_Access_Array;
   type BaseGameInputMotionEventProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseGameInputMotionEventProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseGameInputMotionEventProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseGameInputMotionEventProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseGameInputMotionEventProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseGameInputMotionEventProcessor_Access_Array_Access is (if Value /= null and then Value.all in BaseGameInputMotionEventProcessor_Access_Array_Object'Class then BaseGameInputMotionEventProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseGameInputMotionEventProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Object'Class then BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References;

with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.view.MotionEvent_Package;
with android.view.MotionEvent_Package_References;
limited with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.android.input.motion.MotionEventProcessor_Package; use org.allbinary.android.input.motion.MotionEventProcessor_Package;

package org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package is

   package MotionEvent_Package renames Standard.android.view.MotionEvent_Package;
   package GameMotionGestureListener_Package renames Standard.org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   use type MotionEvent_Access;
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   use type MotionEvent_Access_Array;
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   use type MotionEvent_Access_Array_Access;
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   use type MotionEvent_Access_Array_Access_Array;
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   use type MotionEvent_Access_Array_Access_Array_Access;
   subtype GameMotionGestureListener_Access is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access;
   use type GameMotionGestureListener_Access;
   subtype GameMotionGestureListener_Access_Array is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array;
   use type GameMotionGestureListener_Access_Array;
   subtype GameMotionGestureListener_Access_Array_Access is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array_Access;
   use type GameMotionGestureListener_Access_Array_Access;
   subtype GameMotionGestureListener_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array_Access_Array;
   use type GameMotionGestureListener_Access_Array_Access_Array;
   subtype GameMotionGestureListener_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package_References.GameMotionGestureListener_Access_Array_Access_Array_Access;
   use type GameMotionGestureListener_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BaseGameInputMotionEventProcessor_Access is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access;
   function "=" (Left, Right : BaseGameInputMotionEventProcessor_Access) return Boolean renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References."=";
   subtype BaseGameInputMotionEventProcessor_Access_Array is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array;
   function "=" (Left, Right : BaseGameInputMotionEventProcessor_Access_Array) return Boolean renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References."=";
   subtype BaseGameInputMotionEventProcessor_Access_Array_Access is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array_Access;
   function "=" (Left, Right : BaseGameInputMotionEventProcessor_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References."=";
   function Java_Box (Value : BaseGameInputMotionEventProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.Java_Box;
   function Java_Unbox_BaseGameInputMotionEventProcessor_Access_Array (Value : access Java_Object'Class) return BaseGameInputMotionEventProcessor_Access_Array_Access renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.Java_Unbox_BaseGameInputMotionEventProcessor_Access_Array;
   subtype BaseGameInputMotionEventProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BaseGameInputMotionEventProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References."=";
   subtype BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References."=";
   function Java_Box (Value : BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.Java_Box;
   function Java_Unbox_BaseGameInputMotionEventProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.Java_Unbox_BaseGameInputMotionEventProcessor_Access_Array_Access_Array;

   type BaseGameInputMotionEventProcessor is new MotionEventProcessor with record
      commonStrings : CommonStrings_Access;
      gameMotionGestureListener : GameMotionGestureListener_Access;
   end record;

   procedure Initialize (This : in out BaseGameInputMotionEventProcessor'Class);
   function Create return BaseGameInputMotionEventProcessor_Access;
   procedure process (This : in out BaseGameInputMotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class);
   procedure addListener (This : in out BaseGameInputMotionEventProcessor);

end org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;



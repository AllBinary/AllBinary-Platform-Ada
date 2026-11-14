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
limited with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;
package org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References is
   type PopupMenuInputProcessor_Access is access all org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package.PopupMenuInputProcessor'Class;
   type PopupMenuInputProcessor_Access_Array is array (Natural range <>) of PopupMenuInputProcessor_Access;
   type PopupMenuInputProcessor_Access_Array_Access is access all PopupMenuInputProcessor_Access_Array;
   type PopupMenuInputProcessor_Access_Array_Access_Array is array (Natural range <>) of PopupMenuInputProcessor_Access_Array_Access;
   type PopupMenuInputProcessor_Access_Array_Access_Array_Access is access all PopupMenuInputProcessor_Access_Array_Access_Array;
   type PopupMenuInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PopupMenuInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : PopupMenuInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PopupMenuInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PopupMenuInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PopupMenuInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in PopupMenuInputProcessor_Access_Array_Object'Class then PopupMenuInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type PopupMenuInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PopupMenuInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PopupMenuInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PopupMenuInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PopupMenuInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PopupMenuInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PopupMenuInputProcessor_Access_Array_Access_Array_Object'Class then PopupMenuInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
limited with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   use type MotionGestureEvent_Access;
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   use type MotionGestureEvent_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access;
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   use type MotionGestureEvent_Access_Array_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access_Array_Access;
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   use type RectangleCollisionUtil_Access;
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   use type RectangleCollisionUtil_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access;
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   use type RectangleCollisionUtil_Access_Array_Access_Array;
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   use type RectangleCollisionUtil_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PopupMenuInputProcessor_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access;
   function "=" (Left, Right : PopupMenuInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   function Java_Box (Value : PopupMenuInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.Java_Box;
   function Java_Unbox_PopupMenuInputProcessor_Access_Array (Value : access Java_Object'Class) return PopupMenuInputProcessor_Access_Array_Access renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.Java_Unbox_PopupMenuInputProcessor_Access_Array;
   subtype PopupMenuInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   subtype PopupMenuInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.PopupMenuInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PopupMenuInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References."=";
   function Java_Box (Value : PopupMenuInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.Java_Box;
   function Java_Unbox_PopupMenuInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return PopupMenuInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package_References.Java_Unbox_PopupMenuInputProcessor_Access_Array_Access_Array;

   type PopupMenuInputProcessor is new BasicMenuInputProcessor with record
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      CLICK_DELAY : Integer;
      clickTimeHelper : TimeDelayHelper_Access;
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out PopupMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return PopupMenuInputProcessor_Access;
   procedure init (This : in out PopupMenuInputProcessor; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function processInput (This : in out PopupMenuInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out PopupMenuInputProcessor; key : Integer);
   function processInputList (This : in out PopupMenuInputProcessor) return Integer;
   function processMotionInputs (This : in out PopupMenuInputProcessor) return Integer;
   procedure processMotionInput (This : in out PopupMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;



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

limited with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
package org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References is
   type BasicMenuInputProcessor_Access is access all org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class;
   type BasicMenuInputProcessor_Access_Array is array (Natural range <>) of BasicMenuInputProcessor_Access;
   type BasicMenuInputProcessor_Access_Array_Access is access all BasicMenuInputProcessor_Access_Array;
   type BasicMenuInputProcessor_Access_Array_Access_Array is array (Natural range <>) of BasicMenuInputProcessor_Access_Array_Access;
   type BasicMenuInputProcessor_Access_Array_Access_Array_Access is access all BasicMenuInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package BaseMotionGestureEventListener_Package renames Standard.org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
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


   subtype BasicMenuInputProcessor_Access is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access;
   function "=" (Left, Right : BasicMenuInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array_Access;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";

   type BasicMenuInputProcessor is new PlayerGameInput and BaseMotionGestureEventListener with record
      motionGestureEventList : BasicArrayList_Access;
      canvas : Canvas_Access;
   end record;

   procedure Initialize (This : in out BasicMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas_Package.Canvas'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas_Package.Canvas'Class) return BasicMenuInputProcessor_Access;
   procedure onMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onScrolledMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure setCanvas (This : in out BasicMenuInputProcessor; canvas_Param : access MyCanvas_Package.MyCanvas'Class);
   function getCanvas (This : in out BasicMenuInputProcessor) return MyCanvas_Access;
   function processInputList (This : in out BasicMenuInputProcessor) return Integer;

end org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;



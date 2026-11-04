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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package is

   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   function "=" (Left, Right : MotionGestureEvent_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out BasicMenuInputProcessor'Class) is
   begin
      null;
      This.motionGestureEventList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.canvas := Canvas_Access (NullCanvas_Package.NULL_CANVAS);
   end Initialize_Fields;


   procedure Initialize (This : in out BasicMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas_Package.Canvas'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : constant Canvas_Access := Canvas_Access (gameCanvas_Param);
   begin
        PlayerGameInput_Package.Initialize (This, gameKeyEventList, BasicArrayListD_Package.Create, playerInputId);
        Initialize_Fields (This);
        This.canvas := gameCanvas;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas_Package.Canvas'Class) return BasicMenuInputProcessor_Access is
      This : constant BasicMenuInputProcessor_Access := new BasicMenuInputProcessor;
   begin
      BasicMenuInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param);
      return This;
   end Create;

   procedure onMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        This.motionGestureEventList.add (Java_Object_Access (motionGestureEvent));
   end onMotionGestureEvent;

   procedure onScrolledMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        null;
   end onScrolledMotionGestureEvent;

   procedure setCanvas (This : in out BasicMenuInputProcessor; canvas_Param : access MyCanvas_Package.MyCanvas'Class) is
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
   begin
        This.canvas := Canvas_Access (canvas);
   end setCanvas;

   function getCanvas (This : in out BasicMenuInputProcessor) return MyCanvas_Access is
   begin
        return MyCanvas_Access (This.canvas);
   end getCanvas;

   --  throws Exception
   function processInputList (This : in out BasicMenuInputProcessor) return Integer is
   begin
        return -(1);
   end processInputList;

end org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;



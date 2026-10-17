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


package body org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package is

   procedure Initialize_Fields (This : in out BasicMenuInputProcessor'Class) is
   begin
      null;
      This.motionGestureEventList := BasicArrayListD_Package.Create;
      This.canvas := NullCanvas_Package.NULL_CANVAS;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas'Class) is
      gameKeyEventList : BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : Canvas_Access := Canvas_Access (gameCanvas_Param);
   begin
        PlayerGameInput_Package.Initialize (This, gameKeyEventList, BasicArrayListD_Package.Create, playerInputId);
        Initialize_Fields (This);
        This.canvas := gameCanvas;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas'Class) return BasicMenuInputProcessor_Access is
      This : constant BasicMenuInputProcessor_Access := new BasicMenuInputProcessor;
   begin
      BasicMenuInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param);
      return This;
   end Create;

   procedure onMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent'Class) is
      motionGestureEvent : MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        This.motionGestureEventList.add (motionGestureEvent);
   end onMotionGestureEvent;

   procedure onScrolledMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent'Class) is
      motionGestureEvent : MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        null;
   end onScrolledMotionGestureEvent;

   procedure setCanvas (This : in out BasicMenuInputProcessor; canvas_Param : access MyCanvas'Class) is
      canvas : MyCanvas_Access := MyCanvas_Access (canvas_Param);
   begin
        This.canvas := canvas;
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



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


package body org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package is

   procedure Initialize_Fields (This : in out PopupMenuInputProcessor'Class) is
   begin
      null;
      This.rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
      This.CLICK_DELAY := 120;
      This.clickTimeHelper := TimeDelayHelper_Package.Create (This.CLICK_DELAY);
      
   end Initialize_Fields;


   procedure Initialize (This : in out PopupMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : constant MyCanvas_Access := MyCanvas_Access (gameCanvas_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        BasicMenuInputProcessor_Package.Initialize (This, gameKeyEventList, playerInputId, gameCanvas);
        Initialize_Fields (This);
        This.rectangle := rectangle;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return PopupMenuInputProcessor_Access is
      This : constant PopupMenuInputProcessor_Access := new PopupMenuInputProcessor;
   begin
      PopupMenuInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param, rectangle_Param);
      return This;
   end Create;

   procedure init (This : in out PopupMenuInputProcessor; rectangle_Param : access Rectangle_Package.Rectangle'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
   begin
        This.rectangle := rectangle;
   end init;

   --  throws Exception
   function processInput (This : in out PopupMenuInputProcessor; key : Integer) return Integer is
      gameCanvas : AllBinaryGameCanvas_Access;
   begin
        if (key) = (Canvas_Package.KEY_STAR) then
            gameCanvas := AllBinaryGameCanvas_Access (PopupMenuInputProcessor'Class (This).getCanvas);
            gameCanvas.toggleMenu;
            return 1;
        end if;
        return 0;
   end processInput;

   --  throws Exception
   function processInputList (This : in out PopupMenuInputProcessor) return Integer is
      motionInputsIndex : Integer;
      list : BasicArrayList_Access;
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            motionInputsIndex := PopupMenuInputProcessor'Class (This).processMotionInputs;
            list := PopupMenuInputProcessor'Class (This).getGameKeyEventList;
            size := list.size;
            key := 0;
            gameKeyEvent := null;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (list.objectArray (index));
                if (gameKeyEvent) /= (null) then
                    key := gameKeyEvent.getKey;
                    if (PopupMenuInputProcessor'Class (This).processInput (key)) = (1) then
                        exit;
                    end if;
                end if;
            end loop;
            PopupMenuInputProcessor'Class (This).clear;
            if ((size) > (0)) or else ((motionInputsIndex) >= (0)) then
                return 1;
            else
                return -(1);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, PopupMenuInputProcessor_Access'(This'Unchecked_Access), GameInputStrings_Package.getInstance.PROCESS_INPUT, e);
            return -(1);
                end;
        end;
   end processInputList;

   --  throws Exception
   function processMotionInputs (This : in out PopupMenuInputProcessor) return Integer is
      lastIndex : Integer;
      motionGestureEvent : MotionGestureEvent_Access;
   begin
        lastIndex := (This.motionGestureEventList.size) - (1);
        if (lastIndex) >= (0) then
            motionGestureEvent := MotionGestureEvent_Access (This.motionGestureEventList.objectArray (lastIndex));
            PopupMenuInputProcessor'Class (This).processMotionInput (motionGestureEvent);
        end if;
        This.motionGestureEventList.clear;
        return lastIndex;
   end processMotionInputs;

   --  throws Exception
   procedure processMotionInput (This : in out PopupMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      motionGestureInput : MotionGestureInput_Access;
      point : GPoint_Access;
      rectPoint : GPoint_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
   begin
        if (motionGestureEvent) = (null) then
            This.logUtil.putF (To_Unbounded_String ("Exception: Bug"), PopupMenuInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_MOTION_INPUT);
            return;
        end if;
        touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
        motionGestureInput := motionGestureEvent.getMotionGesture;
        if (motionGestureInput) = (touchMotionGestureFactory.RELEASED) then
            point := motionGestureEvent.getCurrentPoint;
            rectPoint := This.rectangle.getPoint;
            if This.rectangleCollisionUtil.isInside (rectPoint.getX, rectPoint.getY, (This.rectangle.getMaxX) + (20), This.rectangle.getMaxY, point.getX, point.getY) then
                if This.clickTimeHelper.isTimeTNT then
                    gameCanvas := AllBinaryGameCanvas_Access (PopupMenuInputProcessor'Class (This).getCanvas);
                    gameCanvas.toggleMenu;
                end if;
            end if;
        end if;
   end processMotionInput;

   procedure processInput (This : in out PopupMenuInputProcessor; key : Integer) is
      Java_Result : constant Integer := PopupMenuInputProcessor'Class (This).processInput (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processInput;

end org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;



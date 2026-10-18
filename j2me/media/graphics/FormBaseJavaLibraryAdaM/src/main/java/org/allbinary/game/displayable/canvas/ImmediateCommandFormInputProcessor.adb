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


package body org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package is

   procedure Initialize_Fields (This : in out ImmediateCommandFormInputProcessor'Class) is
   begin
      null;
      This.timeHelper := TimeDelayHelper_Package.Create (25);
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImmediateCommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCommandCanvas_Param : access GameCommandCanvas_Package.GameCommandCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCommandCanvas : constant GameCommandCanvas_Access := GameCommandCanvas_Access (gameCommandCanvas_Param);
      form : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (form_Param);
   begin
        CommandFormInputProcessor_Package.Initialize (This, gameKeyEventList, playerInputId, gameCommandCanvas, form);
        Initialize_Fields (This);
        This.gameCommandCanvas := gameCommandCanvas;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCommandCanvas_Param : access GameCommandCanvas_Package.GameCommandCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ImmediateCommandFormInputProcessor_Access is
      This : constant ImmediateCommandFormInputProcessor_Access := new ImmediateCommandFormInputProcessor;
   begin
      ImmediateCommandFormInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCommandCanvas_Param, form_Param);
      return This;
   end Create;

   procedure onPressGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        begin
            CommandFormInputProcessor (This).onPressGameKeyEvent (gameKeyEvent);
            if This.timeHelper.isTimeTNT then
                ImmediateCommandFormInputProcessor'Class (This).processInputList;
                This.gameCommandCanvas.repaintBehavior.onChangeRepaint (ImmediateCommandFormInputProcessor'Class (This).getCanvas);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImmediateCommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.ON_PRESS_GAME_KEY, e);
                end;
        end;
   end onPressGameKeyEvent;

   procedure onDownGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        begin
            CommandFormInputProcessor (This).onDownGameKeyEvent (gameKeyEvent);
            if This.timeHelper.isTimeTNT then
                ImmediateCommandFormInputProcessor'Class (This).processInputList;
                This.gameCommandCanvas.repaintBehavior.onChangeRepaint (ImmediateCommandFormInputProcessor'Class (This).getCanvas);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImmediateCommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.ON_DOWN_GAME_KEY, e);
                end;
        end;
   end onDownGameKeyEvent;

   procedure onUpGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        begin
            CommandFormInputProcessor (This).onUpGameKeyEvent (gameKeyEvent);
            if This.timeHelper.isTimeTNT then
                ImmediateCommandFormInputProcessor'Class (This).processInputList;
                This.gameCommandCanvas.repaintBehavior.onChangeRepaint (ImmediateCommandFormInputProcessor'Class (This).getCanvas);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImmediateCommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.ON_UP_GAME_KEY, e);
                end;
        end;
   end onUpGameKeyEvent;

   procedure onMotionGestureEvent (This : in out ImmediateCommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        begin
            CommandFormInputProcessor (This).onMotionGestureEvent (motionGestureEvent);
            if This.timeHelper.isTimeTNT then
                ImmediateCommandFormInputProcessor'Class (This).processInputList;
                This.gameCommandCanvas.repaintBehavior.onChangeRepaint (ImmediateCommandFormInputProcessor'Class (This).getCanvas);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImmediateCommandFormInputProcessor_Access'(This'Unchecked_Access), To_Unbounded_String ("onMotionGestureEvent"), e);
                end;
        end;
   end onMotionGestureEvent;

end org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package;



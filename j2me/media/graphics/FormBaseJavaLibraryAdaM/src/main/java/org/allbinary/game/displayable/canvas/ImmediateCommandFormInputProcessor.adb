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


with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package; use org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package;

package body org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package is

   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
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
   subtype GameCommandCanvas_Access is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access;
   function "=" (Left, Right : GameCommandCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References."=";
   subtype GameCommandCanvas_Access_Array is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array;
   function "=" (Left, Right : GameCommandCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References."=";
   subtype GameCommandCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array_Access;
   function "=" (Left, Right : GameCommandCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References."=";
   subtype GameCommandCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : GameCommandCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References."=";
   subtype GameCommandCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameCommandCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References."=";
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
            CommandFormInputProcessor_Package.CommandFormInputProcessor (This).onPressGameKeyEvent (gameKeyEvent);
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
            CommandFormInputProcessor_Package.CommandFormInputProcessor (This).onDownGameKeyEvent (gameKeyEvent);
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
            CommandFormInputProcessor_Package.CommandFormInputProcessor (This).onUpGameKeyEvent (gameKeyEvent);
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
            CommandFormInputProcessor_Package.CommandFormInputProcessor (This).onMotionGestureEvent (motionGestureEvent);
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



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


with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener_Package is

   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out ReleaseControlledMotionGestureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.currentMotionGesture := TouchMotionGestureFactory_Package.getInstance.NO_MOTION;
      This.isMouseGestureOccurring := False;
      This.motionGestureCollection := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
   end Initialize_Fields;


   procedure Initialize (This : in out ReleaseControlledMotionGestureListener'Class; signed_Param : access CompleteMotionGestureListenerInterface_Package.CompleteMotionGestureListenerInterface'Class) is
      signed : constant CompleteMotionGestureListenerInterface_Access := CompleteMotionGestureListenerInterface_Access (signed_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, ReleaseControlledMotionGestureListener_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.signed := signed;
   end Initialize;

   function Create (signed_Param : access CompleteMotionGestureListenerInterface_Package.CompleteMotionGestureListenerInterface'Class) return ReleaseControlledMotionGestureListener_Access is
      This : constant ReleaseControlledMotionGestureListener_Access := new ReleaseControlledMotionGestureListener;
   begin
      ReleaseControlledMotionGestureListener_Package.Initialize (This.all, signed_Param);
      return This;
   end Create;

   procedure onEvent (This : in out ReleaseControlledMotionGestureListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, ReleaseControlledMotionGestureListener_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onUpMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onUpMotionGestureEvent;

   procedure onDownMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDownMotionGestureEvent;

   procedure onLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onLeftMotionGestureEvent;

   procedure onRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onRightMotionGestureEvent;

   procedure onDiagonalDownRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalDownRightMotionGestureEvent;

   procedure onDiagonalDownLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalDownLeftMotionGestureEvent;

   procedure onDiagonalUpRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalUpRightMotionGestureEvent;

   procedure onDiagonalUpLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalUpLeftMotionGestureEvent;

   procedure onPressedMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        This.isMouseGestureOccurring := True;
        This.currentMotionGesture := TouchMotionGestureFactory_Package.getInstance.NO_MOTION;
        ReleaseControlledMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onPressedMotionGestureEvent;

   procedure onScrolledMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        null;
   end onScrolledMotionGestureEvent;

   procedure released (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        begin
            if (This.isMouseGestureOccurring) = (False) then
                return;
            end if;
            This.isMouseGestureOccurring := False;
            This.signed.onMotionGestureCompleted (This.motionGestureCollection);
            This.motionGestureCollection.clear;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (StringUtil_Package.getInstance.toString (ev.getMotionGesture)).toString, ReleaseControlledMotionGestureListener_Access'(This'Unchecked_Access), To_Unbounded_String ("release"), e);
                end;
        end;
   end released;

   procedure onMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
      motionGestureInput : MotionGestureInput_Access;
   begin
        if (This.isMouseGestureOccurring) = (False) then
            return;
        end if;
        motionGestureInput := ev.getMotionGesture;
        if (motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.PRESSED) then
            ReleaseControlledMotionGestureListener'Class (This).onPressedMotionGestureEvent (ev);
        elsif (motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.RELEASED) then
            ReleaseControlledMotionGestureListener'Class (This).released (ev);
        else
            if (This.currentMotionGesture) /= (motionGestureInput) then
                This.currentMotionGesture := motionGestureInput;
                This.motionGestureCollection.add (ev.getMotionGesture);
            end if;
        end if;
   end onMotionGestureEvent;

end org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener_Package;



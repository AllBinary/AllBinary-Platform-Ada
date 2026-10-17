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


package body org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener_Package is

   procedure Initialize_Fields (This : in out ReleaseControlledMotionGestureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.currentMotionGesture := TouchMotionGestureFactory_Package.getInstance.NO_MOTION;
      This.isMouseGestureOccurring := False;
      This.motionGestureCollection := BasicArrayListD_Package.Create;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ReleaseControlledMotionGestureListener'Class; signed : CompleteMotionGestureListenerInterface_Access) is
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.signed := signed;
   end Initialize;

   function Create (signed : CompleteMotionGestureListenerInterface_Access) return ReleaseControlledMotionGestureListener_Access is
      This : constant ReleaseControlledMotionGestureListener_Access := new ReleaseControlledMotionGestureListener;
   begin
      Initialize (This.all, signed);
      return This;
   end Create;

   procedure onEvent (This : in out ReleaseControlledMotionGestureListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access);
   end onEvent;

   procedure onUpMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onUpMotionGestureEvent;

   procedure onDownMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDownMotionGestureEvent;

   procedure onLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onLeftMotionGestureEvent;

   procedure onRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onRightMotionGestureEvent;

   procedure onDiagonalDownRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalDownRightMotionGestureEvent;

   procedure onDiagonalDownLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalDownLeftMotionGestureEvent;

   procedure onDiagonalUpRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalUpRightMotionGestureEvent;

   procedure onDiagonalUpLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalUpLeftMotionGestureEvent;

   procedure onPressedMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.isMouseGestureOccurring := True;
        This.currentMotionGesture := TouchMotionGestureFactory_Package.getInstance.NO_MOTION;
        This.onMotionGestureEvent (ev);
   end onPressedMotionGestureEvent;

   procedure onScrolledMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; motionGestureEvent : MotionGestureEvent_Access) is
   begin
        null;
   end onScrolledMotionGestureEvent;

   procedure released (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
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
            This.logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (StringUtil_Package.getInstance.toString (ev.getMotionGesture)).toString, This'Unchecked_Access, To_Unbounded_String ("release"), e);
                end;
        end;
   end released;

   procedure onMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access) is
      motionGestureInput : MotionGestureInput_Access;
   begin
        if (This.isMouseGestureOccurring) = (False) then
            return;
        end if;
        motionGestureInput := ev.getMotionGesture;
        if (motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.PRESSED) then
            This.onPressedMotionGestureEvent (ev);
        elsif (motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.RELEASED) then
            This.released (ev);
        else
            if (This.currentMotionGesture) /= (motionGestureInput) then
                This.currentMotionGesture := motionGestureInput;
                This.motionGestureCollection.add (ev.getMotionGesture);
            end if;
        end if;
   end onMotionGestureEvent;

end org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener_Package;



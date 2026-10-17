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


package body org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package is

   procedure Initialize_Fields (This : in out GameMotionGestureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.motionGestureCollection := BasicArrayListD_Package.Create;
      This.touchGestureCollection := BasicArrayListD_Package.Create;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameMotionGestureListener'Class; signed : CompleteMotionGestureListenerInterface_Access) is
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.signed := signed;
   end Initialize;

   function Create (signed : CompleteMotionGestureListenerInterface_Access) return GameMotionGestureListener_Access is
      This : constant GameMotionGestureListener_Access := new GameMotionGestureListener;
   begin
      Initialize (This.all, signed);
      return This;
   end Create;

   procedure onEvent (This : in out GameMotionGestureListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access);
   end onEvent;

   procedure onUpMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onUpMotionGestureEvent;

   procedure onDownMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDownMotionGestureEvent;

   procedure onLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onLeftMotionGestureEvent;

   procedure onRightMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onRightMotionGestureEvent;

   procedure onDiagonalDownRightMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalDownRightMotionGestureEvent;

   procedure onDiagonalDownLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalDownLeftMotionGestureEvent;

   procedure onDiagonalUpRightMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalUpRightMotionGestureEvent;

   procedure onDiagonalUpLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.onMotionGestureEvent (ev);
   end onDiagonalUpLeftMotionGestureEvent;

   procedure onPressedMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
   begin
        This.touchGestureCollection.add (ev.getMotionGesture);
   end onPressedMotionGestureEvent;

   procedure released (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
      stringBuffer : StringMaker_Access;
   begin
        begin
            This.touchGestureCollection.add (ev.getMotionGesture);
            This.signed.onMotionGestureCompleted (This.touchGestureCollection);
            This.touchGestureCollection.clear;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append (StringUtil_Package.getInstance.toString (ev.getMotionGesture));
            This.logUtil.put (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("release"), e);
                end;
        end;
   end released;

   procedure onScrolledMotionGestureEvent (This : in out GameMotionGestureListener; motionGestureEvent : MotionGestureEvent_Access) is
   begin
        null;
   end onScrolledMotionGestureEvent;

   procedure onMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access) is
      motionGestureInput : MotionGestureInput_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            motionGestureInput := ev.getMotionGesture;
            if (motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.PRESSED) then
                This.onPressedMotionGestureEvent (ev);
            elsif (motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.RELEASED) then
                This.released (ev);
            else
                This.motionGestureCollection.add (motionGestureInput);
                This.signed.onMotionGestureCompleted (This.motionGestureCollection);
                This.motionGestureCollection.clear;
                This.touchGestureCollection.clear;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append (StringUtil_Package.getInstance.toString (ev.getMotionGesture));
            This.logUtil.put (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("onMotionGestureEvent"), e);
                end;
        end;
   end onMotionGestureEvent;

end org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;



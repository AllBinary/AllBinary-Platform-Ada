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


with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package; use org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;

package body org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package is

   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   subtype CompleteMotionGestureListenerInterface_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
   subtype CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References.CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.CompleteMotionGestureListenerInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out GameMotionGestureListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.motionGestureCollection := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.touchGestureCollection := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameMotionGestureListener'Class; signed_Param : access CompleteMotionGestureListenerInterface_Package.CompleteMotionGestureListenerInterface'Class) is
      signed : constant CompleteMotionGestureListenerInterface_Access := CompleteMotionGestureListenerInterface_Access (signed_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameMotionGestureListener_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.signed := signed;
   end Initialize;

   function Create (signed_Param : access CompleteMotionGestureListenerInterface_Package.CompleteMotionGestureListenerInterface'Class) return GameMotionGestureListener_Access is
      This : constant GameMotionGestureListener_Access := new GameMotionGestureListener;
   begin
      GameMotionGestureListener_Package.Initialize (This.all, signed_Param);
      return This;
   end Create;

   procedure onEvent (This : in out GameMotionGestureListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, GameMotionGestureListener_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onUpMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onUpMotionGestureEvent;

   procedure onDownMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDownMotionGestureEvent;

   procedure onLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onLeftMotionGestureEvent;

   procedure onRightMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onRightMotionGestureEvent;

   procedure onDiagonalDownRightMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalDownRightMotionGestureEvent;

   procedure onDiagonalDownLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalDownLeftMotionGestureEvent;

   procedure onDiagonalUpRightMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalUpRightMotionGestureEvent;

   procedure onDiagonalUpLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        GameMotionGestureListener'Class (This).onMotionGestureEvent (ev);
   end onDiagonalUpLeftMotionGestureEvent;

   procedure onPressedMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
   begin
        This.touchGestureCollection.add (ev.getMotionGesture);
   end onPressedMotionGestureEvent;

   procedure released (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
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
            This.logUtil.put (stringBuffer.toString, GameMotionGestureListener_Access'(This'Unchecked_Access), To_Unbounded_String ("release"), e);
                end;
        end;
   end released;

   procedure onScrolledMotionGestureEvent (This : in out GameMotionGestureListener; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        null;
   end onScrolledMotionGestureEvent;

   procedure onMotionGestureEvent (This : in out GameMotionGestureListener; ev_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      ev : constant MotionGestureEvent_Access := MotionGestureEvent_Access (ev_Param);
      motionGestureInput : MotionGestureInput_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            motionGestureInput := ev.getMotionGesture;
            if org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=" (motionGestureInput, TouchMotionGestureFactory_Package.getInstance.PRESSED) then
                GameMotionGestureListener'Class (This).onPressedMotionGestureEvent (ev);
            elsif org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=" (motionGestureInput, TouchMotionGestureFactory_Package.getInstance.RELEASED) then
                GameMotionGestureListener'Class (This).released (ev);
            else
                This.motionGestureCollection.add (Java_Object_Access (motionGestureInput));
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
            This.logUtil.put (stringBuffer.toString, GameMotionGestureListener_Access'(This'Unchecked_Access), To_Unbounded_String ("onMotionGestureEvent"), e);
                end;
        end;
   end onMotionGestureEvent;

end org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;



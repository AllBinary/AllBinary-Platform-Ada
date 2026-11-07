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


with org.allbinary.input.motion.AllMotionRecognizer_Package; use org.allbinary.input.motion.AllMotionRecognizer_Package;
with org.allbinary.input.motion.AllMotionRecognizer_Package_References;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package; use org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.TouchJ2ME_Package is

   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package GameMotionGestureListener_Package renames Standard.org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
   package MotionGestureReceiveInterfaceFactory_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype AllMotionRecognizer_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access;
   function "=" (Left, Right : AllMotionRecognizer_Access) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
   subtype AllMotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllMotionRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.AllMotionRecognizer_Package_References."=";
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
   procedure Initialize_Fields (This : in out TouchJ2ME'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.DEVICE_ID := 0;
      This.motionRecognizer := AllMotionRecognizer_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchJ2ME'Class) is
      motionGesturesHandler : BasicMotionGesturesHandler_Access;
   begin
      Initialize_Fields (This);
        motionGesturesHandler := This.motionRecognizer.getMotionGestureRecognizer.getMotionGesturesHandler;
        motionGesturesHandler.addListenerInterface (GameMotionGestureListener_Package.Create (MotionGestureReceiveInterfaceFactory_Package.getInstance));
   end Initialize;

   function Create return TouchJ2ME_Access is
      This : constant TouchJ2ME_Access := new TouchJ2ME;
   begin
      TouchJ2ME_Package.Initialize (This.all);
      return This;
   end Create;

   procedure pointerDragged (This : in out TouchJ2ME; x : Integer; y : Integer) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.motionRecognizer.processDraggedMotionEvent (x, y, This.DEVICE_ID, 0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, TouchJ2ME_Access'(This'Unchecked_Access), To_Unbounded_String ("pointerDragged"), e);
                end;
        end;
   end pointerDragged;

   procedure pointerPressed (This : in out TouchJ2ME; x : Integer; y : Integer) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.motionRecognizer.processStartMotionEvent (x, y, This.DEVICE_ID, 0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, TouchJ2ME_Access'(This'Unchecked_Access), To_Unbounded_String ("pointerPressed"), e);
                end;
        end;
   end pointerPressed;

   procedure pointerReleased (This : in out TouchJ2ME; x : Integer; y : Integer) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.motionRecognizer.processEndMotionEvent (x, y, This.DEVICE_ID, 0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, TouchJ2ME_Access'(This'Unchecked_Access), To_Unbounded_String ("pointerReleased"), e);
                end;
        end;
   end pointerReleased;

end org.allbinary.input.TouchJ2ME_Package;



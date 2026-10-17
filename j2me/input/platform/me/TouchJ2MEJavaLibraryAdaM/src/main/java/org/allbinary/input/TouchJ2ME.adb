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


package body org.allbinary.input.TouchJ2ME_Package is

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



--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


package body org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package is

   procedure Initialize_Fields (This : in out TrackballGameInputMotionEventProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.listener := SingleKeyPressGameKeyFromMotionGestureEventListener_Package.Create;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TrackballGameInputMotionEventProcessor_Access is
   begin
        return TrackballGameInputMotionEventProcessor_Package.PROCESSOR;
   end getInstance;

   procedure Initialize (This : in out TrackballGameInputMotionEventProcessor'Class) is
   begin
      MotionEventProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TrackballGameInputMotionEventProcessor_Access is
      This : constant TrackballGameInputMotionEventProcessor_Access := new TrackballGameInputMotionEventProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out TrackballGameInputMotionEventProcessor; motionEvent : MotionEvent_Access) is
      x : Float;
      y : Float;
   begin
        begin
            x := motionEvent.getX;
            y := motionEvent.getY;
            if (x) < (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (LeftTrackballInputToGameKeyEventAction_Package.getInstance);
            elsif (x) > (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (RightTrackballInputToGameKeyEventAction_Package.getInstance);
            end if;
            if (y) < (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (UpTrackballInputToGameKeyEventAction_Package.getInstance);
            elsif (y) > (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (DownTrackballInputToGameKeyEventAction_Package.getInstance);
            end if;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
        end;
   end process;

   procedure getInstance is
      Java_Result : constant TrackballGameInputMotionEventProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   PROCESSOR := TrackballGameInputMotionEventProcessor_Package.Create;

end org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package;



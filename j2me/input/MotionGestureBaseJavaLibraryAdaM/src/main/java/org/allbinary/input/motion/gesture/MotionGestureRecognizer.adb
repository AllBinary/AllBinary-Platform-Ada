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


package body org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package is

   procedure Initialize_Fields (This : in out MotionGestureRecognizer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.j2seMath := J2SEMath_Package.getInstance;
      This.origin := PointFactory_Package.getInstance.ZERO_ZERO;
      This.previous := This.origin;
      This.intermediate := This.origin;
      This.line := Line_Package.Create (This.origin, This.origin);
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureRecognizer'Class; id : Integer) is
      motionGesturesHandler : BasicEventHandler_Access;
      movedMotionGesturesHandler : BasicEventHandler_Access;
      scrolledMotionGesturesHandler : BasicEventHandler_Access;
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        This.motionEventCircularPool := MotionEventCircularPool_Package.createPool (id);
        motionGesturesHandler := BasicEventHandler_Package.Create;
        movedMotionGesturesHandler := motionGesturesHandler;
        scrolledMotionGesturesHandler := motionGesturesHandler;
        begin
            motionGesturesHandler := BasicMotionGesturesHandler_Package.getInstance;
            movedMotionGesturesHandler := MovedMotionGesturesHandler_Package.getInstance;
            scrolledMotionGesturesHandler := ScrolledMotionGesturesHandler_Package.getInstance;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, MotionGestureRecognizer_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
        This.motionGesturesHandler := BasicMotionGesturesHandler_Access (motionGesturesHandler);
        This.movedMotionGesturesHandler := movedMotionGesturesHandler;
        This.scrolledMotionGesturesHandler := scrolledMotionGesturesHandler;
   end Initialize;

   function Create (id : Integer) return MotionGestureRecognizer_Access is
      This : constant MotionGestureRecognizer_Access := new MotionGestureRecognizer;
   begin
      MotionGestureRecognizer_Package.Initialize (This.all, id);
      return This;
   end Create;

   --  throws Exception
   function processPressedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean is
      current : constant GPoint_Access := GPoint_Access (current_Param);
      event : MotionGestureEvent_Access;
   begin
        This.intermediate := This.origin;
        This.previous := This.origin;
        event := This.motionEventCircularPool.getInstance (TouchMotionGestureFactory_Package.getInstance.PRESSED);
        event.setPreviousPoint (This.previous);
        event.setCurrentPoint (current);
        This.motionGesturesHandler.fireEvent (event);
        return True;
   end processPressedMotionEvent;

   --  throws Exception
   function processReleasedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean is
      current : constant GPoint_Access := GPoint_Access (current_Param);
      event : MotionGestureEvent_Access;
   begin
        event := This.motionEventCircularPool.getInstance (TouchMotionGestureFactory_Package.getInstance.RELEASED);
        event.setPreviousPoint (This.previous);
        event.setCurrentPoint (current);
        This.motionGesturesHandler.fireEvent (event);
        return True;
   end processReleasedMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; buttonMask : Integer) is
      current : constant GPoint_Access := GPoint_Access (current_Param);
      minimumMotionGesture : Integer;
      gradient : Long_Float;
      absGradient : Long_Float;
      conf : MotionGestureConfiguration_Access;
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      newMotionGesture : MotionGestureInput_Access;
      diagonalToleranceHigher : Long_Float;
      diagonalToleranceLower : Long_Float;
      event : MotionGestureEvent_Access;
   begin
        if ((This.previous) = (This.origin)) or else ((This.intermediate) = (This.origin)) then
            This.previous := current;
            This.intermediate := current;
            return;
        end if;
        This.line.setP1 (This.previous);
        This.line.setP2 (current);
        minimumMotionGesture := MotionGestureConfigurationFactory_Package.getInstance.getMinimumMotionGesture;
        if ((This.j2seMath.abs_Id (Float (This.line.getDeltaX))) < (minimumMotionGesture)) and then ((This.j2seMath.abs_Id (Float (This.line.getDeltaY))) < (minimumMotionGesture)) then
            This.intermediate := current;
            return;
        end if;
        gradient := This.line.getGradient;
        absGradient := Long_Float (This.j2seMath.abs_Id (Float (gradient)));
        conf := MotionGestureConfigurationFactory_Package.getInstance;
        touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
        newMotionGesture := touchMotionGestureFactory.NO_MOTION;
        diagonalToleranceHigher := 12.0;
        diagonalToleranceLower := 12.0;
        if conf.isDiagonalMotionGestureAllowed then
            diagonalToleranceHigher := Long_Float (((90) - (conf.getDiagonalTolerance)));
            diagonalToleranceLower := Long_Float (conf.getDiagonalTolerance);
        end if;
        if (absGradient) > (Ada.Numerics.Long_Elementary_Functions.Tan (Ada.Numerics.Long_Elementary_Functions.ToRadians (diagonalToleranceHigher))) then
            if (This.line.getDeltaY) > (0) then
                newMotionGesture := touchMotionGestureFactory.UP;
            else
                newMotionGesture := touchMotionGestureFactory.DOWN;
            end if;
        else
            if (absGradient) < (Ada.Numerics.Long_Elementary_Functions.Tan (Ada.Numerics.Long_Elementary_Functions.ToRadians (diagonalToleranceLower))) then
                if (This.line.getDeltaX) > (0) then
                    newMotionGesture := touchMotionGestureFactory.LEFT;
                else
                    newMotionGesture := touchMotionGestureFactory.RIGHT;
                end if;
            else
                if (gradient) > (0.0) then
                    if (This.line.getDeltaX) > (0) then
                        newMotionGesture := touchMotionGestureFactory.DIAGONAL_UP_LEFT;
                    else
                        newMotionGesture := touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT;
                    end if;
                else
                    if (This.line.getDeltaX) > (0) then
                        newMotionGesture := touchMotionGestureFactory.DIAGONAL_DOWN_LEFT;
                    else
                        newMotionGesture := touchMotionGestureFactory.DIAGONAL_UP_RIGHT;
                    end if;
                end if;
            end if;
        end if;
        This.previous := current;
        This.intermediate := current;
        event := This.motionEventCircularPool.getInstance (newMotionGesture);
        event.setPreviousPoint (This.previous);
        event.setCurrentPoint (current);
        This.motionGesturesHandler.fireEvent (event);
        return;
   end processDraggedMotionEvent;

   --  throws Exception
   function processMovedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean is
      current : constant GPoint_Access := GPoint_Access (current_Param);
      event : MotionGestureEvent_Access;
   begin
        event := This.motionEventCircularPool.getInstance (TouchMotionGestureFactory_Package.getInstance.NO_MOTION);
        event.setPreviousPoint (This.previous);
        event.setCurrentPoint (current);
        This.movedMotionGesturesHandler.fireEvent (event);
        return True;
   end processMovedMotionEvent;

   --  throws Exception
   function processScrolledMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean is
      current : constant GPoint_Access := GPoint_Access (current_Param);
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      newMotionGesture : MotionGestureInput_Access;
      event : MotionGestureEvent_Access;
   begin
        touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
        newMotionGesture := touchMotionGestureFactory.NO_MOTION;
        if (button) > (0) then
            newMotionGesture := touchMotionGestureFactory.SCROLL_UP;
        elsif (button) < (0) then
            newMotionGesture := touchMotionGestureFactory.SCROLL_DOWN;
        end if;
        event := This.motionEventCircularPool.getInstance (newMotionGesture);
        event.setPreviousPoint (This.previous);
        event.setCurrentPoint (current);
        This.scrolledMotionGesturesHandler.fireEvent (event);
        return True;
   end processScrolledMotionEvent;

   function getMotionGesturesHandler (This : in out MotionGestureRecognizer) return BasicMotionGesturesHandler_Access is
   begin
        return This.motionGesturesHandler;
   end getMotionGesturesHandler;

   procedure processPressedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) is
      Java_Result : constant Boolean := MotionGestureRecognizer'Class (This).processPressedMotionEvent (current_Param, deviceId, button);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processPressedMotionEvent;

   procedure processReleasedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) is
      Java_Result : constant Boolean := MotionGestureRecognizer'Class (This).processReleasedMotionEvent (current_Param, deviceId, button);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processReleasedMotionEvent;

   procedure processMovedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) is
      Java_Result : constant Boolean := MotionGestureRecognizer'Class (This).processMovedMotionEvent (current_Param, deviceId, button);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processMovedMotionEvent;

   procedure processScrolledMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) is
      Java_Result : constant Boolean := MotionGestureRecognizer'Class (This).processScrolledMotionEvent (current_Param, deviceId, button);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processScrolledMotionEvent;

end org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;



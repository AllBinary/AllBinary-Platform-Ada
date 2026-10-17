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


package body org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package is

   procedure Initialize_Fields (This : in out MotionGestureEvent'Class) is
   begin
      null;
      This.motionGesture := TouchMotionGestureFactory_Package.getInstance.NO_MOTION;
      
      This.previousPoint := PointFactory_Package.getInstance.ZERO_ZERO;
      This.currentPoint := PointFactory_Package.getInstance.ZERO_ZERO;
      This.commonLabels := CommonLabels_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out MotionGestureEvent'Class; source_Param : access Java_Object'Class; id : Integer; motionGesture_Param : access MotionGestureInput'Class) is
      source : Java_Object_Access := Java_Object_Access (source_Param);
      motionGesture : MotionGestureInput_Access := MotionGestureInput_Access (motionGesture_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, source);
        Initialize_Fields (This);
        This.id := id;
        This.setMotionGesture (motionGesture);
   end Initialize;

   function Create (source_Param : access Java_Object'Class; id : Integer; motionGesture_Param : access MotionGestureInput'Class) return MotionGestureEvent_Access is
      This : constant MotionGestureEvent_Access := new MotionGestureEvent;
   begin
      MotionGestureEvent_Package.Initialize (This.all, source_Param, id, motionGesture_Param);
      return This;
   end Create;

   function getMotionGesture (This : in out MotionGestureEvent) return MotionGestureInput_Access is
   begin
        return This.motionGesture;
   end getMotionGesture;

   procedure setMotionGesture (This : in out MotionGestureEvent; motionGesture_Param : access MotionGestureInput'Class) is
      motionGesture : MotionGestureInput_Access := MotionGestureInput_Access (motionGesture_Param);
   begin
        This.motionGesture := motionGesture;
   end setMotionGesture;

   function getPreviousPoint (This : in out MotionGestureEvent) return GPoint_Access is
   begin
        return This.previousPoint;
   end getPreviousPoint;

   procedure setPreviousPoint (This : in out MotionGestureEvent; previousPoint_Param : access GPoint'Class) is
      previousPoint : GPoint_Access := GPoint_Access (previousPoint_Param);
   begin
        This.previousPoint := previousPoint;
   end setPreviousPoint;

   function getCurrentPoint (This : in out MotionGestureEvent) return GPoint_Access is
   begin
        return This.currentPoint;
   end getCurrentPoint;

   procedure setCurrentPoint (This : in out MotionGestureEvent; currentPoint_Param : access GPoint'Class) is
      currentPoint : GPoint_Access := GPoint_Access (currentPoint_Param);
   begin
        This.currentPoint := currentPoint;
   end setCurrentPoint;

   function toString (This : in out MotionGestureEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      stringUtil : StringUtil_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        stringBuffer.append (stringUtil.toString (This.motionGesture));
        stringBuffer.append (This.commonLabels.CURRENT);
        stringBuffer.append (stringUtil.toString (This.currentPoint));
        stringBuffer.append (MotionGestureEvent_Package.PREVIOUS);
        stringBuffer.append (stringUtil.toString (This.previousPoint));
        stringBuffer.append (MotionGestureEvent_Package.HASHCODE);
        stringBuffer.appendint (Integer (TsUtil_Package.getInstance.hashCode_Case (MotionGestureEvent_Access'(This'Unchecked_Access))));
        return stringBuffer.toString;
   end toString;

   function getId (This : in out MotionGestureEvent) return Integer is
   begin
        return This.id;
   end getId;

begin
   null;
   PREVIOUS := To_Unbounded_String (" Previous: ");
   HASHCODE := To_Unbounded_String (" hashcode: ");

end org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;



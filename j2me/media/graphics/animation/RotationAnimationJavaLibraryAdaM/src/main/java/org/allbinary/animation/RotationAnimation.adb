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


package body org.allbinary.animation.RotationAnimation_Package is

   procedure Initialize_Fields (This : in out RotationAnimation'Class) is
   begin
      null;
      This.frameUtil := FrameUtil_Package.getInstance;
      This.directionUtil := DirectionUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RotationAnimation'Class; angleInfo_Param : access AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      angleInfo : AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      circularIndexUtil : CircularIndexUtil_Access := CircularIndexUtil_Access (circularIndexUtil_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.angleInfo := angleInfo;
        This.circularIndexUtil := circularIndexUtil;
   end Initialize;

   function Create (angleInfo_Param : access AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior'Class) return RotationAnimation_Access is
      This : constant RotationAnimation_Access := new RotationAnimation;
   begin
      RotationAnimation_Package.Initialize (This.all, angleInfo_Param, circularIndexUtil_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure nextRotationX (This : in out RotationAnimation) is
   begin
        null;
   end nextRotationX;

   procedure previousRotationX (This : in out RotationAnimation) is
   begin
        null;
   end previousRotationX;

   procedure nextRotation (This : in out RotationAnimation) is
   begin
        This.angleInfo.adjustAngle (This.circularIndexUtil.next);
   end nextRotation;

   procedure previousRotation (This : in out RotationAnimation) is
   begin
        This.angleInfo.adjustAngle (This.circularIndexUtil.previous);
   end previousRotation;

   procedure nextRotationZ (This : in out RotationAnimation) is
   begin
        null;
   end nextRotationZ;

   procedure previousRotationZ (This : in out RotationAnimation) is
   begin
        null;
   end previousRotationZ;

   procedure setFrame (This : in out RotationAnimation; index : Integer) is
      newFrame : Integer;
   begin
        This.circularIndexUtil.setIndex (index);
        newFrame := This.circularIndexUtil.getIndex;
        This.angleInfo.adjustAngle (newFrame);
   end setFrame;

   procedure setFrameByDirection (This : in out RotationAnimation; direction_Param : access Direction'Class) is
      direction : Direction_Access := Direction_Access (direction_Param);
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        This.adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out RotationAnimation; angle_Param : access Angle'Class) is
      angle : Angle_Access := Angle_Access (angle_Param);
   begin
        This.adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure adjustFrameToAngle (This : in out RotationAnimation; angle_Param : access Angle'Class) is
      angle : Angle_Access := Angle_Access (angle_Param);
   begin
        This.adjustFrame (angle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out RotationAnimation; angle : Short_Integer) is
   begin
        This.setFrame (This.frameUtil.getFrameForAngle (angle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

   function getFrame (This : in out RotationAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   function getSize (This : in out RotationAnimation) return Integer is
   begin
        return This.circularIndexUtil.getSize;
   end getSize;

   function getAngleInfoP (This : in out RotationAnimation) return AngleInfo_Access is
   begin
        return This.angleInfo;
   end getAngleInfoP;

   function toString (This : in out RotationAnimation) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (IndexedAnimation (This).toString).append (To_Unbounded_String ("circularIndexUtil: ")).append (This.circularIndexUtil.toString).append (To_Unbounded_String ("angleInfo: ")).append (This.angleInfo.toString).toString;
   end toString;

end org.allbinary.animation.RotationAnimation_Package;



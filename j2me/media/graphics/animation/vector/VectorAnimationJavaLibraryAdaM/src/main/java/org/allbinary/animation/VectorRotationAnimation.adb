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


package body org.allbinary.animation.VectorRotationAnimation_Package is

   procedure Initialize_Fields (This : in out VectorRotationAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out VectorRotationAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        VectorBaseRotationAnimation_Package.Initialize (This, AngleInfo_Package.getInstance (Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (currentPoints'Length)))), currentPoints, basicColor, animationBehavior);
        This.angleInfo.adjustAngle (This.getFrame);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehavior_Param : access AnimationBehavior'Class) return VectorRotationAnimation_Access is
      This : constant VectorRotationAnimation_Access := new VectorRotationAnimation;
   begin
      VectorRotationAnimation_Package.Initialize (This.all, currentPoints, basicColor_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure setFrameByDirection (This : in out VectorRotationAnimation; direction_Param : access Direction'Class) is
      direction : Direction_Access := Direction_Access (direction_Param);
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        This.adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out VectorRotationAnimation; angle_Param : access Angle'Class) is
      angle : Angle_Access := Angle_Access (angle_Param);
   begin
        This.adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure setFrame (This : in out VectorRotationAnimation; index : Integer) is
   begin
        VectorBaseRotationAnimation (This).setFrame (index);
        This.angleInfo.adjustAngle (This.getFrame);
   end setFrame;

   procedure adjustFrame (This : in out VectorRotationAnimation; newAngle : Short_Integer) is
   begin
        This.setFrame (This.frameUtil.getFrameForAngle (newAngle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

   procedure adjustFrameToAngle (This : in out VectorRotationAnimation; newAngle_Param : access Angle'Class) is
      newAngle : Angle_Access := Angle_Access (newAngle_Param);
   begin
        This.adjustFrame (newAngle.getValue);
   end adjustFrameToAngle;

end org.allbinary.animation.VectorRotationAnimation_Package;



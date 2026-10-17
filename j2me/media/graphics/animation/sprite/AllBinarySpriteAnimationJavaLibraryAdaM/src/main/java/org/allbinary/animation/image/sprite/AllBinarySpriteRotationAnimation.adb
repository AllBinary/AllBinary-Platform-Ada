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


package body org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinarySpriteRotationAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinarySpriteRotationAnimation'Class; sprite_Param : access Sprite'Class; image_Param : access Image'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      sprite : Sprite_Access := Sprite_Access (sprite_Param);
      image : Image_Access := Image_Access (image_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        HackRotationSpriteIndexedAnimation_Package.Initialize (This, sprite, image, AngleInfo_Package.getInstance (Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (sprite.getRawFrameCount)))), animationBehavior);
        This.angleInfo.adjustAngle (This.sprite.getFrame);
   end Initialize;

   function Create (sprite_Param : access Sprite'Class; image_Param : access Image'Class; animationBehavior_Param : access AnimationBehavior'Class) return AllBinarySpriteRotationAnimation_Access is
      This : constant AllBinarySpriteRotationAnimation_Access := new AllBinarySpriteRotationAnimation;
   begin
      AllBinarySpriteRotationAnimation_Package.Initialize (This.all, sprite_Param, image_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure nextRotation (This : in out AllBinarySpriteRotationAnimation) is
   begin
        This.sprite.nextFrame;
        This.angleInfo.adjustAngle (This.sprite.getFrame);
   end nextRotation;

   procedure previousRotation (This : in out AllBinarySpriteRotationAnimation) is
   begin
        This.sprite.prevFrame;
        This.angleInfo.adjustAngle (This.sprite.getFrame);
   end previousRotation;

   procedure setFrameByDirection (This : in out AllBinarySpriteRotationAnimation; direction_Param : access Direction'Class) is
      direction : Direction_Access := Direction_Access (direction_Param);
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        This.adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle_Param : access Angle'Class) is
      angle : Angle_Access := Angle_Access (angle_Param);
   begin
        This.adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure setFrame (This : in out AllBinarySpriteRotationAnimation; index : Integer) is
   begin
        This.sprite.setFrame (index);
        This.angleInfo.adjustAngle (This.getFrame);
   end setFrame;

   procedure adjustFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle_Param : access Angle'Class) is
      angle : Angle_Access := Angle_Access (angle_Param);
   begin
        This.adjustFrame (angle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out AllBinarySpriteRotationAnimation; angle : Short_Integer) is
   begin
        This.setFrame (This.frameUtil.getFrameForAngle (angle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;



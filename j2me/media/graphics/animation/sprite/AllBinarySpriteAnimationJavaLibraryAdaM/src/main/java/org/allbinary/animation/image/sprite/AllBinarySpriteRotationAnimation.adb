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


   procedure Initialize (This : in out AllBinarySpriteRotationAnimation'Class; sprite : Sprite_Access; image : Image_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        HackRotationSpriteIndexedAnimation_Package.Initialize (This, sprite, image, AngleInfo_Package.getInstance (Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (sprite.getRawFrameCount)))), animationBehavior);
        This.angleInfo.adjustAngle (This.sprite.getFrame);
   end Initialize;

   function Create (sprite : Sprite_Access; image : Image_Access; animationBehavior : AnimationBehavior_Access) return AllBinarySpriteRotationAnimation_Access is
      This : constant AllBinarySpriteRotationAnimation_Access := new AllBinarySpriteRotationAnimation;
   begin
      AllBinarySpriteRotationAnimation_Package.Initialize (This.all, sprite, image, animationBehavior);
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

   procedure setFrameByDirection (This : in out AllBinarySpriteRotationAnimation; direction : Direction_Access) is
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        This.adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle : Angle_Access) is
   begin
        This.adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure setFrame (This : in out AllBinarySpriteRotationAnimation; index : Integer) is
   begin
        This.sprite.setFrame (index);
        This.angleInfo.adjustAngle (This.getFrame);
   end setFrame;

   procedure adjustFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle : Angle_Access) is
   begin
        This.adjustFrame (angle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out AllBinarySpriteRotationAnimation; angle : Short_Integer) is
   begin
        This.setFrame (This.frameUtil.getFrameForAngle (angle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;



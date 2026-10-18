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


   procedure Initialize (This : in out AllBinarySpriteRotationAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      sprite : constant Sprite_Access := Sprite_Access (sprite_Param);
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        HackRotationSpriteIndexedAnimation_Package.Initialize (This, sprite, image, AngleInfo_Package.getInstance (Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (sprite.getRawFrameCount)))), animationBehavior);
        This.angleInfo.adjustAngle (This.sprite.getFrame);
   end Initialize;

   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinarySpriteRotationAnimation_Access is
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

   procedure setFrameByDirection (This : in out AllBinarySpriteRotationAnimation; direction_Param : access Direction_Package.Direction'Class) is
      direction : constant Direction_Access := Direction_Access (direction_Param);
      angle : Angle_Access;
   begin
        angle := This.directionUtil.getFrameAngle (direction);
        AllBinarySpriteRotationAnimation'Class (This).adjustFrameToAngle (angle);
   end setFrameByDirection;

   procedure setFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        AllBinarySpriteRotationAnimation'Class (This).adjustFrameToAngle (angle);
   end setFrameToAngle;

   procedure setFrame (This : in out AllBinarySpriteRotationAnimation; index : Integer) is
   begin
        This.sprite.setFrame (index);
        This.angleInfo.adjustAngle (AllBinarySpriteRotationAnimation'Class (This).getFrame);
   end setFrame;

   procedure adjustFrameToAngle (This : in out AllBinarySpriteRotationAnimation; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        AllBinarySpriteRotationAnimation'Class (This).adjustFrame (angle.getValue);
   end adjustFrameToAngle;

   procedure adjustFrame (This : in out AllBinarySpriteRotationAnimation; angle : Short_Integer) is
   begin
        AllBinarySpriteRotationAnimation'Class (This).setFrame (This.frameUtil.getFrameForAngle (angle, Integer (This.angleInfo.getAngleIncrementInfo.getAngleIncrement)));
   end adjustFrame;

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimation_Package;



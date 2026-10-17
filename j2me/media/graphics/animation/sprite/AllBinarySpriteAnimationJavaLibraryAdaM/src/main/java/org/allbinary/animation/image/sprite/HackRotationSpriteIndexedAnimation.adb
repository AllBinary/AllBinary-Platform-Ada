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


package body org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out HackRotationSpriteIndexedAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HackRotationSpriteIndexedAnimation'Class; sprite_Param : access Sprite'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      sprite : Sprite_Access := Sprite_Access (sprite_Param);
      image : Image_Access := Image_Access (image_Param);
      angleInfo : AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, CircularIndexUtil_Package.createInstance ((360) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
        Initialize_Fields (This);
        This.sprite := sprite;
        This.image := image;
   end Initialize;

   function Create (sprite_Param : access Sprite'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; animationBehavior_Param : access AnimationBehavior'Class) return HackRotationSpriteIndexedAnimation_Access is
      This : constant HackRotationSpriteIndexedAnimation_Access := new HackRotationSpriteIndexedAnimation;
   begin
      HackRotationSpriteIndexedAnimation_Package.Initialize (This.all, sprite_Param, image_Param, angleInfo_Param, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out HackRotationSpriteIndexedAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   procedure paintFrame (This : in out HackRotationSpriteIndexedAnimation; g_Param : access Graphics'Class; frame : Integer; x : Integer; y : Integer) is
      g : Graphics_Access := Graphics_Access (g_Param);
   begin
        This.setFrame (frame);
        This.paintXY (g, x, y);
   end paintFrame;

   procedure paintXY (This : in out HackRotationSpriteIndexedAnimation; g_Param : access Graphics'Class; x : Integer; y : Integer) is
      g : Graphics_Access := Graphics_Access (g_Param);
   begin
        This.sprite.setPosition (x, y);
        This.paint (g);
   end paintXY;

   procedure paint (This : in out HackRotationSpriteIndexedAnimation; g_Param : access Graphics'Class) is
      g : Graphics_Access := Graphics_Access (g_Param);
   begin
        This.sprite.paint (g);
   end paint;

   procedure nextRotation (This : in out HackRotationSpriteIndexedAnimation) is
   begin
        This.sprite.nextFrame;
   end nextRotation;

   procedure previousRotation (This : in out HackRotationSpriteIndexedAnimation) is
   begin
        This.sprite.prevFrame;
   end previousRotation;

   function getSize (This : in out HackRotationSpriteIndexedAnimation) return Integer is
   begin
        return This.sprite.getRawFrameCount;
   end getSize;

   procedure setFrame (This : in out HackRotationSpriteIndexedAnimation; frame : Integer) is
   begin
        This.sprite.setFrame (frame);
   end setFrame;

   function getFrame (This : in out HackRotationSpriteIndexedAnimation) return Integer is
   begin
        return This.sprite.getFrame;
   end getFrame;

   procedure setSequence (This : in out HackRotationSpriteIndexedAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out HackRotationSpriteIndexedAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

end org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;



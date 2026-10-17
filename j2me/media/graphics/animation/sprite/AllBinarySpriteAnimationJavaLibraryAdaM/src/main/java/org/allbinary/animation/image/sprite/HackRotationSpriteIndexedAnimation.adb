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


   procedure Initialize (This : in out HackRotationSpriteIndexedAnimation'Class; sprite : Sprite_Access; image : Image_Access; angleInfo : AngleInfo_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, CircularIndexUtil_Package.createInstance ((360) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
        Initialize_Fields (This);
        This.sprite := sprite;
        This.image := image;
   end Initialize;

   function Create (sprite : Sprite_Access; image : Image_Access; angleInfo : AngleInfo_Access; animationBehavior : AnimationBehavior_Access) return HackRotationSpriteIndexedAnimation_Access is
      This : constant HackRotationSpriteIndexedAnimation_Access := new HackRotationSpriteIndexedAnimation;
   begin
      Initialize (This.all, sprite, image, angleInfo, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out HackRotationSpriteIndexedAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   procedure paintFrame (This : in out HackRotationSpriteIndexedAnimation; g : Graphics_Access; frame : Integer; x : Integer; y : Integer) is
   begin
        This.setFrame (frame);
        This.paintXY (g, x, y);
   end paintFrame;

   procedure paintXY (This : in out HackRotationSpriteIndexedAnimation; g : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.sprite.setPosition (x, y);
        This.paint (g);
   end paintXY;

   procedure paint (This : in out HackRotationSpriteIndexedAnimation; g : Graphics_Access) is
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

   procedure getAnimationSize (This : in out HackRotationSpriteIndexedAnimation) is
      Java_Result : constant Integer := HackRotationSpriteIndexedAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getSize (This : in out HackRotationSpriteIndexedAnimation) is
      Java_Result : constant Integer := HackRotationSpriteIndexedAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getFrame (This : in out HackRotationSpriteIndexedAnimation) is
      Java_Result : constant Integer := HackRotationSpriteIndexedAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getSequence (This : in out HackRotationSpriteIndexedAnimation) is
      Java_Result : constant Integer_Array_Access := HackRotationSpriteIndexedAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

end org.allbinary.animation.image.sprite.HackRotationSpriteIndexedAnimation_Package;



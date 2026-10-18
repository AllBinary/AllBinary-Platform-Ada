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



package body org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinaryAdjustedSpriteRotationAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryAdjustedSpriteRotationAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      sprite : constant Sprite_Access := Sprite_Access (sprite_Param);
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        AllBinarySpriteRotationAnimation_Package.Initialize (This, sprite, image, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryAdjustedSpriteRotationAnimation_Access is
      This : constant AllBinaryAdjustedSpriteRotationAnimation_Access := new AllBinaryAdjustedSpriteRotationAnimation;
   begin
      AllBinaryAdjustedSpriteRotationAnimation_Package.Initialize (This.all, sprite_Param, image_Param, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   procedure paintXY (This : in out AllBinaryAdjustedSpriteRotationAnimation; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
   begin
        This.sprite.setPosition ((x) + (This.dx), (y) + (This.dy));
        AllBinaryAdjustedSpriteRotationAnimation'Class (This).paint (g);
   end paintXY;

end org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package;



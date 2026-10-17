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


   procedure Initialize (This : in out AllBinaryAdjustedSpriteRotationAnimation'Class; sprite : Sprite_Access; image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        AllBinarySpriteRotationAnimation_Package.Initialize (This, sprite, image, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (sprite : Sprite_Access; image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryAdjustedSpriteRotationAnimation_Access is
      This : constant AllBinaryAdjustedSpriteRotationAnimation_Access := new AllBinaryAdjustedSpriteRotationAnimation;
   begin
      Initialize (This.all, sprite, image, dx, dy, animationBehavior);
      return This;
   end Create;

   procedure paintXY (This : in out AllBinaryAdjustedSpriteRotationAnimation; g : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.sprite.setPosition ((x) + (This.dx), (y) + (This.dy));
        This.paint (g);
   end paintXY;

end org.allbinary.animation.image.sprite.AllBinaryAdjustedSpriteRotationAnimation_Package;



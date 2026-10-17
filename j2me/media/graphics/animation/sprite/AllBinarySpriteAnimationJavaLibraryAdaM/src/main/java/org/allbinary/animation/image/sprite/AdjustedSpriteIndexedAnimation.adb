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


package body org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedSpriteIndexedAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedSpriteIndexedAnimation'Class; sprite : Sprite_Access; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        SpriteIndexedAnimation_Package.Initialize (This, sprite, image, basicColorArray, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (sprite : Sprite_Access; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedSpriteIndexedAnimation_Access is
      This : constant AdjustedSpriteIndexedAnimation_Access := new AdjustedSpriteIndexedAnimation;
   begin
      AdjustedSpriteIndexedAnimation_Package.Initialize (This.all, sprite, image, basicColorArray, dx, dy, animationBehavior);
      return This;
   end Create;

   procedure paintFrame (This : in out AdjustedSpriteIndexedAnimation; graphics : Graphics_Access; frame : Integer; x : Integer; y : Integer) is
   begin
        This.setFrame (frame);
        This.sprite.setPosition ((x) + (This.dx), (y) + (This.dy));
        SpriteIndexedAnimation (This).paint (graphics);
   end paintFrame;

   procedure paintXY (This : in out AdjustedSpriteIndexedAnimation; g : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.sprite.setPosition ((x) + (This.dx), (y) + (This.dy));
        SpriteIndexedAnimation (This).paint (g);
   end paintXY;

   procedure paint (This : in out AdjustedSpriteIndexedAnimation; g : Graphics_Access) is
   begin
        This.sprite.setPosition (This.dx, This.dy);
        SpriteIndexedAnimation (This).paint (g);
   end paint;

end org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package;



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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with javax.microedition.lcdui.game.Sprite_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;

package body org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Sprite_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access;
   function "=" (Left, Right : Sprite_Access) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array;
   function "=" (Left, Right : Sprite_Access_Array) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access;
   function "=" (Left, Right : Sprite_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array;
   function "=" (Left, Right : Sprite_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype Sprite_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Sprite_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.game.Sprite_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out AdjustedSpriteIndexedAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedSpriteIndexedAnimation'Class; sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      sprite : constant Sprite_Access := Sprite_Access (sprite_Param);
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        SpriteIndexedAnimation_Package.Initialize (This, sprite, image, basicColorArray, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (sprite_Param : access Sprite_Package.Sprite'Class; image_Param : access Image_Package.Image'Class; basicColorArray : BasicColor_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedSpriteIndexedAnimation_Access is
      This : constant AdjustedSpriteIndexedAnimation_Access := new AdjustedSpriteIndexedAnimation;
   begin
      AdjustedSpriteIndexedAnimation_Package.Initialize (This.all, sprite_Param, image_Param, basicColorArray, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   procedure paintFrame (This : in out AdjustedSpriteIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        AdjustedSpriteIndexedAnimation'Class (This).setFrame (frame);
        This.sprite.setPosition ((x) + (This.dx), (y) + (This.dy));
        SpriteIndexedAnimation_Package.SpriteIndexedAnimation (This).paint (graphics);
   end paintFrame;

   procedure paintXY (This : in out AdjustedSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
   begin
        This.sprite.setPosition ((x) + (This.dx), (y) + (This.dy));
        SpriteIndexedAnimation_Package.SpriteIndexedAnimation (This).paint (g);
   end paintXY;

   procedure paint (This : in out AdjustedSpriteIndexedAnimation; g_Param : access Graphics_Package.Graphics'Class) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
   begin
        This.sprite.setPosition (This.dx, This.dy);
        SpriteIndexedAnimation_Package.SpriteIndexedAnimation (This).paint (g);
   end paint;

end org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation_Package;



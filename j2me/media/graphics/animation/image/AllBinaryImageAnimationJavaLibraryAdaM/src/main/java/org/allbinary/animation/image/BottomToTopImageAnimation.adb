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


with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package body org.allbinary.animation.image.BottomToTopImageAnimation_Package is

   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out BottomToTopImageAnimation'Class) is
   begin
      null;
      This.startHeight := 0;
      This.currentHeight := 0;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out BottomToTopImageAnimation'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageSegmentAnimation_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, animationBehavior);
        Initialize_Fields (This);
        BottomToTopImageAnimation'Class (This).setFrame ((BottomToTopImageAnimation'Class (This).getSize) - (1));
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return BottomToTopImageAnimation_Access is
      This : constant BottomToTopImageAnimation_Access := new BottomToTopImageAnimation;
   begin
      BottomToTopImageAnimation_Package.Initialize (This.all, image_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out BottomToTopImageAnimation) is
   begin
        ImageSegmentAnimation (This).previousFrame;
        BottomToTopImageAnimation'Class (This).update;
   end nextFrame;

   procedure previousFrame (This : in out BottomToTopImageAnimation) is
   begin
        ImageSegmentAnimation (This).nextFrame;
        BottomToTopImageAnimation'Class (This).update;
   end previousFrame;

   procedure setFrame (This : in out BottomToTopImageAnimation; index : Integer) is
   begin
        ImageSegmentAnimation (This).setFrame (index);
        BottomToTopImageAnimation'Class (This).update;
   end setFrame;

   procedure update (This : in out BottomToTopImageAnimation) is
   begin
        This.startHeight := ((BottomToTopImageAnimation'Class (This).getDrawHeight) * (BottomToTopImageAnimation'Class (This).getFrame)) / (BottomToTopImageAnimation'Class (This).getSize);
        This.currentHeight := (BottomToTopImageAnimation'Class (This).getDrawHeight) - (This.startHeight);
   end update;

   procedure paintXY (This : in out BottomToTopImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawRegion (BottomToTopImageAnimation'Class (This).getImage, BottomToTopImageAnimation'Class (This).getStartX, This.startHeight, BottomToTopImageAnimation'Class (This).getDrawWidth, This.currentHeight, Sprite_Package.TRANS_NONE, x, (y) + (This.startHeight), This.anchor);
   end paintXY;

end org.allbinary.animation.image.BottomToTopImageAnimation_Package;



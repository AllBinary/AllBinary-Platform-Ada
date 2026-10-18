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

package body org.allbinary.animation.image.RightToLeftImageAnimation_Package is

   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out RightToLeftImageAnimation'Class) is
   begin
      null;
      This.startWidth := 0;
      This.currentWidth := 0;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out RightToLeftImageAnimation'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageSegmentAnimation_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, animationBehavior);
        Initialize_Fields (This);
        RightToLeftImageAnimation'Class (This).setFrame ((RightToLeftImageAnimation'Class (This).getSize) - (1));
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return RightToLeftImageAnimation_Access is
      This : constant RightToLeftImageAnimation_Access := new RightToLeftImageAnimation;
   begin
      RightToLeftImageAnimation_Package.Initialize (This.all, image_Param, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out RightToLeftImageAnimation) is
   begin
        ImageSegmentAnimation (This).previousFrame;
        RightToLeftImageAnimation'Class (This).update;
   end nextFrame;

   procedure previousFrame (This : in out RightToLeftImageAnimation) is
   begin
        ImageSegmentAnimation (This).nextFrame;
        RightToLeftImageAnimation'Class (This).update;
   end previousFrame;

   procedure setFrame (This : in out RightToLeftImageAnimation; index : Integer) is
   begin
        ImageSegmentAnimation (This).setFrame (index);
        RightToLeftImageAnimation'Class (This).update;
   end setFrame;

   procedure update (This : in out RightToLeftImageAnimation) is
   begin
        This.startWidth := ((RightToLeftImageAnimation'Class (This).getDrawWidth) * (RightToLeftImageAnimation'Class (This).getFrame)) / (RightToLeftImageAnimation'Class (This).getSize);
        This.currentWidth := (RightToLeftImageAnimation'Class (This).getDrawWidth) - (This.startWidth);
   end update;

   procedure paintXY (This : in out RightToLeftImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawRegion (RightToLeftImageAnimation'Class (This).getImage, This.startWidth, RightToLeftImageAnimation'Class (This).getStartY, This.currentWidth, RightToLeftImageAnimation'Class (This).getDrawHeight, Sprite_Package.TRANS_NONE, (x) + (This.startWidth), y, This.anchor);
   end paintXY;

end org.allbinary.animation.image.RightToLeftImageAnimation_Package;



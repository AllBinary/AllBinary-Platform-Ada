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


package body org.allbinary.animation.image.LeftToRightImageAnimation_Package is

   procedure Initialize_Fields (This : in out LeftToRightImageAnimation'Class) is
   begin
      null;
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out LeftToRightImageAnimation'Class; image_Param : access Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior'Class) is
      image : Image_Access := Image_Access (image_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageSegmentAnimation_Package.Initialize (This, image, sequenceArray, animationBehavior);
        Initialize_Fields (This);
        This.currentWidth := 0;
        if (This.getSequence (0)) = (-(1)) then
            This.setFrame ((This.getSize) - (1));
        end if;
   end Initialize;

   function Create (image_Param : access Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior'Class) return LeftToRightImageAnimation_Access is
      This : constant LeftToRightImageAnimation_Access := new LeftToRightImageAnimation;
   begin
      LeftToRightImageAnimation_Package.Initialize (This.all, image_Param, sequenceArray, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out LeftToRightImageAnimation) is
   begin
        if (This.getSequence (0)) = (-(1)) then
            ImageSegmentAnimation (This).previousFrame;
        else
            ImageSegmentAnimation (This).nextFrame;
        end if;
        This.update;
   end nextFrame;

   procedure previousFrame (This : in out LeftToRightImageAnimation) is
   begin
        if (This.getSequence (0)) = (-(1)) then
            ImageSegmentAnimation (This).nextFrame;
        else
            ImageSegmentAnimation (This).previousFrame;
        end if;
        This.update;
   end previousFrame;

   procedure setFrame (This : in out LeftToRightImageAnimation; index : Integer) is
   begin
        ImageSegmentAnimation (This).setFrame (index);
        This.update;
   end setFrame;

   procedure update (This : in out LeftToRightImageAnimation) is
   begin
        This.currentWidth := ((This.getDrawWidth) * (This.getFrame)) / (This.getSize);
   end update;

   procedure paintXY (This : in out LeftToRightImageAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawRegion (This.getImage, This.getStartX, This.getStartY, This.currentWidth, This.getDrawHeight, Sprite_Package.TRANS_NONE, x, y, This.anchor);
   end paintXY;

end org.allbinary.animation.image.LeftToRightImageAnimation_Package;



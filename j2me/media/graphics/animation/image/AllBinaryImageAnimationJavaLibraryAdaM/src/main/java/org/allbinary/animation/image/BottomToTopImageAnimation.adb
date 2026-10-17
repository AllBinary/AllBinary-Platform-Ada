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


package body org.allbinary.animation.image.BottomToTopImageAnimation_Package is

   procedure Initialize_Fields (This : in out BottomToTopImageAnimation'Class) is
   begin
      null;
      This.startHeight := 0;
      This.currentHeight := 0;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out BottomToTopImageAnimation'Class; image : Image_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageSegmentAnimation_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, animationBehavior);
        Initialize_Fields (This);
        This.setFrame ((This.getSize) - (1));
   end Initialize;

   function Create (image : Image_Access; animationBehavior : AnimationBehavior_Access) return BottomToTopImageAnimation_Access is
      This : constant BottomToTopImageAnimation_Access := new BottomToTopImageAnimation;
   begin
      BottomToTopImageAnimation_Package.Initialize (This.all, image, animationBehavior);
      return This;
   end Create;

   procedure nextFrame (This : in out BottomToTopImageAnimation) is
   begin
        ImageSegmentAnimation (This).previousFrame;
        This.update;
   end nextFrame;

   procedure previousFrame (This : in out BottomToTopImageAnimation) is
   begin
        ImageSegmentAnimation (This).nextFrame;
        This.update;
   end previousFrame;

   procedure setFrame (This : in out BottomToTopImageAnimation; index : Integer) is
   begin
        ImageSegmentAnimation (This).setFrame (index);
        This.update;
   end setFrame;

   procedure update (This : in out BottomToTopImageAnimation) is
   begin
        This.startHeight := ((This.getDrawHeight) * (This.getFrame)) / (This.getSize);
        This.currentHeight := (This.getDrawHeight) - (This.startHeight);
   end update;

   procedure paintXY (This : in out BottomToTopImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        graphics.drawRegion (This.getImage, This.getStartX, This.startHeight, This.getDrawWidth, This.currentHeight, Sprite_Package.TRANS_NONE, x, (y) + (This.startHeight), This.anchor);
   end paintXY;

end org.allbinary.animation.image.BottomToTopImageAnimation_Package;



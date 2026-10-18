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


with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package body org.allbinary.animation.image.ImageAnimation_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out ImageAnimation'Class) is
   begin
      null;
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageAnimation'Class; image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.image := image;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageAnimation_Access is
      This : constant ImageAnimation_Access := new ImageAnimation;
   begin
      ImageAnimation_Package.Initialize (This.all, image_Param, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out ImageAnimation) return Integer is
   begin
        return ImageAnimation'Class (This).getSize;
   end getAnimationSize;

   procedure nextFrame (This : in out ImageAnimation) is
   begin
        null;
   end nextFrame;

   procedure previousFrame (This : in out ImageAnimation) is
   begin
        null;
   end previousFrame;

   procedure setFrame (This : in out ImageAnimation; index : Integer) is
   begin
        null;
   end setFrame;

   function getFrame (This : in out ImageAnimation) return Integer is
   begin
        return 0;
   end getFrame;

   function getSize (This : in out ImageAnimation) return Integer is
   begin
        return 1;
   end getSize;

   procedure setSequence (This : in out ImageAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out ImageAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out ImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.image, x, y, This.anchor);
   end paintXY;

   function getImage (This : in out ImageAnimation) return Image_Access is
   begin
        return This.image;
   end getImage;

   --  throws Exception
   procedure close (This : in out ImageAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end close;

   --  throws Throwable
   procedure finalize (This : in out ImageAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end finalize;

end org.allbinary.animation.image.ImageAnimation_Package;



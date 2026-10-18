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

package body org.allbinary.animation.image.TweenedImageAnimation_Package is

   package DisposalUtil_Package renames Standard.org.allbinary.DisposalUtil_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out TweenedImageAnimation'Class) is
   begin
      null;
      
      
      
      
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out TweenedImageAnimation'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; totalFrames : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.image := image;
        This.dx := dx;
        This.dy := dy;
        This.totalFrames := totalFrames;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.totalFrames);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; totalFrames : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TweenedImageAnimation_Access is
      This : constant TweenedImageAnimation_Access := new TweenedImageAnimation;
   begin
      TweenedImageAnimation_Package.Initialize (This.all, image_Param, dx, dy, totalFrames, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out TweenedImageAnimation) return Integer is
   begin
        return TweenedImageAnimation'Class (This).getSize;
   end getAnimationSize;

   procedure nextFrame (This : in out TweenedImageAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end nextFrame;

   procedure previousFrame (This : in out TweenedImageAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.previous; pragma Unreferenced (Java_Result); begin null; end;
   end previousFrame;

   procedure setFrame (This : in out TweenedImageAnimation; index : Integer) is
   begin
        This.circularIndexUtil.setIndex (index);
   end setFrame;

   function getFrame (This : in out TweenedImageAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   function getSize (This : in out TweenedImageAnimation) return Integer is
   begin
        return This.totalFrames;
   end getSize;

   procedure setSequence (This : in out TweenedImageAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out TweenedImageAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out TweenedImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      frame : Integer;
      currentX : Integer;
      currentY : Integer;
   begin
        frame := TweenedImageAnimation'Class (This).getFrame;
        currentX := (This.dx) * (frame);
        currentY := (This.dy) * (frame);
        graphics.drawImage (This.image, (x) + (currentX), (y) + (currentY), This.anchor);
   end paintXY;

   --  throws Exception
   procedure close (This : in out TweenedImageAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end close;

   --  throws Throwable
   procedure finalize (This : in out TweenedImageAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end finalize;

end org.allbinary.animation.image.TweenedImageAnimation_Package;



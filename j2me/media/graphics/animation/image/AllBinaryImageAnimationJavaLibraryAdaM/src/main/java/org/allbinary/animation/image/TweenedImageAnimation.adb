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


package body org.allbinary.animation.image.TweenedImageAnimation_Package is

   procedure Initialize_Fields (This : in out TweenedImageAnimation'Class) is
   begin
      null;
      
      
      
      
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out TweenedImageAnimation'Class; image : Image_Access; dx : Integer; dy : Integer; totalFrames : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.image := image;
        This.dx := dx;
        This.dy := dy;
        This.totalFrames := totalFrames;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.totalFrames);
   end Initialize;

   function Create (image : Image_Access; dx : Integer; dy : Integer; totalFrames : Integer; animationBehavior : AnimationBehavior_Access) return TweenedImageAnimation_Access is
      This : constant TweenedImageAnimation_Access := new TweenedImageAnimation;
   begin
      Initialize (This.all, image, dx, dy, totalFrames, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out TweenedImageAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   procedure nextFrame (This : in out TweenedImageAnimation) is
   begin
        This.circularIndexUtil.next;
   end nextFrame;

   procedure previousFrame (This : in out TweenedImageAnimation) is
   begin
        This.circularIndexUtil.previous;
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

   procedure paintXY (This : in out TweenedImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      frame : Integer;
      currentX : Integer;
      currentY : Integer;
   begin
        frame := This.getFrame;
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

   procedure getAnimationSize (This : in out TweenedImageAnimation) is
      Java_Result : constant Integer := TweenedImageAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getFrame (This : in out TweenedImageAnimation) is
      Java_Result : constant Integer := TweenedImageAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getSize (This : in out TweenedImageAnimation) is
      Java_Result : constant Integer := TweenedImageAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getSequence (This : in out TweenedImageAnimation) is
      Java_Result : constant Integer_Array_Access := TweenedImageAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

end org.allbinary.animation.image.TweenedImageAnimation_Package;



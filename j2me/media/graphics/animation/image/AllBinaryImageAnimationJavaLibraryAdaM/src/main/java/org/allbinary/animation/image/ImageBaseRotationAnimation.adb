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


package body org.allbinary.animation.image.ImageBaseRotationAnimation_Package is

   procedure Initialize_Fields (This : in out ImageBaseRotationAnimation'Class) is
   begin
      null;
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageBaseRotationAnimation'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, CircularIndexUtil_Package.createInstance ((totalAngle) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
        Initialize_Fields (This);
        This.image := image;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageBaseRotationAnimation_Access is
      This : constant ImageBaseRotationAnimation_Access := new ImageBaseRotationAnimation;
   begin
      ImageBaseRotationAnimation_Package.Initialize (This.all, image_Param, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out ImageBaseRotationAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   procedure setSequence (This : in out ImageBaseRotationAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out ImageBaseRotationAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out ImageBaseRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.image, x, y, This.anchor);
   end paintXY;

   function getImage (This : in out ImageBaseRotationAnimation) return Image_Access is
   begin
        return This.image;
   end getImage;

   function getWidth (This : in out ImageBaseRotationAnimation) return Integer is
   begin
        return This.image.getWidth;
   end getWidth;

   function getHeight (This : in out ImageBaseRotationAnimation) return Integer is
   begin
        return This.image.getHeight;
   end getHeight;

   --  throws Exception
   procedure close (This : in out ImageBaseRotationAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end close;

   --  throws Throwable
   procedure finalize (This : in out ImageBaseRotationAnimation) is
   begin
        DisposalUtil_Package.getInstance.disposeImage (This.image);
   end finalize;

end org.allbinary.animation.image.ImageBaseRotationAnimation_Package;



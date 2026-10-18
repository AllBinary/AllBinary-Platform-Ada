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


package body org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package is

   procedure Initialize_Fields (This : in out ImageArrayBaseRotationAnimation'Class) is
   begin
      null;
      This.imageModifierUtil := ImageModifierUtil_Package.getInstanceOrCreate;
      
      This.imageArray := NullImage_Package.NULL_IMAGE_ARRAY;
      
      This.totalFrames := 0;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayBaseRotationAnimation'Class; originalImageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        RotationAnimation_Package.Initialize (This, angleInfo, CircularIndexUtil_Package.createInstance ((360) / (angleInfo.getAngleIncrementInfo.getAngleIncrement)), animationBehavior);
        Initialize_Fields (This);
        This.originalImageArray := originalImageArray;
        ImageArrayBaseRotationAnimation'Class (This).setImageArray (This.imageModifierUtil.getImageArray (originalImageArray));
        This.currentImage := This.imageArray (This.circularIndexUtil.getIndex);
   end Initialize;

   function Create (originalImageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayBaseRotationAnimation_Access is
      This : constant ImageArrayBaseRotationAnimation_Access := new ImageArrayBaseRotationAnimation;
   begin
      ImageArrayBaseRotationAnimation_Package.Initialize (This.all, originalImageArray, angleInfo_Param, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out ImageArrayBaseRotationAnimation) return Integer is
   begin
        return ImageArrayBaseRotationAnimation'Class (This).getSize;
   end getAnimationSize;

   procedure setAlpha (This : in out ImageArrayBaseRotationAnimation; alpha : Integer) is
      index : Integer;
   begin
        if (This.alphaP) /= (alpha) then
            RotationAnimation (This).setAlpha (alpha);
            This.imageModifierUtil.reset;
            index := This.circularIndexUtil.getIndex;
            This.imageModifierUtil.setAlpha (This.originalImageArray (index), This.imageArray (index), index, This.alphaP);
        end if;
   end setAlpha;

   procedure nextRotation (This : in out ImageArrayBaseRotationAnimation) is
      index : Integer;
   begin
        RotationAnimation (This).nextRotation;
        index := This.circularIndexUtil.getIndex;
        This.imageModifierUtil.setAlpha (This.originalImageArray (index), This.imageArray (index), index, This.alphaP);
        This.currentImage := This.imageArray (index);
   end nextRotation;

   procedure previousRotation (This : in out ImageArrayBaseRotationAnimation) is
      index : Integer;
   begin
        RotationAnimation (This).previousRotation;
        index := This.circularIndexUtil.getIndex;
        This.imageModifierUtil.setAlpha (This.originalImageArray (index), This.imageArray (index), index, This.alphaP);
        This.currentImage := This.imageArray (index);
   end previousRotation;

   procedure setFrame (This : in out ImageArrayBaseRotationAnimation; index2 : Integer) is
      index : Integer;
   begin
        RotationAnimation (This).setFrame (index2);
        index := This.circularIndexUtil.getIndex;
        This.imageModifierUtil.setAlpha (This.originalImageArray (index), This.imageArray (index), index, This.alphaP);
        This.currentImage := This.imageArray (index);
   end setFrame;

   procedure setSequence (This : in out ImageArrayBaseRotationAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out ImageArrayBaseRotationAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure setImageArray (This : in out ImageArrayBaseRotationAnimation; imageArray : Image_Access_Array_Access) is
   begin
        This.imageArray := imageArray;
        This.totalFrames := imageArray'Length;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.totalFrames);
   end setImageArray;

   procedure paintXY (This : in out ImageArrayBaseRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.currentImage, x, y, This.anchor);
   end paintXY;

   --  throws Exception
   procedure close (This : in out ImageArrayBaseRotationAnimation) is
      disposalUtil : DisposalUtil_Access;
      size2 : Integer;
      index : Integer;
      size : Integer;
   begin
        disposalUtil := DisposalUtil_Package.getInstance;
        size2 := This.imageArray'Length;
        for index in 0 .. (size2) - 1 loop
            disposalUtil.disposeImage (This.imageArray (index));
        end loop;
        size := This.originalImageArray'Length;
        for index in 0 .. (size) - 1 loop
            disposalUtil.disposeImage (This.originalImageArray (index));
        end loop;
        disposalUtil.disposeImage (This.currentImage);
   end close;

   --  throws Throwable
   procedure finalize (This : in out ImageArrayBaseRotationAnimation) is
      disposalUtil : DisposalUtil_Access;
      size2 : Integer;
      index : Integer;
      size : Integer;
   begin
        disposalUtil := DisposalUtil_Package.getInstance;
        size2 := This.imageArray'Length;
        for index in 0 .. (size2) - 1 loop
            disposalUtil.disposeImage (This.imageArray (index));
        end loop;
        size := This.originalImageArray'Length;
        for index in 0 .. (size) - 1 loop
            disposalUtil.disposeImage (This.originalImageArray (index));
        end loop;
        disposalUtil.disposeImage (This.currentImage);
   end finalize;

end org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package;



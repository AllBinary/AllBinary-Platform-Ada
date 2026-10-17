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


package body org.allbinary.animation.image.ImageArrayAnimation_Package is

   procedure Initialize_Fields (This : in out ImageArrayAnimation'Class) is
   begin
      null;
      This.imageArray := NullImage_Package.NULL_IMAGE_ARRAY;
      This.totalFrames := 0;
      This.circularIndexUtil := CircularIndexUtil_Package.NULL_CIRCULAR_INDEX_UTIL;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.setImageArray (imageArray);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return ImageArrayAnimation_Access is
      This : constant ImageArrayAnimation_Access := new ImageArrayAnimation;
   begin
      Initialize (This.all, imageArray, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out ImageArrayAnimation) return Integer is
   begin
        return This.getSize;
   end getAnimationSize;

   procedure nextFrame (This : in out ImageArrayAnimation) is
   begin
        This.circularIndexUtil.next;
   end nextFrame;

   procedure previousFrame (This : in out ImageArrayAnimation) is
   begin
        This.circularIndexUtil.previous;
   end previousFrame;

   procedure setFrame (This : in out ImageArrayAnimation; index : Integer) is
   begin
        This.circularIndexUtil.setIndex (index);
   end setFrame;

   function getFrame (This : in out ImageArrayAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   function getSize (This : in out ImageArrayAnimation) return Integer is
   begin
        return This.totalFrames;
   end getSize;

   procedure setSequence (This : in out ImageArrayAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out ImageArrayAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   function getImage (This : in out ImageArrayAnimation; index : Integer) return Image_Access is
   begin
        return This.imageArray (index);
   end getImage;

   function getImageArray (This : in out ImageArrayAnimation) return Image_Access_Array_Access is
   begin
        return This.imageArray;
   end getImageArray;

   procedure setImageArray (This : in out ImageArrayAnimation; imageArray : Image_Access_Array_Access) is
   begin
        This.imageArray := imageArray;
        This.totalFrames := imageArray'Length;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.totalFrames);
   end setImageArray;

   procedure paintXY (This : in out ImageArrayAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        graphics.drawImage (This.imageArray (This.circularIndexUtil.getIndex), x, y, This.anchor);
   end paintXY;

   procedure getAnimationSize (This : in out ImageArrayAnimation) is
      Java_Result : constant Integer := ImageArrayAnimation'Class (This).getAnimationSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationSize;

   procedure getFrame (This : in out ImageArrayAnimation) is
      Java_Result : constant Integer := ImageArrayAnimation'Class (This).getFrame;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFrame;

   procedure getSize (This : in out ImageArrayAnimation) is
      Java_Result : constant Integer := ImageArrayAnimation'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure getSequence (This : in out ImageArrayAnimation) is
      Java_Result : constant Integer_Array_Access := ImageArrayAnimation'Class (This).getSequence;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSequence;

   procedure getImage (This : in out ImageArrayAnimation; index : Integer) is
      Java_Result : constant Image_Access := ImageArrayAnimation'Class (This).getImage (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getImageArray (This : in out ImageArrayAnimation) is
      Java_Result : constant Image_Access_Array_Access := ImageArrayAnimation'Class (This).getImageArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

end org.allbinary.animation.image.ImageArrayAnimation_Package;



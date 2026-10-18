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


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;

package body org.allbinary.animation.image.ImageArrayAnimation_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out ImageArrayAnimation'Class) is
   begin
      null;
      This.imageArray := NullImage_Package.NULL_IMAGE_ARRAY;
      This.totalFrames := 0;
      This.circularIndexUtil := CircularIndexUtil_Package.NULL_CIRCULAR_INDEX_UTIL;
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayAnimation'Class; imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        ImageArrayAnimation'Class (This).setImageArray (imageArray);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayAnimation_Access is
      This : constant ImageArrayAnimation_Access := new ImageArrayAnimation;
   begin
      ImageArrayAnimation_Package.Initialize (This.all, imageArray, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   function getAnimationSize (This : in out ImageArrayAnimation) return Integer is
   begin
        return ImageArrayAnimation'Class (This).getSize;
   end getAnimationSize;

   procedure nextFrame (This : in out ImageArrayAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end nextFrame;

   procedure previousFrame (This : in out ImageArrayAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.previous; pragma Unreferenced (Java_Result); begin null; end;
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

   procedure paintXY (This : in out ImageArrayAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.imageArray (This.circularIndexUtil.getIndex), x, y, This.anchor);
   end paintXY;

   procedure getImage (This : in out ImageArrayAnimation; index : Integer) is
      Java_Result : constant Image_Access := ImageArrayAnimation'Class (This).getImage (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

end org.allbinary.animation.image.ImageArrayAnimation_Package;



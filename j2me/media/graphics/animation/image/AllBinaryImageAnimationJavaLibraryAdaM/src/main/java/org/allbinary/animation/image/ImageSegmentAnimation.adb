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


package body org.allbinary.animation.image.ImageSegmentAnimation_Package is

   procedure Initialize_Fields (This : in out ImageSegmentAnimation'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageSegmentAnimation'Class; image : Image_Access; sequenceArray : Integer_Array_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageAnimation_Package.Initialize (This, image, animationBehavior);
        Initialize_Fields (This);
        This.startX := 0;
        This.startY := 0;
        This.drawWidth := This.getImage.getWidth;
        This.drawHeight := This.getImage.getHeight;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.drawHeight);
        This.sequenceArray := sequenceArray;
   end Initialize;

   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; animationBehavior : AnimationBehavior_Access) return ImageSegmentAnimation_Access is
      This : constant ImageSegmentAnimation_Access := new ImageSegmentAnimation;
   begin
      ImageSegmentAnimation_Package.Initialize (This.all, image, sequenceArray, animationBehavior);
      return This;
   end Create;

   procedure nextFrame (This : in out ImageSegmentAnimation) is
   begin
        This.circularIndexUtil.next;
   end nextFrame;

   procedure previousFrame (This : in out ImageSegmentAnimation) is
   begin
        This.circularIndexUtil.previous;
   end previousFrame;

   procedure setFrame (This : in out ImageSegmentAnimation; index : Integer) is
   begin
        This.circularIndexUtil.setIndex (index);
   end setFrame;

   function getFrame (This : in out ImageSegmentAnimation) return Integer is
   begin
        return This.circularIndexUtil.getIndex;
   end getFrame;

   function getSize (This : in out ImageSegmentAnimation) return Integer is
   begin
        return This.circularIndexUtil.getSize;
   end getSize;

   procedure setSequence (This : in out ImageSegmentAnimation; sequenceArray : Integer_Array_Access) is
   begin
        This.sequenceArray := sequenceArray;
   end setSequence;

   function getSequence (This : in out ImageSegmentAnimation) return Integer_Array_Access is
   begin
        return This.sequenceArray;
   end getSequence;

   procedure paintXY (This : in out ImageSegmentAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        null;
   end paintXY;

   function getStartX (This : in out ImageSegmentAnimation) return Integer is
   begin
        return This.startX;
   end getStartX;

   procedure setStartX (This : in out ImageSegmentAnimation; startX : Integer) is
   begin
        This.startX := startX;
   end setStartX;

   function getStartY (This : in out ImageSegmentAnimation) return Integer is
   begin
        return This.startY;
   end getStartY;

   procedure setStartY (This : in out ImageSegmentAnimation; startY : Integer) is
   begin
        This.startY := startY;
   end setStartY;

   function getDrawWidth (This : in out ImageSegmentAnimation) return Integer is
   begin
        return This.drawWidth;
   end getDrawWidth;

   procedure setDrawWidth (This : in out ImageSegmentAnimation; drawWidth : Integer) is
   begin
        This.drawWidth := drawWidth;
   end setDrawWidth;

   function getDrawHeight (This : in out ImageSegmentAnimation) return Integer is
   begin
        return This.drawHeight;
   end getDrawHeight;

   procedure setDrawHeight (This : in out ImageSegmentAnimation; drawHeight : Integer) is
   begin
        This.drawHeight := drawHeight;
   end setDrawHeight;

end org.allbinary.animation.image.ImageSegmentAnimation_Package;



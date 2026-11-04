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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.animation.image.ImageAnimation_Package;

package body org.allbinary.animation.image.ImageSegmentAnimation_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ImageSegmentAnimation'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageSegmentAnimation'Class; image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageAnimation_Package.Initialize (This, image, animationBehavior);
        Initialize_Fields (This);
        This.startX := 0;
        This.startY := 0;
        This.drawWidth := ImageSegmentAnimation'Class (This).getImage.getWidth;
        This.drawHeight := ImageSegmentAnimation'Class (This).getImage.getHeight;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.drawHeight);
        This.sequenceArray := sequenceArray;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; sequenceArray : Integer_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageSegmentAnimation_Access is
      This : constant ImageSegmentAnimation_Access := new ImageSegmentAnimation;
   begin
      ImageSegmentAnimation_Package.Initialize (This.all, image_Param, sequenceArray, animationBehavior_Param);
      return This;
   end Create;

   procedure nextFrame (This : in out ImageSegmentAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end nextFrame;

   procedure previousFrame (This : in out ImageSegmentAnimation) is
   begin
        declare Java_Result renames This.circularIndexUtil.previous; pragma Unreferenced (Java_Result); begin null; end;
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

   procedure paintXY (This : in out ImageSegmentAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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



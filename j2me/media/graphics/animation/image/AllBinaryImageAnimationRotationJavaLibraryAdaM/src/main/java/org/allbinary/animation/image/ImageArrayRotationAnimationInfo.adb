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


package body org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package is

   procedure Initialize_Fields (This : in out ImageArrayRotationAnimationInfo'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayRotationAnimationInfo'Class; imageArray : Image_Access_Array_Access; angleIncrement : Integer; totalAngle : Integer; dx : Integer; dy : Integer) is
   begin
      Initialize_Fields (This);
        This.imageArray := imageArray;
        This.angleIncrement := angleIncrement;
        This.totalAngle := totalAngle;
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; angleIncrement : Integer; totalAngle : Integer; dx : Integer; dy : Integer) return ImageArrayRotationAnimationInfo_Access is
      This : constant ImageArrayRotationAnimationInfo_Access := new ImageArrayRotationAnimationInfo;
   begin
      Initialize (This.all, imageArray, angleIncrement, totalAngle, dx, dy);
      return This;
   end Create;

   procedure setImageArray (This : in out ImageArrayRotationAnimationInfo; imageArray : Image_Access_Array_Access) is
   begin
        This.imageArray := imageArray;
   end setImageArray;

   function getImageArray (This : in out ImageArrayRotationAnimationInfo) return Image_Access_Array_Access is
   begin
        return This.imageArray;
   end getImageArray;

   function getAngleInfoP (This : in out ImageArrayRotationAnimationInfo) return AngleInfo_Access is
   begin
        return AngleInfo_Package.getInstance (Short_Integer (This.angleIncrement));
   end getAngleInfoP;

   procedure setTotalAngle (This : in out ImageArrayRotationAnimationInfo; totalAngle : Integer) is
   begin
        This.totalAngle := totalAngle;
   end setTotalAngle;

   function getTotalAngle (This : in out ImageArrayRotationAnimationInfo) return Integer is
   begin
        return This.totalAngle;
   end getTotalAngle;

   procedure setDx (This : in out ImageArrayRotationAnimationInfo; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out ImageArrayRotationAnimationInfo) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out ImageArrayRotationAnimationInfo; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out ImageArrayRotationAnimationInfo) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure getImageArray (This : in out ImageArrayRotationAnimationInfo) is
      Java_Result : constant Image_Access_Array_Access := ImageArrayRotationAnimationInfo'Class (This).getImageArray;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

   procedure getAngleInfoP (This : in out ImageArrayRotationAnimationInfo) is
      Java_Result : constant AngleInfo_Access := ImageArrayRotationAnimationInfo'Class (This).getAngleInfoP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngleInfoP;

   procedure getTotalAngle (This : in out ImageArrayRotationAnimationInfo) is
      Java_Result : constant Integer := ImageArrayRotationAnimationInfo'Class (This).getTotalAngle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalAngle;

   procedure getDx (This : in out ImageArrayRotationAnimationInfo) is
      Java_Result : constant Integer := ImageArrayRotationAnimationInfo'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out ImageArrayRotationAnimationInfo) is
      Java_Result : constant Integer := ImageArrayRotationAnimationInfo'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

end org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;



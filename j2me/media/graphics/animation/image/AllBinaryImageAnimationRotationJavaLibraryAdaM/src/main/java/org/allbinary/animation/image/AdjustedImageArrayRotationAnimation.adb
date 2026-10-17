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


package body org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedImageArrayRotationAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   --  throws Exception
   function createAdjustedImageArrayRotationAnimationInfo (anyType : Java_Object_Access; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayRotationAnimation_Access is
      imageRotationAnimationInfo : ImageArrayRotationAnimationInfo_Access;
   begin
        imageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Access (anyType);
        return AdjustedImageArrayRotationAnimation_Package.Create (imageRotationAnimationInfo.getImageArray, imageRotationAnimationInfo.getAngleInfoP, imageRotationAnimationInfo.getTotalAngle, imageRotationAnimationInfo.getDx, imageRotationAnimationInfo.getDy, animationBehavior);
   end createAdjustedImageArrayRotationAnimationInfo;

   --  throws Exception
   function createAnimation (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayRotationAnimation_Access is
   begin
        return AdjustedImageArrayRotationAnimation_Package.Create (imageArray, angleInfo, totalAngle, -((Java_Shift_Right_Arithmetic (imageArray (0).getWidth, 2))), -((Java_Shift_Right_Arithmetic (imageArray (0).getHeight, 2))), animationBehavior);
   end createAnimation;

   procedure Initialize (This : in out AdjustedImageArrayRotationAnimation'Class; imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageArrayRotationAnimation_Package.Initialize (This, imageArray, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageArrayRotationAnimation_Access is
      This : constant AdjustedImageArrayRotationAnimation_Access := new AdjustedImageArrayRotationAnimation;
   begin
      Initialize (This.all, imageArray, angleInfo, totalAngle, dx, dy, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedImageArrayRotationAnimation; dx : Integer; dy : Integer) is
   begin
        This.setDx (dx);
        This.setDy (dy);
   end init;

   procedure paintXY (This : in out AdjustedImageArrayRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        ImageArrayRotationAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

   procedure setDx (This : in out AdjustedImageArrayRotationAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out AdjustedImageArrayRotationAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out AdjustedImageArrayRotationAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out AdjustedImageArrayRotationAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure createAdjustedImageArrayRotationAnimationInfo (anyType : Java_Object_Access; animationBehavior : AnimationBehavior_Access) is
      Java_Result : constant AdjustedImageArrayRotationAnimation_Access := createAdjustedImageArrayRotationAnimationInfo (anyType, animationBehavior);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAdjustedImageArrayRotationAnimationInfo;

   procedure createAnimation (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; animationBehavior : AnimationBehavior_Access) is
      Java_Result : constant AdjustedImageArrayRotationAnimation_Access := createAnimation (imageArray, angleInfo, totalAngle, animationBehavior);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

   procedure getDx (This : in out AdjustedImageArrayRotationAnimation) is
      Java_Result : constant Integer := AdjustedImageArrayRotationAnimation'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out AdjustedImageArrayRotationAnimation) is
      Java_Result : constant Integer := AdjustedImageArrayRotationAnimation'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

end org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;



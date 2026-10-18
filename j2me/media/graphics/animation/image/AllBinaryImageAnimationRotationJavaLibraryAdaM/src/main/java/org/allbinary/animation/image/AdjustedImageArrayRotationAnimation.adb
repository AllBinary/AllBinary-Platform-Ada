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
   function createAdjustedImageArrayRotationAnimationInfo (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedImageArrayRotationAnimation_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
      imageRotationAnimationInfo : ImageArrayRotationAnimationInfo_Access;
   begin
        imageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Access (anyType);
        return AdjustedImageArrayRotationAnimation_Package.Create (imageRotationAnimationInfo.getImageArray, imageRotationAnimationInfo.getAngleInfoP, imageRotationAnimationInfo.getTotalAngle, imageRotationAnimationInfo.getDx, imageRotationAnimationInfo.getDy, animationBehavior);
   end createAdjustedImageArrayRotationAnimationInfo;

   --  throws Exception
   function createAnimation (imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedImageArrayRotationAnimation_Access is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        return AdjustedImageArrayRotationAnimation_Package.Create (imageArray, angleInfo, totalAngle, -((Java_Shift_Right_Arithmetic (imageArray (0).getWidth, 2))), -((Java_Shift_Right_Arithmetic (imageArray (0).getHeight, 2))), animationBehavior);
   end createAnimation;

   procedure Initialize (This : in out AdjustedImageArrayRotationAnimation'Class; imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageArrayRotationAnimation_Package.Initialize (This, imageArray, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        AdjustedImageArrayRotationAnimation'Class (This).init (dx, dy);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedImageArrayRotationAnimation_Access is
      This : constant AdjustedImageArrayRotationAnimation_Access := new AdjustedImageArrayRotationAnimation;
   begin
      AdjustedImageArrayRotationAnimation_Package.Initialize (This.all, imageArray, angleInfo_Param, totalAngle, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedImageArrayRotationAnimation; dx : Integer; dy : Integer) is
   begin
        AdjustedImageArrayRotationAnimation'Class (This).setDx (dx);
        AdjustedImageArrayRotationAnimation'Class (This).setDy (dy);
   end init;

   procedure paintXY (This : in out AdjustedImageArrayRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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

   procedure createAdjustedImageArrayRotationAnimationInfo (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant AdjustedImageArrayRotationAnimation_Access := createAdjustedImageArrayRotationAnimationInfo (anyType_Param, animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAdjustedImageArrayRotationAnimationInfo;

   procedure createAnimation (imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant AdjustedImageArrayRotationAnimation_Access := createAnimation (imageArray, angleInfo_Param, totalAngle, animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;



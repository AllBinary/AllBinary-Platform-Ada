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


with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;

package body org.allbinary.animation.image.ImageArrayRotationAnimation_Package is

   procedure Initialize_Fields (This : in out ImageArrayRotationAnimation'Class) is
   begin
      null;
      This.expectedTotalFrames := 0;
   end Initialize_Fields;


   --  throws Exception
   function createAnimation (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayRotationAnimation_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
      imageRotationAnimationInfo : ImageArrayRotationAnimationInfo_Access;
   begin
        imageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Access (anyType);
        return ImageArrayRotationAnimation_Package.Create (imageRotationAnimationInfo.getImageArray, imageRotationAnimationInfo.getAngleInfoP, imageRotationAnimationInfo.getTotalAngle, animationBehavior);
   end createAnimation;

   procedure Initialize (This : in out ImageArrayRotationAnimation'Class; imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageArrayBaseRotationAnimation_Package.Initialize (This, imageArray, angleInfo, animationBehavior);
        Initialize_Fields (This);
        ImageArrayRotationAnimation'Class (This).init (imageArray, angleInfo, totalAngle);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayRotationAnimation_Access is
      This : constant ImageArrayRotationAnimation_Access := new ImageArrayRotationAnimation;
   begin
      ImageArrayRotationAnimation_Package.Initialize (This.all, imageArray, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ImageArrayRotationAnimation; imageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Integer) is
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
   begin
        This.expectedTotalFrames := (totalAngle) / (This.angleInfo.getAngleIncrementInfo.getAngleIncrement);
        This.angleInfo.adjustAngle (0);
        if (This.expectedTotalFrames) /= (ImageArrayRotationAnimation'Class (This).getSize) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Wrong Number of Frames")));
        end if;
   end init;

   procedure setImageArray (This : in out ImageArrayRotationAnimation; imageArray : Image_Access_Array_Access) is
   begin
        ImageArrayBaseRotationAnimation (This).setImageArray (imageArray);
        This.angleInfo.adjustAngle (0);
   end setImageArray;

   procedure createAnimation (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      Java_Result : constant ImageArrayRotationAnimation_Access := createAnimation (anyType_Param => anyType_Param, animationBehavior_Param => animationBehavior_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.image.ImageArrayRotationAnimation_Package;



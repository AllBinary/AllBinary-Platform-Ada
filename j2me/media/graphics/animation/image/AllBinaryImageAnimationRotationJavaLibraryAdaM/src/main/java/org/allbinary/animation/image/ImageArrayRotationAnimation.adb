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


package body org.allbinary.animation.image.ImageArrayRotationAnimation_Package is

   procedure Initialize_Fields (This : in out ImageArrayRotationAnimation'Class) is
   begin
      null;
      This.expectedTotalFrames := 0;
   end Initialize_Fields;


   --  throws Exception
   function createAnimation (anyType : Java_Object_Access; animationBehavior : AnimationBehavior_Access) return ImageArrayRotationAnimation_Access is
      imageRotationAnimationInfo : ImageArrayRotationAnimationInfo_Access;
   begin
        imageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Access (anyType);
        return ImageArrayRotationAnimation_Package.Create (imageRotationAnimationInfo.getImageArray, imageRotationAnimationInfo.getAngleInfoP, imageRotationAnimationInfo.getTotalAngle, animationBehavior);
   end createAnimation;

   procedure Initialize (This : in out ImageArrayRotationAnimation'Class; imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageArrayBaseRotationAnimation_Package.Initialize (This, imageArray, angleInfo, animationBehavior);
        Initialize_Fields (This);
        This.init (imageArray, angleInfo, totalAngle);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer; animationBehavior : AnimationBehavior_Access) return ImageArrayRotationAnimation_Access is
      This : constant ImageArrayRotationAnimation_Access := new ImageArrayRotationAnimation;
   begin
      ImageArrayRotationAnimation_Package.Initialize (This.all, imageArray, angleInfo, totalAngle, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ImageArrayRotationAnimation; imageArray : Image_Access_Array_Access; angleInfo : AngleInfo_Access; totalAngle : Integer) is
   begin
        This.expectedTotalFrames := (totalAngle) / (This.angleInfo.getAngleIncrementInfo.getAngleIncrement);
        This.angleInfo.adjustAngle (0);
        if (This.expectedTotalFrames) /= (This.getSize) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Wrong Number of Frames")));
        end if;
   end init;

   procedure setImageArray (This : in out ImageArrayRotationAnimation; imageArray : Image_Access_Array_Access) is
   begin
        ImageArrayBaseRotationAnimation (This).setImageArray (imageArray);
        This.angleInfo.adjustAngle (0);
   end setImageArray;

   procedure createAnimation (anyType : Java_Object_Access; animationBehavior : AnimationBehavior_Access) is
      Java_Result : constant ImageArrayRotationAnimation_Access := createAnimation (anyType, animationBehavior);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.image.ImageArrayRotationAnimation_Package;



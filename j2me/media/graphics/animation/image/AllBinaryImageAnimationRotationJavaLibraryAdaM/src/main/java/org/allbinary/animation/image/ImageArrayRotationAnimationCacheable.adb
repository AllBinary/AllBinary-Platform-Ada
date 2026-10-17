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


package body org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package is

   procedure Initialize_Fields (This : in out ImageArrayRotationAnimationCacheable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayRotationAnimationCacheable'Class; anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        AdjustedImageArrayRotationAnimation_Package.Initialize (This, (ImageArrayRotationAnimationInfo_Access (anyType)).getImageArray, (ImageArrayRotationAnimationInfo_Access (anyType)).getAngleInfoP, (ImageArrayRotationAnimationInfo_Access (anyType)).getTotalAngle, (ImageArrayRotationAnimationInfo_Access (anyType)).getDx, (ImageArrayRotationAnimationInfo_Access (anyType)).getDy, animationBehavior);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior'Class) return ImageArrayRotationAnimationCacheable_Access is
      This : constant ImageArrayRotationAnimationCacheable_Access := new ImageArrayRotationAnimationCacheable;
   begin
      ImageArrayRotationAnimationCacheable_Package.Initialize (This.all, anyType_Param, animationBehavior_Param);
      return This;
   end Create;

   function getKey (This : in out ImageArrayRotationAnimationCacheable) return Java_Object_Access is
   begin
        return NullUtil_Package.getInstance.NULL_OBJECT;
   end getKey;

   function toString (This : in out ImageArrayRotationAnimationCacheable) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end toString;

end org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;



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


with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package; use org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimation_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   procedure Initialize_Fields (This : in out ImageArrayRotationAnimationCacheable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageArrayRotationAnimationCacheable'Class; anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        AdjustedImageArrayRotationAnimation_Package.Initialize (This, ImageArrayRotationAnimationInfo_Access (anyType).getImageArray, ImageArrayRotationAnimationInfo_Access (anyType).getAngleInfoP, ImageArrayRotationAnimationInfo_Access (anyType).getTotalAngle, ImageArrayRotationAnimationInfo_Access (anyType).getDx, ImageArrayRotationAnimationInfo_Access (anyType).getDy, animationBehavior);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayRotationAnimationCacheable_Access is
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



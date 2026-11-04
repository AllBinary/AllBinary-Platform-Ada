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


with android.graphics.Matrix_Package; use android.graphics.Matrix_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.AndroidImageUtil_Package; use org.allbinary.media.image.AndroidImageUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;

package body org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package is

   subtype Matrix_Access is android.graphics.Matrix_Package_References.Matrix_Access;
   function "=" (Left, Right : Matrix_Access) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array;
   function "=" (Left, Right : Matrix_Access_Array) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access;
   function "=" (Left, Right : Matrix_Access_Array_Access) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array;
   function "=" (Left, Right : Matrix_Access_Array_Access_Array) return Boolean renames android.graphics.Matrix_Package_References."=";
   subtype Matrix_Access_Array_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Matrix_Access_Array_Access_Array_Access) return Boolean renames android.graphics.Matrix_Package_References."=";
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   function "=" (Left, Right : AngleInfo_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AndroidImageUtil_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access;
   function "=" (Left, Right : AndroidImageUtil_Access) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array;
   function "=" (Left, Right : AndroidImageUtil_Access_Array) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access;
   function "=" (Left, Right : AndroidImageUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array_Access_Array is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   function "=" (Left, Right : ImageModifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryFlickerAndroidImageRotationAnimation'Class) is
   begin
      null;
      This.imageModifierUtil := ImageModifierUtil_Package.getInstanceOrCreate;
      This.androidImageUtil := AndroidImageUtil_Package.getInstance;
      This.matrix := Matrix_Package.Create;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryFlickerAndroidImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.originalImage := originalImage;
        This.halfWidth := (Java_Shift_Right_Arithmetic (image.getWidth, 1));
        This.halfHeight := (Java_Shift_Right_Arithmetic (image.getHeight, 1));
        This.increment := (This.angleInfo.getAngleIncrementInfo.getAngleIncrement);
   end Initialize;

   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryFlickerAndroidImageRotationAnimation_Access is
      This : constant AllBinaryFlickerAndroidImageRotationAnimation_Access := new AllBinaryFlickerAndroidImageRotationAnimation;
   begin
      AllBinaryFlickerAndroidImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out AllBinaryFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((AllBinaryFlickerAndroidImageRotationAnimation'Class (This).getBasicColorP) = (null)) or else ((AllBinaryFlickerAndroidImageRotationAnimation'Class (This).getBasicColorP.intValue) /= (basicColor.intValue)) then
            This.imageModifierUtil.setColor (This.originalImage, AllBinaryFlickerAndroidImageRotationAnimation'Class (This).getImage, 0, basicColor);
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.matrix.setRotate (0.0, Float (This.halfWidth), Float (This.halfHeight));
            AllBinaryFlickerAndroidImageRotationAnimation'Class (This).updateImage;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out AllBinaryFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        AllBinaryFlickerAndroidImageRotationAnimation'Class (This).setBasicColorP (basicColor);
   end changeBasicColor;

   procedure setAlpha (This : in out AllBinaryFlickerAndroidImageRotationAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setAlpha (alpha);
        This.imageModifierUtil.setAlpha (This.originalImage, AllBinaryFlickerAndroidImageRotationAnimation'Class (This).getImage, 0, This.alphaP);
        if changed then
            This.matrix.setRotate (0.0, Float (This.halfWidth), Float (This.halfHeight));
            AllBinaryFlickerAndroidImageRotationAnimation'Class (This).updateImage;
        end if;
   end setAlpha;

   procedure nextRotation (This : in out AllBinaryFlickerAndroidImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).nextRotation;
        This.matrix.setRotate (Float (This.increment), Float (This.halfWidth), Float (This.halfHeight));
        AllBinaryFlickerAndroidImageRotationAnimation'Class (This).updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryFlickerAndroidImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).previousRotation;
        This.matrix.setRotate (Float (-(This.increment)), Float (This.halfWidth), Float (This.halfHeight));
        AllBinaryFlickerAndroidImageRotationAnimation'Class (This).updateImage;
   end previousRotation;

   procedure updateImage (This : in out AllBinaryFlickerAndroidImageRotationAnimation) is
   begin
        This.androidImageUtil.rotate (AllBinaryFlickerAndroidImageRotationAnimation'Class (This).getImage, This.originalImage, This.matrix, This.imageModifierUtil.paint);
   end updateImage;

   procedure setFrame (This : in out AllBinaryFlickerAndroidImageRotationAnimation; index : Integer) is
      currentFrame : Integer;
      newFrame : Integer;
   begin
        currentFrame := This.circularIndexUtil.getIndex;
        This.circularIndexUtil.setIndex (index);
        newFrame := This.circularIndexUtil.getIndex;
        This.angleInfo.adjustAngle (newFrame);
        This.matrix.setRotate ((Float (((newFrame) - (currentFrame)))) * (Float (This.increment)), Float (This.halfWidth), Float (This.halfHeight));
        AllBinaryFlickerAndroidImageRotationAnimation'Class (This).updateImage;
   end setFrame;

end org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;



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
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.animation.image.AlphaBaseProcessor_Package;

package body org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package is

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
   procedure Initialize_Fields (This : in out AllBinaryAdjustedHTMLImageRotationAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryAdjustedHTMLImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        AllBinaryHTMLImageRotationAnimation_Package.Initialize (This, originalImage, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        AllBinaryAdjustedHTMLImageRotationAnimation'Class (This).init (dx, dy);
   end Initialize;

   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryAdjustedHTMLImageRotationAnimation_Access is
      This : constant AllBinaryAdjustedHTMLImageRotationAnimation_Access := new AllBinaryAdjustedHTMLImageRotationAnimation;
   begin
      AllBinaryAdjustedHTMLImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; dx : Integer; dy : Integer) is
   begin
        This.dx := dx;
        This.dy := dy;
   end init;

   procedure setDx (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out AllBinaryAdjustedHTMLImageRotationAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out AllBinaryAdjustedHTMLImageRotationAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure paintXY (This : in out AllBinaryAdjustedHTMLImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        AllBinaryHTMLImageRotationAnimation_Package.AllBinaryHTMLImageRotationAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

end org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package;



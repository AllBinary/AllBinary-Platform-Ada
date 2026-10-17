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


package body org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        AllBinaryJ2SEImageRotationAnimation_Package.Initialize (This, originalImage, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access is
      This : constant AllBinaryAdjustedJ2SEImageRotationAnimation_Access := new AllBinaryAdjustedJ2SEImageRotationAnimation;
   begin
      AllBinaryAdjustedJ2SEImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dx : Integer; dy : Integer) is
   begin
        This.dx := dx;
        This.dy := dy;
   end init;

   procedure setDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure paintXY (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        AllBinaryJ2SEImageRotationAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

end org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package;



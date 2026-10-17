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


package body org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinaryAdjustedAndroidImageRotationAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryAdjustedAndroidImageRotationAnimation'Class; originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        AllBinaryFlickerAndroidImageRotationAnimation_Package.Initialize (This, originalImage, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryAdjustedAndroidImageRotationAnimation_Access is
      This : constant AllBinaryAdjustedAndroidImageRotationAnimation_Access := new AllBinaryAdjustedAndroidImageRotationAnimation;
   begin
      Initialize (This.all, originalImage, image, angleInfo, totalAngle, dx, dy, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; dx : Integer; dy : Integer) is
   begin
        This.dx := dx;
        This.dy := dy;
   end init;

   procedure setDx (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out AllBinaryAdjustedAndroidImageRotationAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out AllBinaryAdjustedAndroidImageRotationAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure paintXY (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        AllBinaryFlickerAndroidImageRotationAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

   procedure getDx (This : in out AllBinaryAdjustedAndroidImageRotationAnimation) is
      Java_Result : constant Integer := AllBinaryAdjustedAndroidImageRotationAnimation'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out AllBinaryAdjustedAndroidImageRotationAnimation) is
      Java_Result : constant Integer := AllBinaryAdjustedAndroidImageRotationAnimation'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

end org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package;



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


package body org.allbinary.animation.image.AdjustedImageBaseRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedImageBaseRotationAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedImageBaseRotationAnimation'Class; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageBaseRotationAnimation_Access is
      This : constant AdjustedImageBaseRotationAnimation_Access := new AdjustedImageBaseRotationAnimation;
   begin
      Initialize (This.all, image, angleInfo, totalAngle, dx, dy, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedImageBaseRotationAnimation; dx : Integer; dy : Integer) is
   begin
        This.dx := dx;
        This.dy := dy;
   end init;

   procedure paintXY (This : in out AdjustedImageBaseRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        ImageBaseRotationAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

end org.allbinary.animation.image.AdjustedImageBaseRotationAnimation_Package;



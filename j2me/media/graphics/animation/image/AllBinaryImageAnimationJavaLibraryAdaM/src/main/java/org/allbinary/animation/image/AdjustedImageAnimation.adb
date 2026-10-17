-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.animation.image.AdjustedImageAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedImageAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedImageAnimation'Class; image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageAnimation_Package.Initialize (This, image, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (image : Image_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedImageAnimation_Access is
      This : constant AdjustedImageAnimation_Access := new AdjustedImageAnimation;
   begin
      AdjustedImageAnimation_Package.Initialize (This.all, image, dx, dy, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedImageAnimation; dx : Integer; dy : Integer) is
   begin
        This.setDx (dx);
        This.setDy (dy);
   end init;

   procedure paintXY (This : in out AdjustedImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        ImageAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

   procedure setDx (This : in out AdjustedImageAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out AdjustedImageAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out AdjustedImageAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out AdjustedImageAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

end org.allbinary.animation.image.AdjustedImageAnimation_Package;



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


   procedure Initialize (This : in out AdjustedImageAnimation'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageAnimation_Package.Initialize (This, image, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AdjustedImageAnimation_Access is
      This : constant AdjustedImageAnimation_Access := new AdjustedImageAnimation;
   begin
      AdjustedImageAnimation_Package.Initialize (This.all, image_Param, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedImageAnimation; dx : Integer; dy : Integer) is
   begin
        This.setDx (dx);
        This.setDy (dy);
   end init;

   procedure paintXY (This : in out AdjustedImageAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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



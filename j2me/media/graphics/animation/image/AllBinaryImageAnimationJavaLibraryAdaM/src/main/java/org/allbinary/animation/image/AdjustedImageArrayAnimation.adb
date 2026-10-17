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


package body org.allbinary.animation.image.AdjustedImageArrayAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedImageArrayAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedImageArrayAnimation'Class; imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior'Class) is
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageArrayAnimation_Package.Initialize (This, imageArray, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior'Class) return AdjustedImageArrayAnimation_Access is
      This : constant AdjustedImageArrayAnimation_Access := new AdjustedImageArrayAnimation;
   begin
      AdjustedImageArrayAnimation_Package.Initialize (This.all, imageArray, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedImageArrayAnimation; dx : Integer; dy : Integer) is
   begin
        This.setDx (dx);
        This.setDy (dy);
   end init;

   procedure paintXY (This : in out AdjustedImageArrayAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        ImageArrayAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

   procedure setDx (This : in out AdjustedImageArrayAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDx (This : in out AdjustedImageArrayAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDy (This : in out AdjustedImageArrayAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   function getDy (This : in out AdjustedImageArrayAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

end org.allbinary.animation.image.AdjustedImageArrayAnimation_Package;



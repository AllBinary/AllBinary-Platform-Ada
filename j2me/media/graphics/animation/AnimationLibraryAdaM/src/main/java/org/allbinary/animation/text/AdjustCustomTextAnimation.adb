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


package body org.allbinary.animation.text.AdjustCustomTextAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustCustomTextAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustCustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior'Class) is
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        CustomTextAnimation_Package.Initialize (This, text, fontSize, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior'Class) return AdjustCustomTextAnimation_Access is
      This : constant AdjustCustomTextAnimation_Access := new AdjustCustomTextAnimation;
   begin
      AdjustCustomTextAnimation_Package.Initialize (This.all, text, fontSize, dx, dy, animationBehavior_Param);
      return This;
   end Create;

   function getDx (This : in out AdjustCustomTextAnimation) return Integer is
   begin
        return This.dx;
   end getDx;

   procedure setDx (This : in out AdjustCustomTextAnimation; dx : Integer) is
   begin
        This.dx := dx;
   end setDx;

   function getDy (This : in out AdjustCustomTextAnimation) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure setDy (This : in out AdjustCustomTextAnimation; dy : Integer) is
   begin
        This.dy := dy;
   end setDy;

   procedure paintXY (This : in out AdjustCustomTextAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        CustomTextAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

end org.allbinary.animation.text.AdjustCustomTextAnimation_Package;



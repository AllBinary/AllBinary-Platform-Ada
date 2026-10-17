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


   procedure Initialize (This : in out AdjustCustomTextAnimation'Class; text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        CustomTextAnimation_Package.Initialize (This, text, fontSize, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (text : Unbounded_String; fontSize : Integer; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustCustomTextAnimation_Access is
      This : constant AdjustCustomTextAnimation_Access := new AdjustCustomTextAnimation;
   begin
      Initialize (This.all, text, fontSize, dx, dy, animationBehavior);
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

   procedure paintXY (This : in out AdjustCustomTextAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        CustomTextAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

   procedure getDx (This : in out AdjustCustomTextAnimation) is
      Java_Result : constant Integer := AdjustCustomTextAnimation'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out AdjustCustomTextAnimation) is
      Java_Result : constant Integer := AdjustCustomTextAnimation'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

end org.allbinary.animation.text.AdjustCustomTextAnimation_Package;



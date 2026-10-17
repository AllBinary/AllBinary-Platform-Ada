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


package body org.allbinary.animation.ColorLessVectorAnimation_Package is

   procedure Initialize_Fields (This : in out ColorLessVectorAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorLessVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        VectorAnimation_Package.Initialize (This, currentPoints, BasicColorFactory_Package.getInstance.WHITE, animationBehavior);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ColorLessVectorAnimation_Access is
      This : constant ColorLessVectorAnimation_Access := new ColorLessVectorAnimation;
   begin
      ColorLessVectorAnimation_Package.Initialize (This.all, currentPoints, animationBehavior_Param);
      return This;
   end Create;

   procedure paintXY (This : in out ColorLessVectorAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintVectors (graphics, x, y);
   end paintXY;

end org.allbinary.animation.ColorLessVectorAnimation_Package;



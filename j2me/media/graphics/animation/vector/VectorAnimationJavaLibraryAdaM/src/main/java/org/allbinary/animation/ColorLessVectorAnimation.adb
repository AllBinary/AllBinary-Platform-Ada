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


   procedure Initialize (This : in out ColorLessVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        VectorAnimation_Package.Initialize (This, currentPoints, BasicColorFactory_Package.getInstance.WHITE, animationBehavior);
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return ColorLessVectorAnimation_Access is
      This : constant ColorLessVectorAnimation_Access := new ColorLessVectorAnimation;
   begin
      Initialize (This.all, currentPoints, animationBehavior);
      return This;
   end Create;

   procedure paintXY (This : in out ColorLessVectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        This.paintVectors (graphics, x, y);
   end paintXY;

end org.allbinary.animation.ColorLessVectorAnimation_Package;



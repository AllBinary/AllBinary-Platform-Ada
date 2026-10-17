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


package body org.allbinary.animation.AdjustedVectorAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedVectorAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        VectorAnimation_Package.Initialize (This, currentPoints, basicColor, animationBehavior);
        Initialize_Fields (This);
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor : BasicColor_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedVectorAnimation_Access is
      This : constant AdjustedVectorAnimation_Access := new AdjustedVectorAnimation;
   begin
      AdjustedVectorAnimation_Package.Initialize (This.all, currentPoints, basicColor, dx, dy, animationBehavior);
      return This;
   end Create;

   procedure paintXY (This : in out AdjustedVectorAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        VectorAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

end org.allbinary.animation.AdjustedVectorAnimation_Package;



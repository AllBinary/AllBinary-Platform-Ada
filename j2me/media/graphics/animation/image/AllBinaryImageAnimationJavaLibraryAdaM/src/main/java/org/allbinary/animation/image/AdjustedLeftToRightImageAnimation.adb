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


package body org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package is

   procedure Initialize_Fields (This : in out AdjustedLeftToRightImageAnimation'Class) is
   begin
      null;
      This.dx := 0;
      This.dy := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AdjustedLeftToRightImageAnimation'Class; image : Image_Access; sequenceArray : Integer_Array_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        LeftToRightImageAnimation_Package.Initialize (This, image, sequenceArray, animationBehavior);
        Initialize_Fields (This);
        This.init (dx, dy);
   end Initialize;

   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; dx : Integer; dy : Integer; animationBehavior : AnimationBehavior_Access) return AdjustedLeftToRightImageAnimation_Access is
      This : constant AdjustedLeftToRightImageAnimation_Access := new AdjustedLeftToRightImageAnimation;
   begin
      AdjustedLeftToRightImageAnimation_Package.Initialize (This.all, image, sequenceArray, dx, dy, animationBehavior);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AdjustedLeftToRightImageAnimation; dx : Integer; dy : Integer) is
   begin
        This.dx := dx;
        This.dy := dy;
   end init;

   procedure paintXY (This : in out AdjustedLeftToRightImageAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        LeftToRightImageAnimation (This).paintXY (graphics, (x) + (This.dx), (y) + (This.dy));
   end paintXY;

end org.allbinary.animation.image.AdjustedLeftToRightImageAnimation_Package;



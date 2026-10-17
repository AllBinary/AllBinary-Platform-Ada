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


package body org.allbinary.graphics.paint.AnimationCompositePaintable_Package is

   procedure Initialize_Fields (This : in out AnimationCompositePaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AnimationCompositePaintable'Class; animationInterface : Animation_Access) is
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.animationInterface := animationInterface;
   end Initialize;

   function Create (animationInterface : Animation_Access) return AnimationCompositePaintable_Access is
      This : constant AnimationCompositePaintable_Access := new AnimationCompositePaintable;
   begin
      Initialize (This.all, animationInterface);
      return This;
   end Create;

   procedure paint (This : in out AnimationCompositePaintable; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintXY (graphics, 0, 0);
   end paint;

   procedure paintThreed (This : in out AnimationCompositePaintable; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

end org.allbinary.graphics.paint.AnimationCompositePaintable_Package;



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


with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.animation.image.RightToLeftImageAnimation_Package; use org.allbinary.animation.image.RightToLeftImageAnimation_Package;
with org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package; use org.allbinary.animation.image.AdjustedRightToLeftImageAnimation_Package;

package body org.allbinary.animation.image.RightToLeftImageAnimationFactory_Package is

   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out RightToLeftImageAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RightToLeftImageAnimationFactory'Class; image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, image.getWidth, image.getHeight, dx, dy, animationBehaviorFactory);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return RightToLeftImageAnimationFactory_Access is
      This : constant RightToLeftImageAnimationFactory_Access := new RightToLeftImageAnimationFactory;
   begin
      RightToLeftImageAnimationFactory_Package.Initialize (This.all, image_Param, dx, dy, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out RightToLeftImageAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (RightToLeftImageAnimationFactory'Class (This).getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (RightToLeftImageAnimationFactory_Access'(This'Unchecked_Access));
            return Animation_Access (AdjustedRightToLeftImageAnimation_Package.Create (scaledImage, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (RightToLeftImageAnimation_Package.Create (scaledImage, This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   procedure getInstance (This : in out RightToLeftImageAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := RightToLeftImageAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.RightToLeftImageAnimationFactory_Package;



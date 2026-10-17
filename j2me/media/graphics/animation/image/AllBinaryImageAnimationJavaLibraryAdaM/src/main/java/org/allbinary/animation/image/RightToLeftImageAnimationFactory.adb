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


package body org.allbinary.animation.image.RightToLeftImageAnimationFactory_Package is

   procedure Initialize_Fields (This : in out RightToLeftImageAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RightToLeftImageAnimationFactory'Class; image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, image.getWidth, image.getHeight, dx, dy, animationBehaviorFactory);
   end Initialize;

   function Create (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return RightToLeftImageAnimationFactory_Access is
      This : constant RightToLeftImageAnimationFactory_Access := new RightToLeftImageAnimationFactory;
   begin
      Initialize (This.all, image, dx, dy, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out RightToLeftImageAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (This'Unchecked_Access);
            return AdjustedRightToLeftImageAnimation_Package.Create (scaledImage, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return RightToLeftImageAnimation_Package.Create (scaledImage, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   procedure getInstance (This : in out RightToLeftImageAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := RightToLeftImageAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.RightToLeftImageAnimationFactory_Package;



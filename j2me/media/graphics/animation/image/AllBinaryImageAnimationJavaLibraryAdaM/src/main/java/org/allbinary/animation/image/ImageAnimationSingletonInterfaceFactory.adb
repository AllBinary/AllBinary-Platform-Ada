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


package body org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out ImageAnimationSingletonInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageAnimationSingletonInterfaceFactory'Class; animationInterface : Animation_Access; width : Integer; height : Integer) is
   begin
        SingletonAnimationInterfaceFactory_Package.Initialize (This, ImageAnimation_Package.Create (AnimationFrameToImageUtil_Package.getInstance.getInstanceWH (width, height, animationInterface), AnimationBehavior_Package.getInstance));
   end Initialize;

   function Create (animationInterface : Animation_Access; width : Integer; height : Integer) return ImageAnimationSingletonInterfaceFactory_Access is
      This : constant ImageAnimationSingletonInterfaceFactory_Access := new ImageAnimationSingletonInterfaceFactory;
   begin
      ImageAnimationSingletonInterfaceFactory_Package.Initialize (This.all, animationInterface, width, height);
      return This;
   end Create;

end org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package;



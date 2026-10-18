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


with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;

package body org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package is

   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   procedure Initialize_Fields (This : in out LazyImageRotationAnimationFactory'Class) is
   begin
      null;
      
      
      This.scaleProperties := ScaleProperties_Package.instance;
   end Initialize_Fields;


   procedure Initialize (This : in out LazyImageRotationAnimationFactory'Class; layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class) is
      animationInterfaceFactoryInterface : constant BaseImageAnimationFactory_Access := BaseImageAnimationFactory_Access (animationInterfaceFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.layoutIndex := layoutIndex;
        This.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        ImageCacheFactory_Package.getInstance.hasAnyLazyAnimationFactories := True;
        if (This.animationInterfaceFactoryInterface.animationBehaviorFactory) = (AnimationBehaviorFactory_Package.getInstance) then
            ForcedLogUtil_Package.log (To_Unbounded_String ("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), LazyImageRotationAnimationFactory_Access'(This'Unchecked_Access));
        end if;
   end Initialize;

   function Create (layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class) return LazyImageRotationAnimationFactory_Access is
      This : constant LazyImageRotationAnimationFactory_Access := new LazyImageRotationAnimationFactory;
   begin
      LazyImageRotationAnimationFactory_Package.Initialize (This.all, layoutIndex, associatedLazyAnimationId, animationInterfaceFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out LazyImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        if This.animationInterfaceFactoryInterface.getImage.isReady then
            This.animationInterfaceFactoryInterface.setInitialScale (This.scaleProperties);
            return This.animationInterfaceFactoryInterface.getInstance (instanceId);
        else
            return Animation_Access (LazyImageRotationAnimation_Package.Create (This.layoutIndex, instanceId, This.scaleProperties, This.animationInterfaceFactoryInterface, This.animationInterfaceFactoryInterface.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   procedure setInitialScale (This : in out LazyImageRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        This.scaleProperties := scaleProperties;
   end setInitialScale;

   procedure getInstance (This : in out LazyImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := LazyImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package;



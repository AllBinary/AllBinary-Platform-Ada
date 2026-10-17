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


package body org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out LazyImageRotationAnimationFactory'Class) is
   begin
      null;
      
      
      This.scaleProperties := ScaleProperties_Package.instance;
   end Initialize_Fields;


   procedure Initialize (This : in out LazyImageRotationAnimationFactory'Class; layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory'Class) is
      animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access := BaseImageAnimationFactory_Access (animationInterfaceFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.layoutIndex := layoutIndex;
        This.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        ImageCacheFactory_Package.getInstance.hasAnyLazyAnimationFactories := True;
        if (This.animationInterfaceFactoryInterface.animationBehaviorFactory) = (AnimationBehaviorFactory_Package.getInstance) then
            ForcedLogUtil_Package.log (To_Unbounded_String ("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), LazyImageRotationAnimationFactory_Access'(This'Unchecked_Access));
        end if;
   end Initialize;

   function Create (layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory'Class) return LazyImageRotationAnimationFactory_Access is
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
            return LazyImageRotationAnimation_Package.Create (This.layoutIndex, instanceId, This.scaleProperties, This.animationInterfaceFactoryInterface, This.animationInterfaceFactoryInterface.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   procedure setInitialScale (This : in out LazyImageRotationAnimationFactory; scaleProperties_Param : access ScaleProperties'Class) is
      scaleProperties : ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
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



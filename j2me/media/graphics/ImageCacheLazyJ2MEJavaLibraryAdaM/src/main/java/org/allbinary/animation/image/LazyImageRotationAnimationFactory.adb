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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package; use org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package; use org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.thread.BaseImageLoadingProcessor_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.game.gd.resource.GDResources_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.canvas.GameGlobalsFactory_Package;
with org.allbinary.image.ImageCache_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.image.LazyImageRotationAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package is

   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype BaseImageAnimationFactory_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   subtype BaseImageAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseImageAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.BaseImageAnimationFactory_Package_References."=";
   procedure Initialize_Fields (This : in out LazyImageRotationAnimationFactory'Class) is
   begin
      null;
      
      
      This.scaleProperties := ScaleProperties_Access (ScaleProperties_Package.instance);
   end Initialize_Fields;


   procedure Initialize (This : in out LazyImageRotationAnimationFactory'Class; layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class) is
      animationInterfaceFactoryInterface : constant BaseImageAnimationFactory_Access := BaseImageAnimationFactory_Access (animationInterfaceFactoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.layoutIndex := layoutIndex;
        This.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        ImageCacheFactory_Package.getInstance.hasAnyLazyAnimationFactories := True;
        if (Java_Object_Access (This.animationInterfaceFactoryInterface.animationBehaviorFactory)) = (Java_Object_Access (AnimationBehaviorFactory_Package.getInstance)) then
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
      Java_Result : constant Animation_Access := LazyImageRotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package;



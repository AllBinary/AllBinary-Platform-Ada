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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.animation.compound.CompoundIndexedAnimation_Package; use org.allbinary.animation.compound.CompoundIndexedAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.animation.compound.CompoundAnimationInterface_Package;
with org.allbinary.animation.compound.CompoundIndexedAnimation_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.SequenceInterface_Package;
with org.allbinary.animation.SequentialAnimationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package is

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
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   procedure Initialize_Fields (This : in out CompoundIndexedAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundIndexedAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        CompoundAnimationInterfaceFactory_Package.Initialize (This, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CompoundIndexedAnimationInterfaceFactory_Access is
      This : constant CompoundIndexedAnimationInterfaceFactory_Access := new CompoundIndexedAnimationInterfaceFactory;
   begin
      CompoundIndexedAnimationInterfaceFactory_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_Param);
      return This;
   end Create;

   function createArray (This : in out CompoundIndexedAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access is
   begin
        return new Animation_Access_Array'(0 .. (size) - 1 => null);
   end createArray;

   function createAnimation (This : in out CompoundIndexedAnimationInterfaceFactory; animationArray : Animation_Access_Array_Access) return Animation_Access is
   begin
        return Animation_Access (CompoundIndexedAnimation_Package.Create (animationArray, This.animationBehaviorFactory.getOrCreateInstance));
   end createAnimation;

   procedure createArray (This : in out CompoundIndexedAnimationInterfaceFactory; size : Integer) is
      Java_Result : constant Animation_Access_Array_Access := CompoundIndexedAnimationInterfaceFactory'Class (This).createArray (size => size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createArray;

   procedure createAnimation (This : in out CompoundIndexedAnimationInterfaceFactory; animationArray : Animation_Access_Array_Access) is
      Java_Result : constant Animation_Access := CompoundIndexedAnimationInterfaceFactory'Class (This).createAnimation (animationArray => animationArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package;



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
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;

package body org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package is

   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
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
   procedure Initialize_Fields (This : in out CompoundAnimationInterfaceFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.basicAnimationInterfaceFactoryInterfaceArrayP := basicAnimationInterfaceFactoryInterfaceArray;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CompoundAnimationInterfaceFactory_Access is
      This : constant CompoundAnimationInterfaceFactory_Access := new CompoundAnimationInterfaceFactory;
   begin
      CompoundAnimationInterfaceFactory_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out CompoundAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
      size : Integer;
      animationInterfaceArray : Animation_Access_Array_Access;
      index : Integer;
   begin
        size := This.basicAnimationInterfaceFactoryInterfaceArrayP'Length;
        animationInterfaceArray := CompoundAnimationInterfaceFactory'Class (This).createArray (size);
        for index in 0 .. (size) - 1 loop
            animationInterfaceArray (index) := This.basicAnimationInterfaceFactoryInterfaceArrayP (index).getInstance (instanceId);
        end loop;
        return CompoundAnimationInterfaceFactory'Class (This).createAnimation (animationInterfaceArray);
   end getInstance;

   function createArray (This : in out CompoundAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.EMPTY_ARRAY;
   end createArray;

   function createAnimation (This : in out CompoundAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end createAnimation;

   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out CompoundAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access is
   begin
        return This.basicAnimationInterfaceFactoryInterfaceArrayP;
   end getBasicAnimationInterfaceFactoryInterfaceArray;

   procedure setInitialScale (This : in out CompoundAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
      size : Integer;
      index : Integer;
   begin
        size := This.basicAnimationInterfaceFactoryInterfaceArrayP'Length;
        for index in 0 .. (size) - 1 loop
            This.basicAnimationInterfaceFactoryInterfaceArrayP (index).setInitialScale (scaleProperties);
        end loop;
   end setInitialScale;

   procedure getInstance (This : in out CompoundAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := CompoundAnimationInterfaceFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createArray (This : in out CompoundAnimationInterfaceFactory; size : Integer) is
      Java_Result : constant Animation_Access_Array_Access := CompoundAnimationInterfaceFactory'Class (This).createArray (size => size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createArray;

   procedure createAnimation (This : in out CompoundAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) is
      Java_Result : constant Animation_Access := CompoundAnimationInterfaceFactory'Class (This).createAnimation (animationInterfaceArray => animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;



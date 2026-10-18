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


with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.compound.AutoCompoundRotationAnimation_Package; use org.allbinary.animation.compound.AutoCompoundRotationAnimation_Package;

package body org.allbinary.animation.compound.AutoCompoundRotationAnimationInterfaceFactory_Package is

   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   procedure Initialize_Fields (This : in out AutoCompoundRotationAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AutoCompoundRotationAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        CompoundAnimationInterfaceFactory_Package.Initialize (This, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AutoCompoundRotationAnimationInterfaceFactory_Access is
      This : constant AutoCompoundRotationAnimationInterfaceFactory_Access := new AutoCompoundRotationAnimationInterfaceFactory;
   begin
      AutoCompoundRotationAnimationInterfaceFactory_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_Param);
      return This;
   end Create;

   function createArray (This : in out AutoCompoundRotationAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access is
   begin
        return new RotationAnimation_Access_Array'(0 .. (size) - 1 => null);
   end createArray;

   function createAnimation (This : in out AutoCompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access is
   begin
        return Animation_Access (AutoCompoundRotationAnimation_Package.Create (RotationAnimation_Access_Array_Access (animationInterfaceArray), This.animationBehaviorFactory.getOrCreateInstance));
   end createAnimation;

   procedure createArray (This : in out AutoCompoundRotationAnimationInterfaceFactory; size : Integer) is
      Java_Result : constant Animation_Access_Array_Access := AutoCompoundRotationAnimationInterfaceFactory'Class (This).createArray (size => size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createArray;

   procedure createAnimation (This : in out AutoCompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) is
      Java_Result : constant Animation_Access := AutoCompoundRotationAnimationInterfaceFactory'Class (This).createAnimation (animationInterfaceArray => animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.compound.AutoCompoundRotationAnimationInterfaceFactory_Package;



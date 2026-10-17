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


package body org.allbinary.animation.compound.AutoCompoundRotationAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out AutoCompoundRotationAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AutoCompoundRotationAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        CompoundAnimationInterfaceFactory_Package.Initialize (This, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AutoCompoundRotationAnimationInterfaceFactory_Access is
      This : constant AutoCompoundRotationAnimationInterfaceFactory_Access := new AutoCompoundRotationAnimationInterfaceFactory;
   begin
      Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
      return This;
   end Create;

   function createArray (This : in out AutoCompoundRotationAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access is
   begin
        return new RotationAnimation_Access_Array'(0 .. (size) - 1 => null);
   end createArray;

   function createAnimation (This : in out AutoCompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access is
   begin
        return AutoCompoundRotationAnimation_Package.Create (RotationAnimation_Access_Array_Access (animationInterfaceArray), This.animationBehaviorFactory.getOrCreateInstance);
   end createAnimation;

   procedure createArray (This : in out AutoCompoundRotationAnimationInterfaceFactory; size : Integer) is
      Java_Result : constant Animation_Access_Array_Access := AutoCompoundRotationAnimationInterfaceFactory'Class (This).createArray (size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createArray;

   procedure createAnimation (This : in out AutoCompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) is
      Java_Result : constant Animation_Access := AutoCompoundRotationAnimationInterfaceFactory'Class (This).createAnimation (animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.compound.AutoCompoundRotationAnimationInterfaceFactory_Package;



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


package body org.allbinary.animation.compound.SimultaneousCompoundRotationAnimationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out SimultaneousCompoundRotationAnimationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SimultaneousCompoundRotationAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        CompoundAnimationInterfaceFactory_Package.Initialize (This, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
        if (animationBehaviorFactory) = (AnimationBehaviorFactory_Package.getInstance) then
            ForcedLogUtil_Package.log (To_Unbounded_String ("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), SimultaneousCompoundRotationAnimationInterfaceFactory_Access'(This'Unchecked_Access));
        end if;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return SimultaneousCompoundRotationAnimationInterfaceFactory_Access is
      This : constant SimultaneousCompoundRotationAnimationInterfaceFactory_Access := new SimultaneousCompoundRotationAnimationInterfaceFactory;
   begin
      SimultaneousCompoundRotationAnimationInterfaceFactory_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_Param);
      return This;
   end Create;

   function createArray (This : in out SimultaneousCompoundRotationAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access is
   begin
        return new RotationAnimation_Access_Array'(0 .. (size) - 1 => null);
   end createArray;

   function createAnimation (This : in out SimultaneousCompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access is
   begin
        return SimultaneousCompoundRotationAnimation_Package.Create (RotationAnimation_Access_Array_Access (animationInterfaceArray), This.animationBehaviorFactory.getOrCreateInstance);
   end createAnimation;

   procedure createArray (This : in out SimultaneousCompoundRotationAnimationInterfaceFactory; size : Integer) is
      Java_Result : constant Animation_Access_Array_Access := SimultaneousCompoundRotationAnimationInterfaceFactory'Class (This).createArray (size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createArray;

   procedure createAnimation (This : in out SimultaneousCompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) is
      Java_Result : constant Animation_Access := SimultaneousCompoundRotationAnimationInterfaceFactory'Class (This).createAnimation (animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAnimation;

end org.allbinary.animation.compound.SimultaneousCompoundRotationAnimationInterfaceFactory_Package;



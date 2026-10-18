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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package; use org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;

package org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;

   type CompoundIndexedAnimationInterfaceFactory is tagged;
   type CompoundIndexedAnimationInterfaceFactory_Access is access all CompoundIndexedAnimationInterfaceFactory'Class;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array is array (Natural range <>) of CompoundIndexedAnimationInterfaceFactory_Access;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access is access all CompoundIndexedAnimationInterfaceFactory_Access_Array;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of CompoundIndexedAnimationInterfaceFactory_Access_Array_Access;
   type CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all CompoundIndexedAnimationInterfaceFactory_Access_Array_Access_Array;

   type CompoundIndexedAnimationInterfaceFactory is new CompoundAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out CompoundIndexedAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return CompoundIndexedAnimationInterfaceFactory_Access;
   function createArray (This : in out CompoundIndexedAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access;
   procedure createArray (This : in out CompoundIndexedAnimationInterfaceFactory; size : Integer);
   function createAnimation (This : in out CompoundIndexedAnimationInterfaceFactory; animationArray : Animation_Access_Array_Access) return Animation_Access;
   procedure createAnimation (This : in out CompoundIndexedAnimationInterfaceFactory; animationArray : Animation_Access_Array_Access);

end org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory_Package;



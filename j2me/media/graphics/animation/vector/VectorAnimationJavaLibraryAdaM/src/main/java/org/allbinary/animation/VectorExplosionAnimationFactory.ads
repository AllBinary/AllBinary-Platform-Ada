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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package; use org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.VectorExplosionAnimationFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type VectorExplosionAnimationFactory is tagged;
   type VectorExplosionAnimationFactory_Access is access all VectorExplosionAnimationFactory'Class;
   type VectorExplosionAnimationFactory_Access_Array is array (Natural range <>) of VectorExplosionAnimationFactory_Access;
   type VectorExplosionAnimationFactory_Access_Array_Access is access all VectorExplosionAnimationFactory_Access_Array;
   type VectorExplosionAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of VectorExplosionAnimationFactory_Access_Array_Access;
   type VectorExplosionAnimationFactory_Access_Array_Access_Array_Access is access all VectorExplosionAnimationFactory_Access_Array_Access_Array;

   type VectorExplosionAnimationFactory is new Java_Object and ProceduralAnimationInterfaceFactoryInterface with record
      vectorExplosionGenerator : VectorExplosionGenerator_Access;
      basicColor : BasicColor_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out VectorExplosionAnimationFactory'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorExplosionAnimationFactory_Access;
   function getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out VectorExplosionAnimationFactory; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure setBasicColorP (This : in out VectorExplosionAnimationFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out VectorExplosionAnimationFactory) return BasicColor_Access;

end org.allbinary.animation.VectorExplosionAnimationFactory_Package;



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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.vector.VectorInfo_Package; use org.allbinary.vector.VectorInfo_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.VectorAnimationFactoryInterface_Package; use org.allbinary.animation.VectorAnimationFactoryInterface_Package;
with org.allbinary.animation.VectorRotationGenerator_Package; use org.allbinary.animation.VectorRotationGenerator_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package; use org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package VectorInfo_Package renames Standard.org.allbinary.vector.VectorInfo_Package;

   type IndependentVectorExplosionRotationAnimationFactory is tagged;
   type IndependentVectorExplosionRotationAnimationFactory_Access is access all IndependentVectorExplosionRotationAnimationFactory'Class;
   type IndependentVectorExplosionRotationAnimationFactory_Access_Array is array (Natural range <>) of IndependentVectorExplosionRotationAnimationFactory_Access;
   type IndependentVectorExplosionRotationAnimationFactory_Access_Array_Access is access all IndependentVectorExplosionRotationAnimationFactory_Access_Array;

   type IndependentVectorExplosionRotationAnimationFactory is new ProceduralAnimationInterfaceFactoryInterface with record
      framePoints : Integer_Array_Access_Array_Access_Array_Access;
      vectorInfo : VectorInfo_Access;
      basicColor : BasicColor_Access;
      vectorAnimationFactoryInterface : VectorAnimationFactoryInterface_Access;
      vectorExplosionGenerator : VectorExplosionGenerator_Access;
   end record;

   procedure Initialize (This : in out IndependentVectorExplosionRotationAnimationFactory'Class; vectorInfo_Param : access VectorInfo'Class; basicColor_Param : access BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface'Class);
   function Create (vectorInfo_Param : access VectorInfo'Class; basicColor_Param : access BasicColor'Class; vectorAnimationFactoryInterface_Param : access VectorAnimationFactoryInterface'Class) return IndependentVectorExplosionRotationAnimationFactory_Access;
   procedure init (This : in out IndependentVectorExplosionRotationAnimationFactory);
   function getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out IndependentVectorExplosionRotationAnimationFactory; animationInterface_Param : access Animation'Class);

end org.allbinary.animation.IndependentVectorExplosionRotationAnimationFactory_Package;



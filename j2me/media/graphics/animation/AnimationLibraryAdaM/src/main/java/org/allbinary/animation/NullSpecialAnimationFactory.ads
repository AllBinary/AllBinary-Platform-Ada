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
with org.allbinary.animation.special.SpecialAnimation_Package; use org.allbinary.animation.special.SpecialAnimation_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.NullSpecialAnimationFactory_Package is

   package SpecialAnimation_Package renames org.allbinary.animation.special.SpecialAnimation_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;

   type NullSpecialAnimationFactory is tagged;
   type NullSpecialAnimationFactory_Access is access all NullSpecialAnimationFactory'Class;
   type NullSpecialAnimationFactory_Access_Array is array (Natural range <>) of NullSpecialAnimationFactory_Access;
   type NullSpecialAnimationFactory_Access_Array_Access is access all NullSpecialAnimationFactory_Access_Array;

   type NullSpecialAnimationFactory is new AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with null record;
   NULL_SPECIAL_ANIMATION_FACTORY : NullSpecialAnimationFactory_Access;

   procedure Initialize (This : in out NullSpecialAnimationFactory'Class);
   function Create return NullSpecialAnimationFactory_Access;
   function getFactoryInstance return NullSpecialAnimationFactory_Access;
   procedure getFactoryInstance;
   function getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out NullSpecialAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface : Animation_Access) return Animation_Access;
   procedure getInstanceAnimation (This : in out NullSpecialAnimationFactory; animationInterface : Animation_Access);
   procedure setInitialScale (This : in out NullSpecialAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.NullSpecialAnimationFactory_Package;



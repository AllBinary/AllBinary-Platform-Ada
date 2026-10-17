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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package; use org.allbinary.animation.compound.CompoundAnimationInterfaceFactory_Package;
with org.allbinary.animation.compound.CompoundRotationAnimation_Package; use org.allbinary.animation.compound.CompoundRotationAnimation_Package;

package org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;

   type CompoundRotationAnimationInterfaceFactory is tagged;
   type CompoundRotationAnimationInterfaceFactory_Access is access all CompoundRotationAnimationInterfaceFactory'Class;
   type CompoundRotationAnimationInterfaceFactory_Access_Array is array (Natural range <>) of CompoundRotationAnimationInterfaceFactory_Access;
   type CompoundRotationAnimationInterfaceFactory_Access_Array_Access is access all CompoundRotationAnimationInterfaceFactory_Access_Array;

   type CompoundRotationAnimationInterfaceFactory is new CompoundAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out CompoundRotationAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return CompoundRotationAnimationInterfaceFactory_Access;
   function createArray (This : in out CompoundRotationAnimationInterfaceFactory; size : Integer) return Animation_Access_Array_Access;
   procedure createArray (This : in out CompoundRotationAnimationInterfaceFactory; size : Integer);
   function createAnimation (This : in out CompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access) return Animation_Access;
   procedure createAnimation (This : in out CompoundRotationAnimationInterfaceFactory; animationInterfaceArray : Animation_Access_Array_Access);

end org.allbinary.animation.compound.CompoundRotationAnimationInterfaceFactory_Package;



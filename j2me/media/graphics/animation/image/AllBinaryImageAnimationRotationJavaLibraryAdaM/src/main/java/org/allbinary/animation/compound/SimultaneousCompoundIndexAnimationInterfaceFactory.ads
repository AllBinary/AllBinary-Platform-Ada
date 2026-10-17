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
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;

package org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package IndexedAnimation_Package renames org.allbinary.animation.IndexedAnimation_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ScaleProperties_Package renames org.allbinary.media.ScaleProperties_Package;

   type SimultaneousCompoundIndexAnimationInterfaceFactory is tagged;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access is access all SimultaneousCompoundIndexAnimationInterfaceFactory'Class;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexAnimationInterfaceFactory_Access;
   type SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array_Access is access all SimultaneousCompoundIndexAnimationInterfaceFactory_Access_Array;

   type SimultaneousCompoundIndexAnimationInterfaceFactory is new AnimationInterfaceFactoryInterface with record
      basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access);
   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access;
   function getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer);
   function getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access) return Animation_Access;
   procedure getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access);
   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access;
   procedure getBasicAnimationInterfaceFactoryInterfaceArray (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory);
   procedure setInitialScale (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package;



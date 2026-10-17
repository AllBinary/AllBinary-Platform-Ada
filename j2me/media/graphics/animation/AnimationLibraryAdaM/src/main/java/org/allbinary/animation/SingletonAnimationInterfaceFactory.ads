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
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.SingletonAnimationInterfaceFactory_Package is

   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type SingletonAnimationInterfaceFactory is tagged;
   type SingletonAnimationInterfaceFactory_Access is access all SingletonAnimationInterfaceFactory'Class;
   type SingletonAnimationInterfaceFactory_Access_Array is array (Natural range <>) of SingletonAnimationInterfaceFactory_Access;
   type SingletonAnimationInterfaceFactory_Access_Array_Access is access all SingletonAnimationInterfaceFactory_Access_Array;

   type SingletonAnimationInterfaceFactory is new AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      animationInterface : Animation_Access;
   end record;

   procedure Initialize (This : in out SingletonAnimationInterfaceFactory'Class; animationInterface_Param : access Animation'Class);
   function Create (animationInterface_Param : access Animation'Class) return SingletonAnimationInterfaceFactory_Access;
   function getInstance (This : in out SingletonAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out SingletonAnimationInterfaceFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out SingletonAnimationInterfaceFactory; animationInterface_Param : access Animation'Class) return Animation_Access;
   procedure getInstanceAnimation (This : in out SingletonAnimationInterfaceFactory; animationInterface_Param : access Animation'Class);
   procedure setInitialScale (This : in out SingletonAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties'Class);

end org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;



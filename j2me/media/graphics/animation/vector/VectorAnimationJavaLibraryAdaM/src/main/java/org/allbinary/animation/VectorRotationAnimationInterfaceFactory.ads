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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.VectorRotationAnimation_Package; use org.allbinary.animation.VectorRotationAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.VectorRotationAnimationInterfaceFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type VectorRotationAnimationInterfaceFactory is tagged;
   type VectorRotationAnimationInterfaceFactory_Access is access all VectorRotationAnimationInterfaceFactory'Class;
   type VectorRotationAnimationInterfaceFactory_Access_Array is array (Natural range <>) of VectorRotationAnimationInterfaceFactory_Access;
   type VectorRotationAnimationInterfaceFactory_Access_Array_Access is access all VectorRotationAnimationInterfaceFactory_Access_Array;

   type VectorRotationAnimationInterfaceFactory is new AnimationInterfaceFactoryInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
      basicColor : BasicColor_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out VectorRotationAnimationInterfaceFactory'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorRotationAnimationInterfaceFactory_Access;
   function getInstance (This : in out VectorRotationAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out VectorRotationAnimationInterfaceFactory; instanceId : Integer);
   procedure setBasicColorP (This : in out VectorRotationAnimationInterfaceFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBasicColorP (This : in out VectorRotationAnimationInterfaceFactory) return BasicColor_Access;
   procedure setInitialScale (This : in out VectorRotationAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.VectorRotationAnimationInterfaceFactory_Package;



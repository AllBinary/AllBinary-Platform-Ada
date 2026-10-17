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
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.VectorAnimationInterfaceFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type VectorAnimationInterfaceFactory is tagged;
   type VectorAnimationInterfaceFactory_Access is access all VectorAnimationInterfaceFactory'Class;
   type VectorAnimationInterfaceFactory_Access_Array is array (Natural range <>) of VectorAnimationInterfaceFactory_Access;
   type VectorAnimationInterfaceFactory_Access_Array_Access is access all VectorAnimationInterfaceFactory_Access_Array;

   type VectorAnimationInterfaceFactory is new AnimationInterfaceFactoryInterface with record
      currentPoints : Integer_Array_Access_Array_Access_Array_Access;
      basicColor : BasicColor_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out VectorAnimationInterfaceFactory'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return VectorAnimationInterfaceFactory_Access;
   function getInstance (This : in out VectorAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out VectorAnimationInterfaceFactory; instanceId : Integer);
   procedure setBasicColorP (This : in out VectorAnimationInterfaceFactory; basicColor_Param : access BasicColor'Class);
   function getBasicColorP (This : in out VectorAnimationInterfaceFactory) return BasicColor_Access;
   procedure setInitialScale (This : in out VectorAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties'Class);

end org.allbinary.animation.VectorAnimationInterfaceFactory_Package;



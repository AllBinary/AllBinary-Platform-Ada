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
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;

package org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ProceduralAnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type HealthBarAnimationInterfaceFactory is tagged;
   type HealthBarAnimationInterfaceFactory_Access is access all HealthBarAnimationInterfaceFactory'Class;
   type HealthBarAnimationInterfaceFactory_Access_Array is array (Natural range <>) of HealthBarAnimationInterfaceFactory_Access;
   type HealthBarAnimationInterfaceFactory_Access_Array_Access is access all HealthBarAnimationInterfaceFactory_Access_Array;

   type HealthBarAnimationInterfaceFactory is new AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out HealthBarAnimationInterfaceFactory'Class);
   function Create return HealthBarAnimationInterfaceFactory_Access;
   function getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface : AllBinaryLayer_Access; location : Integer) return HealthBarAnimation_Access;
   procedure getInstanceByLocation (This : in out HealthBarAnimationInterfaceFactory; layerInterface : AllBinaryLayer_Access; location : Integer);
   function getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out HealthBarAnimationInterfaceFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface : Animation_Access) return Animation_Access;
   procedure getInstanceAnimation (This : in out HealthBarAnimationInterfaceFactory; animationInterface : Animation_Access);
   procedure setInitialScale (This : in out HealthBarAnimationInterfaceFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.game.health.HealthBarAnimationInterfaceFactory_Package;



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
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.NullRotationAnimation_Package; use org.allbinary.animation.NullRotationAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;

package org.allbinary.animation.RotationAnimationFactory_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;

   type RotationAnimationFactory is tagged;
   type RotationAnimationFactory_Access is access all RotationAnimationFactory'Class;
   type RotationAnimationFactory_Access_Array is array (Natural range <>) of RotationAnimationFactory_Access;
   type RotationAnimationFactory_Access_Array_Access is access all RotationAnimationFactory_Access_Array;

   type RotationAnimationFactory is new AnimationInterfaceFactoryInterface and ProceduralAnimationInterfaceFactoryInterface with record
      totalAngle : Short_Integer;
      angleIncrement : Short_Integer;
   end record;

   procedure Initialize (This : in out RotationAnimationFactory'Class; totalAngle : Short_Integer; angleIncrement : Short_Integer);
   function Create (totalAngle : Short_Integer; angleIncrement : Short_Integer) return RotationAnimationFactory_Access;
   function createFactory return RotationAnimationFactory_Access;
   function getInstance (This : in out RotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out RotationAnimationFactory; instanceId : Integer);
   function getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface : Animation_Access) return Animation_Access;
   procedure getInstanceAnimation (This : in out RotationAnimationFactory; animationInterface : Animation_Access);
   procedure setInitialScale (This : in out RotationAnimationFactory; scaleProperties : ScaleProperties_Access);

end org.allbinary.animation.RotationAnimationFactory_Package;



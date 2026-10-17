-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.media.AllBinaryNoVibration_Package; use org.allbinary.media.AllBinaryNoVibration_Package;
with org.allbinary.media.AllBinaryVibration_Package; use org.allbinary.media.AllBinaryVibration_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;

package org.allbinary.game.layer.AdvancedRTSProperties_Package is

   package NoShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.NoShakeAnimationListener_Package;
   package ShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
   package ShakeAnimationListenerFactory_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListenerFactory_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package AllBinaryNoVibration_Package renames Standard.org.allbinary.media.AllBinaryNoVibration_Package;
   package AllBinaryVibration_Package renames Standard.org.allbinary.media.AllBinaryVibration_Package;
   package AllBinaryVibrationME_Package renames Standard.org.allbinary.media.AllBinaryVibrationME_Package;

   type AdvancedRTSProperties is tagged;
   type AdvancedRTSProperties_Access is access all AdvancedRTSProperties'Class;
   type AdvancedRTSProperties_Access_Array is array (Natural range <>) of AdvancedRTSProperties_Access;
   type AdvancedRTSProperties_Access_Array_Access is access all AdvancedRTSProperties_Access_Array;

   type AdvancedRTSProperties is new Java_Object with record
      shakeListener : ShakeAnimationListener_Access;
      vibration : AllBinaryVibrationME_Access;
      duration : Integer;
      waypointBehaviorBase : TickableInterface_Access;
   end record;

   procedure Initialize (This : in out AdvancedRTSProperties'Class; shakeListener : ShakeAnimationListener_Access; vibration : AllBinaryVibrationME_Access; duration : Integer; waypointBehaviorBase : TickableInterface_Access);
   function Create (shakeListener : ShakeAnimationListener_Access; vibration : AllBinaryVibrationME_Access; duration : Integer; waypointBehaviorBase : TickableInterface_Access) return AdvancedRTSProperties_Access;
   function createPropertiesSimulated return AdvancedRTSProperties_Access;
   function createProperties return AdvancedRTSProperties_Access;

end org.allbinary.game.layer.AdvancedRTSProperties_Package;



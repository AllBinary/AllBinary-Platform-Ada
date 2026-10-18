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
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package; use org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.media.AllBinaryVibrationME_Package; use org.allbinary.media.AllBinaryVibrationME_Package;

package org.allbinary.game.layer.AdvancedRTSProperties_Package is

   package ShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package AllBinaryVibrationME_Package renames Standard.org.allbinary.media.AllBinaryVibrationME_Package;

   type AdvancedRTSProperties is tagged;
   type AdvancedRTSProperties_Access is access all AdvancedRTSProperties'Class;
   type AdvancedRTSProperties_Access_Array is array (Natural range <>) of AdvancedRTSProperties_Access;
   type AdvancedRTSProperties_Access_Array_Access is access all AdvancedRTSProperties_Access_Array;
   type AdvancedRTSProperties_Access_Array_Access_Array is array (Natural range <>) of AdvancedRTSProperties_Access_Array_Access;
   type AdvancedRTSProperties_Access_Array_Access_Array_Access is access all AdvancedRTSProperties_Access_Array_Access_Array;

   type AdvancedRTSProperties is new Java_Object with record
      shakeListener : ShakeAnimationListener_Access;
      vibration : AllBinaryVibrationME_Access;
      duration : Integer;
      waypointBehaviorBase : TickableInterface_Access;
   end record;

   procedure Initialize (This : in out AdvancedRTSProperties'Class; shakeListener_Param : access ShakeAnimationListener_Package.ShakeAnimationListener'Class; vibration_Param : access AllBinaryVibrationME_Package.AllBinaryVibrationME'Class; duration : Integer; waypointBehaviorBase_Param : access TickableInterface_Package.TickableInterface'Class);
   function Create (shakeListener_Param : access ShakeAnimationListener_Package.ShakeAnimationListener'Class; vibration_Param : access AllBinaryVibrationME_Package.AllBinaryVibrationME'Class; duration : Integer; waypointBehaviorBase_Param : access TickableInterface_Package.TickableInterface'Class) return AdvancedRTSProperties_Access;
   function createPropertiesSimulated return AdvancedRTSProperties_Access;
   function createProperties return AdvancedRTSProperties_Access;

end org.allbinary.game.layer.AdvancedRTSProperties_Package;



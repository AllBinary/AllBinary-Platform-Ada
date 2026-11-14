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

with AllBinary_Java;
limited with org.allbinary.game.layer.AdvancedRTSProperties_Package;
package org.allbinary.game.layer.AdvancedRTSProperties_Package_References is
   type AdvancedRTSProperties_Access is access all org.allbinary.game.layer.AdvancedRTSProperties_Package.AdvancedRTSProperties'Class;
   type AdvancedRTSProperties_Access_Array is array (Natural range <>) of AdvancedRTSProperties_Access;
   type AdvancedRTSProperties_Access_Array_Access is access all AdvancedRTSProperties_Access_Array;
   type AdvancedRTSProperties_Access_Array_Access_Array is array (Natural range <>) of AdvancedRTSProperties_Access_Array_Access;
   type AdvancedRTSProperties_Access_Array_Access_Array_Access is access all AdvancedRTSProperties_Access_Array_Access_Array;
   type AdvancedRTSProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvancedRTSProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvancedRTSProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvancedRTSProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvancedRTSProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvancedRTSProperties_Access_Array_Access is (if Value /= null and then Value.all in AdvancedRTSProperties_Access_Array_Object'Class then AdvancedRTSProperties_Access_Array_Object'Class (Value.all).Value else null);
   type AdvancedRTSProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvancedRTSProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvancedRTSProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvancedRTSProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvancedRTSProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvancedRTSProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvancedRTSProperties_Access_Array_Access_Array_Object'Class then AdvancedRTSProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.AdvancedRTSProperties_Package_References;

with org.allbinary.game.layer.AdvancedRTSProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References;
limited with org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package_References;
limited with org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.media.AllBinaryVibrationME_Package_References;

package org.allbinary.game.layer.AdvancedRTSProperties_Package is

   package ShakeAnimationListener_Package renames Standard.org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package AllBinaryVibrationME_Package renames Standard.org.allbinary.media.AllBinaryVibrationME_Package;
   package Reference_Types is
   subtype ShakeAnimationListener_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access;
   use type ShakeAnimationListener_Access;
   subtype ShakeAnimationListener_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array;
   use type ShakeAnimationListener_Access_Array;
   subtype ShakeAnimationListener_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access;
   use type ShakeAnimationListener_Access_Array_Access;
   subtype ShakeAnimationListener_Access_Array_Access_Array is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array;
   use type ShakeAnimationListener_Access_Array_Access_Array;
   subtype ShakeAnimationListener_Access_Array_Access_Array_Access is org.allbinary.animation.transition.shake.ShakeAnimationListener_Package_References.ShakeAnimationListener_Access_Array_Access_Array_Access;
   use type ShakeAnimationListener_Access_Array_Access_Array_Access;
   subtype TickableInterface_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access;
   use type TickableInterface_Access;
   subtype TickableInterface_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array;
   use type TickableInterface_Access_Array;
   subtype TickableInterface_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access;
   use type TickableInterface_Access_Array_Access;
   subtype TickableInterface_Access_Array_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array;
   use type TickableInterface_Access_Array_Access_Array;
   subtype TickableInterface_Access_Array_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array_Access;
   use type TickableInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryVibrationME_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access;
   use type AllBinaryVibrationME_Access;
   subtype AllBinaryVibrationME_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array;
   use type AllBinaryVibrationME_Access_Array;
   subtype AllBinaryVibrationME_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access;
   use type AllBinaryVibrationME_Access_Array_Access;
   subtype AllBinaryVibrationME_Access_Array_Access_Array is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array;
   use type AllBinaryVibrationME_Access_Array_Access_Array;
   subtype AllBinaryVibrationME_Access_Array_Access_Array_Access is org.allbinary.media.AllBinaryVibrationME_Package_References.AllBinaryVibrationME_Access_Array_Access_Array_Access;
   use type AllBinaryVibrationME_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AdvancedRTSProperties_Access is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access;
   function "=" (Left, Right : AdvancedRTSProperties_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   function Java_Box (Value : AdvancedRTSProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References.Java_Box;
   function Java_Unbox_AdvancedRTSProperties_Access_Array (Value : access Java_Object'Class) return AdvancedRTSProperties_Access_Array_Access renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References.Java_Unbox_AdvancedRTSProperties_Access_Array;
   subtype AdvancedRTSProperties_Access_Array_Access_Array is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array_Access_Array;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   subtype AdvancedRTSProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.AdvancedRTSProperties_Package_References.AdvancedRTSProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvancedRTSProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References."=";
   function Java_Box (Value : AdvancedRTSProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References.Java_Box;
   function Java_Unbox_AdvancedRTSProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvancedRTSProperties_Access_Array_Access_Array_Access renames org.allbinary.game.layer.AdvancedRTSProperties_Package_References.Java_Unbox_AdvancedRTSProperties_Access_Array_Access_Array;

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



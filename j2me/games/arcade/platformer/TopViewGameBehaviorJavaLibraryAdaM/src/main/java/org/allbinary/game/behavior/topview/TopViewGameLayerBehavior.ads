-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;
package org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References is
   type TopViewGameLayerBehavior_Access is access all org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package.TopViewGameLayerBehavior'Class;
   type TopViewGameLayerBehavior_Access_Array is array (Natural range <>) of TopViewGameLayerBehavior_Access;
   type TopViewGameLayerBehavior_Access_Array_Access is access all TopViewGameLayerBehavior_Access_Array;
   type TopViewGameLayerBehavior_Access_Array_Access_Array is array (Natural range <>) of TopViewGameLayerBehavior_Access_Array_Access;
   type TopViewGameLayerBehavior_Access_Array_Access_Array_Access is access all TopViewGameLayerBehavior_Access_Array_Access_Array;
   type TopViewGameLayerBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TopViewGameLayerBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : TopViewGameLayerBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TopViewGameLayerBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TopViewGameLayerBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TopViewGameLayerBehavior_Access_Array_Access is (if Value /= null and then Value.all in TopViewGameLayerBehavior_Access_Array_Object'Class then TopViewGameLayerBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type TopViewGameLayerBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TopViewGameLayerBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TopViewGameLayerBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TopViewGameLayerBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TopViewGameLayerBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TopViewGameLayerBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TopViewGameLayerBehavior_Access_Array_Access_Array_Object'Class then TopViewGameLayerBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References;

with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.behavior.GameLayerBehavior_Package; use org.allbinary.game.layer.behavior.GameLayerBehavior_Package;
limited with org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;
with org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package_References;
limited with org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
limited with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;
with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References;

package org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package is

   package GameLayerBehavior_Package renames Standard.org.allbinary.game.layer.behavior.GameLayerBehavior_Package;
   package BasicAccelerationProperties_Package renames Standard.org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package Reference_Types is
   subtype BasicAccelerationProperties_Access is org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package_References.BasicAccelerationProperties_Access;
   use type BasicAccelerationProperties_Access;
   subtype BasicAccelerationProperties_Access_Array is org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package_References.BasicAccelerationProperties_Access_Array;
   use type BasicAccelerationProperties_Access_Array;
   subtype BasicAccelerationProperties_Access_Array_Access is org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package_References.BasicAccelerationProperties_Access_Array_Access;
   use type BasicAccelerationProperties_Access_Array_Access;
   subtype BasicAccelerationProperties_Access_Array_Access_Array is org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package_References.BasicAccelerationProperties_Access_Array_Access_Array;
   use type BasicAccelerationProperties_Access_Array_Access_Array;
   subtype BasicAccelerationProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package_References.BasicAccelerationProperties_Access_Array_Access_Array_Access;
   use type BasicAccelerationProperties_Access_Array_Access_Array_Access;
   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   use type VelocityProperties_Access;
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   use type VelocityProperties_Access_Array;
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access;
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   use type VelocityProperties_Access_Array_Access_Array;
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access_Array_Access;
   subtype InitialJumpBehavior_Access is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access;
   use type InitialJumpBehavior_Access;
   subtype InitialJumpBehavior_Access_Array is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array;
   use type InitialJumpBehavior_Access_Array;
   subtype InitialJumpBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array_Access;
   use type InitialJumpBehavior_Access_Array_Access;
   subtype InitialJumpBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array_Access_Array;
   use type InitialJumpBehavior_Access_Array_Access_Array;
   subtype InitialJumpBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.InitialJumpBehavior_Package_References.InitialJumpBehavior_Access_Array_Access_Array_Access;
   use type InitialJumpBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TopViewGameLayerBehavior_Access is org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.TopViewGameLayerBehavior_Access;
   function "=" (Left, Right : TopViewGameLayerBehavior_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References."=";
   subtype TopViewGameLayerBehavior_Access_Array is org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.TopViewGameLayerBehavior_Access_Array;
   function "=" (Left, Right : TopViewGameLayerBehavior_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References."=";
   subtype TopViewGameLayerBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.TopViewGameLayerBehavior_Access_Array_Access;
   function "=" (Left, Right : TopViewGameLayerBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References."=";
   function Java_Box (Value : TopViewGameLayerBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.Java_Box;
   function Java_Unbox_TopViewGameLayerBehavior_Access_Array (Value : access Java_Object'Class) return TopViewGameLayerBehavior_Access_Array_Access renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.Java_Unbox_TopViewGameLayerBehavior_Access_Array;
   subtype TopViewGameLayerBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.TopViewGameLayerBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : TopViewGameLayerBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References."=";
   subtype TopViewGameLayerBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.TopViewGameLayerBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TopViewGameLayerBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References."=";
   function Java_Box (Value : TopViewGameLayerBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.Java_Box;
   function Java_Unbox_TopViewGameLayerBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return TopViewGameLayerBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package_References.Java_Unbox_TopViewGameLayerBehavior_Access_Array_Access_Array;

   type TopViewGameLayerBehavior is new GameLayerBehavior with record
      maxGravityActionIndex : Integer;
      isJumpAction : Boolean;
      isJumpOver : Boolean;
      isFallingWithoutJumpAttempt : Boolean;
      gravityActionIndex : Integer;
   end record;

   procedure Initialize (This : in out TopViewGameLayerBehavior'Class; maxGravityActionIndex : Integer);
   function Create (maxGravityActionIndex : Integer) return TopViewGameLayerBehavior_Access;
   procedure gravity (This : in out TopViewGameLayerBehavior);
   procedure land (This : in out TopViewGameLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class);
   procedure landReset (This : in out TopViewGameLayerBehavior);
   procedure up (This : in out TopViewGameLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; acceleration_Param : access BasicAccelerationProperties_Package.BasicAccelerationProperties'Class; jumpBehavior_Param : access InitialJumpBehavior_Package.InitialJumpBehavior'Class; accelerationMultiplier : Integer);
   procedure inputFrames (This : in out TopViewGameLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class);

end org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;



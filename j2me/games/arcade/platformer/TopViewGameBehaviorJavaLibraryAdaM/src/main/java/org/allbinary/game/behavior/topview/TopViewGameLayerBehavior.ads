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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.behavior.GameLayerBehavior_Package; use org.allbinary.game.layer.behavior.GameLayerBehavior_Package;
with org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package; use org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package; use org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;

package org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package is

   package GameLayerBehavior_Package renames Standard.org.allbinary.game.layer.behavior.GameLayerBehavior_Package;
   package BasicAccelerationProperties_Package renames Standard.org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;

   type TopViewGameLayerBehavior is tagged;
   type TopViewGameLayerBehavior_Access is access all TopViewGameLayerBehavior'Class;
   type TopViewGameLayerBehavior_Access_Array is array (Natural range <>) of TopViewGameLayerBehavior_Access;
   type TopViewGameLayerBehavior_Access_Array_Access is access all TopViewGameLayerBehavior_Access_Array;

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
   procedure land (This : in out TopViewGameLayerBehavior; velocityProperties : VelocityProperties_Access);
   procedure landReset (This : in out TopViewGameLayerBehavior);
   procedure up (This : in out TopViewGameLayerBehavior; velocityProperties : VelocityProperties_Access; acceleration : BasicAccelerationProperties_Access; jumpBehavior : InitialJumpBehavior_Access; accelerationMultiplier : Integer);
   procedure inputFrames (This : in out TopViewGameLayerBehavior; velocityProperties : VelocityProperties_Access);

end org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;



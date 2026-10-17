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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;

package org.allbinary.game.physics.acceleration.GravityUtil_Package is

   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;

   type GravityUtil is tagged;
   type GravityUtil_Access is access all GravityUtil'Class;
   type GravityUtil_Access_Array is array (Natural range <>) of GravityUtil_Access;
   type GravityUtil_Access_Array_Access is access all GravityUtil_Access_Array;

   type GravityUtil is new Java_Object with record
      GAME_GRAVITY_VELOCITY : Integer;
      MAX_GAME_VELOCITY : Integer;
   end record;
   instance : GravityUtil_Access;

   procedure Initialize (This : in out GravityUtil'Class);
   function Create return GravityUtil_Access;
   function getInstance return GravityUtil_Access;
   procedure process (This : in out GravityUtil; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; customGravity : Integer);

end org.allbinary.game.physics.acceleration.GravityUtil_Package;



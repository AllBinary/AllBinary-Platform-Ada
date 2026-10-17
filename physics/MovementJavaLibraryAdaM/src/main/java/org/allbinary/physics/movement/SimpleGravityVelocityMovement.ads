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
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package; use org.allbinary.game.physics.acceleration.GravityUtil_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.SimpleGravityVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package GravityUtil_Package renames org.allbinary.game.physics.acceleration.GravityUtil_Package;
   package VelocityProperties_Package renames org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;

   type SimpleGravityVelocityMovement is tagged;
   type SimpleGravityVelocityMovement_Access is access all SimpleGravityVelocityMovement'Class;
   type SimpleGravityVelocityMovement_Access_Array is array (Natural range <>) of SimpleGravityVelocityMovement_Access;
   type SimpleGravityVelocityMovement_Access_Array_Access is access all SimpleGravityVelocityMovement_Access_Array;

   type SimpleGravityVelocityMovement is new BasicConstantVelocityMovement with record
      gravityUtil : GravityUtil_Access;
   end record;

   procedure Initialize (This : in out SimpleGravityVelocityMovement'Class; speedBasicDecimal : BasicDecimal_Access);
   function Create (speedBasicDecimal : BasicDecimal_Access) return SimpleGravityVelocityMovement_Access;
   procedure process (This : in out SimpleGravityVelocityMovement; layer : AllBinaryGameLayer_Access);

end org.allbinary.physics.movement.SimpleGravityVelocityMovement_Package;



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

package org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package GravityUtil_Package renames Standard.org.allbinary.game.physics.acceleration.GravityUtil_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type BasicGravityConstantVelocityMovement is tagged;
   type BasicGravityConstantVelocityMovement_Access is access all BasicGravityConstantVelocityMovement'Class;
   type BasicGravityConstantVelocityMovement_Access_Array is array (Natural range <>) of BasicGravityConstantVelocityMovement_Access;
   type BasicGravityConstantVelocityMovement_Access_Array_Access is access all BasicGravityConstantVelocityMovement_Access_Array;

   type BasicGravityConstantVelocityMovement is new BasicConstantVelocityMovement with record
      gravityUtil : GravityUtil_Access;
   end record;

   procedure Initialize (This : in out BasicGravityConstantVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class);
   function Create (speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return BasicGravityConstantVelocityMovement_Access;
   procedure process (This : in out BasicGravityConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package;



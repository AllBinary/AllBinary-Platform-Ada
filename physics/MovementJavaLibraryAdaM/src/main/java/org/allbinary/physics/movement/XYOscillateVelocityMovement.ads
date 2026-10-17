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
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.XYOscillateVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type XYOscillateVelocityMovement is tagged;
   type XYOscillateVelocityMovement_Access is access all XYOscillateVelocityMovement'Class;
   type XYOscillateVelocityMovement_Access_Array is array (Natural range <>) of XYOscillateVelocityMovement_Access;
   type XYOscillateVelocityMovement_Access_Array_Access is access all XYOscillateVelocityMovement_Access_Array;

   type XYOscillateVelocityMovement is new BasicConstantVelocityMovement with record
      oscillateMin : Integer;
      oscillateMax : Integer;
      oscillate : Integer;
      oscillatePositive : Boolean;
   end record;

   procedure Initialize (This : in out XYOscillateVelocityMovement'Class; speedBasicDecimal : BasicDecimal_Access; oscillateMin : Integer; oscillateMax : Integer);
   function Create (speedBasicDecimal : BasicDecimal_Access; oscillateMin : Integer; oscillateMax : Integer) return XYOscillateVelocityMovement_Access;
   procedure process (This : in out XYOscillateVelocityMovement; layer : AllBinaryGameLayer_Access);

end org.allbinary.physics.movement.XYOscillateVelocityMovement_Package;



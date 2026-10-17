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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.ScaleFactorFactory_Package; use org.allbinary.logic.math.ScaleFactorFactory_Package;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package; use org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;

package org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package ScaleFactorFactory_Package renames Standard.org.allbinary.logic.math.ScaleFactorFactory_Package;

   type PreciseConstantVelocityMovement is tagged;
   type PreciseConstantVelocityMovement_Access is access all PreciseConstantVelocityMovement'Class;
   type PreciseConstantVelocityMovement_Access_Array is array (Natural range <>) of PreciseConstantVelocityMovement_Access;
   type PreciseConstantVelocityMovement_Access_Array_Access is access all PreciseConstantVelocityMovement_Access_Array;

   type PreciseConstantVelocityMovement is new BasicConstantVelocityMovement with record
      accumulatedX : Integer;
      accumulatedY : Integer;
      accumulatedZ : Integer;
      factorValue : Integer;
   end record;

   procedure Initialize (This : in out PreciseConstantVelocityMovement'Class; basicDecimal_Param : access BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties'Class);
   function Create (basicDecimal_Param : access BasicDecimal'Class; velocityProperties_Param : access BasicVelocityProperties'Class) return PreciseConstantVelocityMovement_Access;
   procedure init (This : in out PreciseConstantVelocityMovement; speedBasicDecimal_Param : access BasicDecimal'Class; angle : Integer; otherAngle : Integer);
   procedure process (This : in out PreciseConstantVelocityMovement; layer_Param : access AllBinaryGameLayer'Class);

end org.allbinary.physics.movement.PreciseConstantVelocityMovement_Package;



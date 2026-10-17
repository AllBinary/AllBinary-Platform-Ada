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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package; use org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;

package org.allbinary.physics.movement.NoZBasicConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package VelocityInterfaceCompositeInterface_Package renames org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;
   package AxisMathVectorUtil_Package renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
   package AngleFactory_Package renames org.allbinary.math.AngleFactory_Package;

   type NoZBasicConstantVelocityMovement is tagged;
   type NoZBasicConstantVelocityMovement_Access is access all NoZBasicConstantVelocityMovement'Class;
   type NoZBasicConstantVelocityMovement_Access_Array is array (Natural range <>) of NoZBasicConstantVelocityMovement_Access;
   type NoZBasicConstantVelocityMovement_Access_Array_Access is access all NoZBasicConstantVelocityMovement_Access_Array;

   type NoZBasicConstantVelocityMovement is new Movement and VelocityInterfaceCompositeInterface with record
      velocityProperties : BasicVelocityProperties_Access;
      speedBasicDecimal : BasicDecimal_Access;
      axisMathVectorUtil : AxisMathVectorUtil_Access;
   end record;

   procedure Initialize (This : in out NoZBasicConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access);
   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return NoZBasicConstantVelocityMovement_Access;
   procedure init (This : in out NoZBasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer);
   procedure moveOutsideRadius (This : in out NoZBasicConstantVelocityMovement; layer : AllBinaryLayer_Access; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure process (This : in out NoZBasicConstantVelocityMovement; layer : AllBinaryGameLayer_Access);
   function toString (This : in out NoZBasicConstantVelocityMovement) return Unbounded_String;
   procedure toString (This : in out NoZBasicConstantVelocityMovement);
   procedure stop (This : in out NoZBasicConstantVelocityMovement);
   function getVelocityProperties (This : in out NoZBasicConstantVelocityMovement) return BasicVelocityProperties_Access;
   procedure getVelocityProperties (This : in out NoZBasicConstantVelocityMovement);
   procedure setVelocityProperties (This : in out NoZBasicConstantVelocityMovement; velocityProperties : BasicVelocityProperties_Access);
   procedure setSpeedBasicDecimal (This : in out NoZBasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access);
   function getSpeedBasicDecimal (This : in out NoZBasicConstantVelocityMovement) return BasicDecimal_Access;
   procedure getSpeedBasicDecimal (This : in out NoZBasicConstantVelocityMovement);

end org.allbinary.physics.movement.NoZBasicConstantVelocityMovement_Package;



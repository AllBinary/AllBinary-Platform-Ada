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

package org.allbinary.physics.movement.BasicConstantVelocityMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package AxisMathVectorUtil_Package renames Standard.org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;

   type BasicConstantVelocityMovement is tagged;
   type BasicConstantVelocityMovement_Access is access all BasicConstantVelocityMovement'Class;
   type BasicConstantVelocityMovement_Access_Array is array (Natural range <>) of BasicConstantVelocityMovement_Access;
   type BasicConstantVelocityMovement_Access_Array_Access is access all BasicConstantVelocityMovement_Access_Array;

   type BasicConstantVelocityMovement is new Movement and VelocityInterfaceCompositeInterface with record
      velocityProperties : BasicVelocityProperties_Access;
      speedBasicDecimal : BasicDecimal_Access;
      axisMathVectorUtil : AxisMathVectorUtil_Access;
   end record;

   procedure Initialize (This : in out BasicConstantVelocityMovement'Class; basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access);
   function Create (basicDecimal : BasicDecimal_Access; velocityProperties : BasicVelocityProperties_Access) return BasicConstantVelocityMovement_Access;
   procedure init (This : in out BasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer);
   procedure moveOutsideRadius (This : in out BasicConstantVelocityMovement; layer : AllBinaryLayer_Access; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure process (This : in out BasicConstantVelocityMovement; layer : AllBinaryGameLayer_Access);
   function toString (This : in out BasicConstantVelocityMovement) return Unbounded_String;
   procedure stop (This : in out BasicConstantVelocityMovement);
   function getVelocityProperties (This : in out BasicConstantVelocityMovement) return BasicVelocityProperties_Access;
   procedure setVelocityProperties (This : in out BasicConstantVelocityMovement; velocityProperties : BasicVelocityProperties_Access);
   procedure setSpeedBasicDecimal (This : in out BasicConstantVelocityMovement; speedBasicDecimal : BasicDecimal_Access);
   function getSpeedBasicDecimal (This : in out BasicConstantVelocityMovement) return BasicDecimal_Access;

end org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;



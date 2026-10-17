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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package; use org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;

package org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package is

   package AllBinaryGameLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package AxisMathVectorUtil_Package renames Standard.org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;

   type ConstantVelocityNotifyViewChangeMovement is tagged;
   type ConstantVelocityNotifyViewChangeMovement_Access is access all ConstantVelocityNotifyViewChangeMovement'Class;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array is array (Natural range <>) of ConstantVelocityNotifyViewChangeMovement_Access;
   type ConstantVelocityNotifyViewChangeMovement_Access_Array_Access is access all ConstantVelocityNotifyViewChangeMovement_Access_Array;

   type ConstantVelocityNotifyViewChangeMovement is new Movement with record
      basicVelocityProperties : BasicVelocityProperties_Access;
      speedBasicDecimal : BasicDecimal_Access;
      axisMathVectorUtil : AxisMathVectorUtil_Access;
   end record;

   procedure Initialize (This : in out ConstantVelocityNotifyViewChangeMovement'Class);
   function Create return ConstantVelocityNotifyViewChangeMovement_Access;
   procedure init (This : in out ConstantVelocityNotifyViewChangeMovement; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle : Integer; otherAngle : Integer);
   procedure moveOutsideRadius (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; radius : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure process (This : in out ConstantVelocityNotifyViewChangeMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class);
   procedure stop (This : in out ConstantVelocityNotifyViewChangeMovement);

end org.allbinary.physics.movement.ConstantVelocityNotifyViewChangeMovement_Package;



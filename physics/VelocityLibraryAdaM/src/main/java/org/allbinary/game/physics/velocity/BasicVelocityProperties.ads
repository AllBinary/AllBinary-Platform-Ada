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

limited with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
package org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References is
   type BasicVelocityProperties_Access is access all org.allbinary.game.physics.velocity.BasicVelocityProperties_Package.BasicVelocityProperties'Class;
   type BasicVelocityProperties_Access_Array is array (Natural range <>) of BasicVelocityProperties_Access;
   type BasicVelocityProperties_Access_Array_Access is access all BasicVelocityProperties_Access_Array;
   type BasicVelocityProperties_Access_Array_Access_Array is array (Natural range <>) of BasicVelocityProperties_Access_Array_Access;
   type BasicVelocityProperties_Access_Array_Access_Array_Access is access all BasicVelocityProperties_Access_Array_Access_Array;
end org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;

with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.direction.DirectionUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
limited with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package; use org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;

package org.allbinary.game.physics.velocity.BasicVelocityProperties_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionUtil_Package renames Standard.org.allbinary.direction.DirectionUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package AxisMathVectorUtil_Package renames Standard.org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package Reference_Types is
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   subtype DirectionUtil_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access;
   use type DirectionUtil_Access;
   subtype DirectionUtil_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array;
   use type DirectionUtil_Access_Array;
   subtype DirectionUtil_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access;
   use type DirectionUtil_Access_Array_Access;
   subtype DirectionUtil_Access_Array_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array;
   use type DirectionUtil_Access_Array_Access_Array;
   subtype DirectionUtil_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array_Access;
   use type DirectionUtil_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   subtype AxisMathVectorUtil_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access;
   use type AxisMathVectorUtil_Access;
   subtype AxisMathVectorUtil_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array;
   use type AxisMathVectorUtil_Access_Array;
   subtype AxisMathVectorUtil_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access;
   use type AxisMathVectorUtil_Access_Array_Access;
   subtype AxisMathVectorUtil_Access_Array_Access_Array is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array;
   use type AxisMathVectorUtil_Access_Array_Access_Array;
   subtype AxisMathVectorUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.AxisMathVectorUtil_Package_References.AxisMathVectorUtil_Access_Array_Access_Array_Access;
   use type AxisMathVectorUtil_Access_Array_Access_Array_Access;
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";

   type BasicVelocityProperties is new Java_Object and BasicVelocityInterface with record
      logUtil : LogUtil_Access;
      velocityXBasicDecimal : BasicDecimal_Access;
      velocityYBasicDecimal : BasicDecimal_Access;
      velocityZBasicDecimal : BasicDecimal_Access;
      axisMathVectorUtil : AxisMathVectorUtil_Access;
      directionUtil : DirectionUtil_Access;
   end record;

   procedure Initialize (This : in out BasicVelocityProperties'Class);
   function Create return BasicVelocityProperties_Access;
   procedure zero (This : in out BasicVelocityProperties);
   function getVelocityXBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access;
   function getVelocityYBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access;
   function getVelocityZBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access;
   procedure setVelocityWithBigDecimalAndDirection (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class);
   procedure setVelocityWithDirection (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class);
   procedure addVelocityWithBigDecimalAndDirection (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class);
   procedure addVelocityWithDirection (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class);
   procedure setVelocityWithBigDecimal (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class);
   procedure addVelocityWithBigDecimal (This : in out BasicVelocityProperties; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class);
   procedure setVelocity (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class);
   procedure addVelocity (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class);
   procedure setVelocityi (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure addVelocityi (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   function toString (This : in out BasicVelocityProperties) return Unbounded_String;

end org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;



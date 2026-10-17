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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package; use org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package; use org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package; use org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;

package org.allbinary.game.physics.velocity.BasicVelocityProperties_Package is

   package Direction_Package renames org.allbinary.direction.Direction_Package;
   package DirectionUtil_Package renames org.allbinary.direction.DirectionUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicDecimal_Package renames org.allbinary.logic.math.BasicDecimal_Package;
   package AxisMathVectorUtil_Package renames org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Angle_Package renames org.allbinary.math.Angle_Package;
   package PositionStrings_Package renames org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type BasicVelocityProperties is tagged;
   type BasicVelocityProperties_Access is access all BasicVelocityProperties'Class;
   type BasicVelocityProperties_Access_Array is array (Natural range <>) of BasicVelocityProperties_Access;
   type BasicVelocityProperties_Access_Array_Access is access all BasicVelocityProperties_Access_Array;

   type BasicVelocityProperties is new BasicVelocityInterface with record
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
   procedure getVelocityXBasicDecimalP (This : in out BasicVelocityProperties);
   function getVelocityYBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access;
   procedure getVelocityYBasicDecimalP (This : in out BasicVelocityProperties);
   function getVelocityZBasicDecimalP (This : in out BasicVelocityProperties) return BasicDecimal_Access;
   procedure getVelocityZBasicDecimalP (This : in out BasicVelocityProperties);
   procedure setVelocityWithBigDecimalAndDirection (This : in out BasicVelocityProperties; magnitudeBasicDecimal : BasicDecimal_Access; direction : Direction_Access; otherDirection : Direction_Access);
   procedure setVelocityWithDirection (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; direction : Direction_Access; otherDirection : Direction_Access);
   procedure addVelocityWithBigDecimalAndDirection (This : in out BasicVelocityProperties; magnitudeBasicDecimal : BasicDecimal_Access; direction : Direction_Access; otherDirection : Direction_Access);
   procedure addVelocityWithDirection (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; direction : Direction_Access; otherDirection : Direction_Access);
   procedure setVelocityWithBigDecimal (This : in out BasicVelocityProperties; magnitudeBasicDecimal : BasicDecimal_Access; angle : Angle_Access; otherAngle : Angle_Access);
   procedure addVelocityWithBigDecimal (This : in out BasicVelocityProperties; magnitudeBasicDecimal : BasicDecimal_Access; angle : Angle_Access; otherAngle : Angle_Access);
   procedure setVelocity (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Angle_Access; otherAngle : Angle_Access);
   procedure addVelocity (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Angle_Access; otherAngle : Angle_Access);
   procedure setVelocityi (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure addVelocityi (This : in out BasicVelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   function toString (This : in out BasicVelocityProperties) return Unbounded_String;
   procedure toString (This : in out BasicVelocityProperties);

end org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;



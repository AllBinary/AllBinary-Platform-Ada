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
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;

package org.allbinary.game.physics.velocity.BasicVelocityInterface_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;

   type BasicVelocityInterface is interface;
   type BasicVelocityInterface_Access is access all BasicVelocityInterface'Class;
   type BasicVelocityInterface_Access_Array is array (Natural range <>) of BasicVelocityInterface_Access;
   type BasicVelocityInterface_Access_Array_Access is access all BasicVelocityInterface_Access_Array;
   function getVelocityXBasicDecimalP (This : in out BasicVelocityInterface) return BasicDecimal_Access is abstract;
   function getVelocityYBasicDecimalP (This : in out BasicVelocityInterface) return BasicDecimal_Access is abstract;
   procedure zero (This : in out BasicVelocityInterface) is abstract;
   procedure setVelocityWithBigDecimalAndDirection (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure addVelocityWithBigDecimalAndDirection (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure setVelocityWithDirection (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure addVelocityWithDirection (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; direction_Param : access Direction_Package.Direction'Class; otherDirection_Param : access Direction_Package.Direction'Class) is abstract;
   procedure setVelocityWithBigDecimal (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure addVelocityWithBigDecimal (This : in out BasicVelocityInterface; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure setVelocity (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure addVelocity (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; angle_Param : access Angle_Package.Angle'Class; otherAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure addVelocityi (This : in out BasicVelocityInterface; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer) is abstract;

end org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;



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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterface_Package;

package org.allbinary.game.physics.velocity.VelocityProperties_Package is


   type VelocityProperties is tagged;
   type VelocityProperties_Access is access all VelocityProperties'Class;
   type VelocityProperties_Access_Array is array (Natural range <>) of VelocityProperties_Access;
   type VelocityProperties_Access_Array_Access is access all VelocityProperties_Access_Array;
   type VelocityProperties_Access_Array_Access_Array is array (Natural range <>) of VelocityProperties_Access_Array_Access;
   type VelocityProperties_Access_Array_Access_Array_Access is access all VelocityProperties_Access_Array_Access_Array;

   type VelocityProperties is new BasicVelocityProperties and VelocityInterface with record
      maxForwardVelocity : Integer;
      maxReverseVelocity : Integer;
   end record;
   NULL_VELOCITY_PROPERTIES : VelocityProperties_Access;

   procedure Initialize (This : in out VelocityProperties'Class; maxForwardVelocity : Integer; maxReverseVelocity : Integer);
   function Create (maxForwardVelocity : Integer; maxReverseVelocity : Integer) return VelocityProperties_Access;
   function getMaxForwardVelocity (This : in out VelocityProperties) return Integer;
   procedure setMaxForwardVelocity (This : in out VelocityProperties; maxForwardVelocity : Integer);
   function getMaxReverseVelocity (This : in out VelocityProperties) return Integer;
   procedure setMaxReverseVelocity (This : in out VelocityProperties; maxReverseVelocity : Integer);
   procedure limitMaxXYForwardVelocity (This : in out VelocityProperties);
   procedure limitMaxXYReverseVelocity (This : in out VelocityProperties);
   procedure limitMaxYForwardVelocity (This : in out VelocityProperties);
   procedure limitMaxYReverseVelocity (This : in out VelocityProperties);
   procedure limitMaxXForwardVelocity (This : in out VelocityProperties);
   procedure limitMaxXReverseVelocity (This : in out VelocityProperties);
   function isOverXYMaxForwardVelocity (This : in out VelocityProperties) return Boolean;
   function isOverXYMaxReverseVelocity (This : in out VelocityProperties) return Boolean;
   procedure limitXYToForwardAndReverseMaxVelocity (This : in out VelocityProperties);
   procedure limitMaxXYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxPositiveYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxNegativeYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxYVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure limitMaxXVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   function isOverXYMaxVelocity (This : in out VelocityProperties; maxVelocity : Integer) return Boolean;
   procedure isOverXYMaxVelocity (This : in out VelocityProperties; maxVelocity : Integer);
   procedure setVelocityi (This : in out VelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);
   procedure addVelocityi (This : in out VelocityProperties; magnitude : Long_Long_Integer; angle : Integer; otherAngle : Integer);

end org.allbinary.game.physics.velocity.VelocityProperties_Package;



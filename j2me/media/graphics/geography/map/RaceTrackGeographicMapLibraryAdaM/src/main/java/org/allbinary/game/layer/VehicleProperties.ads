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
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.layer.VehicleFrictionProperties_Package; use org.allbinary.game.layer.VehicleFrictionProperties_Package;

package org.allbinary.game.layer.VehicleProperties_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;

   type VehicleProperties is tagged;
   type VehicleProperties_Access is access all VehicleProperties'Class;
   type VehicleProperties_Access_Array is array (Natural range <>) of VehicleProperties_Access;
   type VehicleProperties_Access_Array_Access is access all VehicleProperties_Access_Array;

   type VehicleProperties is new Java_Object with record
      velocityProperties : VelocityProperties_Access;
      vehicleFrictionProperties : VehicleFrictionProperties_Access;
   end record;

   procedure Initialize (This : in out VehicleProperties'Class; velocityProperties_Param : access VelocityProperties'Class; vehicleFrictionProperties_Param : access VehicleFrictionProperties'Class);
   function Create (velocityProperties_Param : access VelocityProperties'Class; vehicleFrictionProperties_Param : access VehicleFrictionProperties'Class) return VehicleProperties_Access;
   function getVehicleFrictionProperties (This : in out VehicleProperties) return VehicleFrictionProperties_Access;
   procedure setVehicleFrictionProperties (This : in out VehicleProperties; vehicleFrictionProperties_Param : access VehicleFrictionProperties'Class);
   function getVelocityProperties (This : in out VehicleProperties) return VelocityProperties_Access;

end org.allbinary.game.layer.VehicleProperties_Package;



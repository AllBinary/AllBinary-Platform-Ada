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

package org.allbinary.game.layer.VehicleProperties_Package is

   package VelocityProperties_Package renames org.allbinary.game.physics.velocity.VelocityProperties_Package;

   type VehicleProperties is tagged;
   type VehicleProperties_Access is access all VehicleProperties'Class;
   type VehicleProperties_Access_Array is array (Natural range <>) of VehicleProperties_Access;
   type VehicleProperties_Access_Array_Access is access all VehicleProperties_Access_Array;

   type VehicleProperties is new Java_Object with record
      velocityProperties : VelocityProperties_Access;
      vehicleFrictionProperties : VehicleFrictionProperties_Access;
   end record;

   procedure Initialize (This : in out VehicleProperties'Class; velocityProperties : VelocityProperties_Access; vehicleFrictionProperties : VehicleFrictionProperties_Access);
   function Create (velocityProperties : VelocityProperties_Access; vehicleFrictionProperties : VehicleFrictionProperties_Access) return VehicleProperties_Access;
   function getVehicleFrictionProperties (This : in out VehicleProperties) return VehicleFrictionProperties_Access;
   procedure getVehicleFrictionProperties (This : in out VehicleProperties);
   procedure setVehicleFrictionProperties (This : in out VehicleProperties; vehicleFrictionProperties : VehicleFrictionProperties_Access);
   function getVelocityProperties (This : in out VehicleProperties) return VelocityProperties_Access;
   procedure getVelocityProperties (This : in out VehicleProperties);

end org.allbinary.game.layer.VehicleProperties_Package;



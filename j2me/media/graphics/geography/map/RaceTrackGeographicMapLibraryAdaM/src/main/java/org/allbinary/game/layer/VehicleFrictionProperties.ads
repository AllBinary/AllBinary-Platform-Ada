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
with org.allbinary.game.physics.FrictionProperties_Package; use org.allbinary.game.physics.FrictionProperties_Package;

package org.allbinary.game.layer.VehicleFrictionProperties_Package is

   package FrictionProperties_Package renames Standard.org.allbinary.game.physics.FrictionProperties_Package;

   type VehicleFrictionProperties is tagged;
   type VehicleFrictionProperties_Access is access all VehicleFrictionProperties'Class;
   type VehicleFrictionProperties_Access_Array is array (Natural range <>) of VehicleFrictionProperties_Access;
   type VehicleFrictionProperties_Access_Array_Access is access all VehicleFrictionProperties_Access_Array;
   type VehicleFrictionProperties_Access_Array_Access_Array is array (Natural range <>) of VehicleFrictionProperties_Access_Array_Access;
   type VehicleFrictionProperties_Access_Array_Access_Array_Access is access all VehicleFrictionProperties_Access_Array_Access_Array;

   type VehicleFrictionProperties is new FrictionProperties with record
      TIRE_FRICTION_NOMINATOR : Integer;
      BRAKE_FRICTION_NOMINATOR : Integer;
      AIR_FRICTION_NOMINATOR : Integer;
      CRASH_FRICTION_NOMINATOR : Integer;
   end record;

   procedure Initialize (This : in out VehicleFrictionProperties'Class; tireFriction : Integer; brakeFriction : Integer; airFriction : Integer; crashFriction : Integer);
   function Create (tireFriction : Integer; brakeFriction : Integer; airFriction : Integer; crashFriction : Integer) return VehicleFrictionProperties_Access;
   function getTireFrictionNominator (This : in out VehicleFrictionProperties) return Integer;
   function getBrakeFrictionNominator (This : in out VehicleFrictionProperties) return Integer;
   function getAirFrictionNominator (This : in out VehicleFrictionProperties) return Integer;
   function getCrashFrictionNominator (This : in out VehicleFrictionProperties) return Integer;

end org.allbinary.game.layer.VehicleFrictionProperties_Package;



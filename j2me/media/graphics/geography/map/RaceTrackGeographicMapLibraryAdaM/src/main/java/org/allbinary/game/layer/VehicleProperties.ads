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

limited with org.allbinary.game.layer.VehicleProperties_Package;
package org.allbinary.game.layer.VehicleProperties_Package_References is
   type VehicleProperties_Access is access all org.allbinary.game.layer.VehicleProperties_Package.VehicleProperties'Class;
   type VehicleProperties_Access_Array is array (Natural range <>) of VehicleProperties_Access;
   type VehicleProperties_Access_Array_Access is access all VehicleProperties_Access_Array;
   type VehicleProperties_Access_Array_Access_Array is array (Natural range <>) of VehicleProperties_Access_Array_Access;
   type VehicleProperties_Access_Array_Access_Array_Access is access all VehicleProperties_Access_Array_Access_Array;
end org.allbinary.game.layer.VehicleProperties_Package_References;

with org.allbinary.game.layer.VehicleProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
limited with org.allbinary.game.layer.VehicleFrictionProperties_Package;
with org.allbinary.game.layer.VehicleFrictionProperties_Package_References;

package org.allbinary.game.layer.VehicleProperties_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   package Reference_Types is
   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   use type VelocityProperties_Access;
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   use type VelocityProperties_Access_Array;
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access;
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   use type VelocityProperties_Access_Array_Access_Array;
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   use type VelocityProperties_Access_Array_Access_Array_Access;
   subtype VehicleFrictionProperties_Access is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access;
   use type VehicleFrictionProperties_Access;
   subtype VehicleFrictionProperties_Access_Array is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array;
   use type VehicleFrictionProperties_Access_Array;
   subtype VehicleFrictionProperties_Access_Array_Access is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array_Access;
   use type VehicleFrictionProperties_Access_Array_Access;
   subtype VehicleFrictionProperties_Access_Array_Access_Array is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array_Access_Array;
   use type VehicleFrictionProperties_Access_Array_Access_Array;
   subtype VehicleFrictionProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleFrictionProperties_Package_References.VehicleFrictionProperties_Access_Array_Access_Array_Access;
   use type VehicleFrictionProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VehicleProperties_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access;
   function "=" (Left, Right : VehicleProperties_Access) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array;
   function "=" (Left, Right : VehicleProperties_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access;
   function "=" (Left, Right : VehicleProperties_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : VehicleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";
   subtype VehicleProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VehicleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehicleProperties_Package_References."=";

   type VehicleProperties is new Java_Object with record
      velocityProperties : VelocityProperties_Access;
      vehicleFrictionProperties : VehicleFrictionProperties_Access;
   end record;

   procedure Initialize (This : in out VehicleProperties'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; vehicleFrictionProperties_Param : access VehicleFrictionProperties_Package.VehicleFrictionProperties'Class);
   function Create (velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; vehicleFrictionProperties_Param : access VehicleFrictionProperties_Package.VehicleFrictionProperties'Class) return VehicleProperties_Access;
   function getVehicleFrictionProperties (This : in out VehicleProperties) return VehicleFrictionProperties_Access;
   procedure setVehicleFrictionProperties (This : in out VehicleProperties; vehicleFrictionProperties_Param : access VehicleFrictionProperties_Package.VehicleFrictionProperties'Class);
   function getVelocityProperties (This : in out VehicleProperties) return VelocityProperties_Access;

end org.allbinary.game.layer.VehicleProperties_Package;



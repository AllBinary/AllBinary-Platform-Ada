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
with org.allbinary.game.layer.VehicleProperties_Package; use org.allbinary.game.layer.VehicleProperties_Package;

package org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package is


   type VehiclePropertiesCompositeInterface is interface;
   type VehiclePropertiesCompositeInterface_Access is access all VehiclePropertiesCompositeInterface'Class;
   type VehiclePropertiesCompositeInterface_Access_Array is array (Natural range <>) of VehiclePropertiesCompositeInterface_Access;
   type VehiclePropertiesCompositeInterface_Access_Array_Access is access all VehiclePropertiesCompositeInterface_Access_Array;
   type VehiclePropertiesCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of VehiclePropertiesCompositeInterface_Access_Array_Access;
   type VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access is access all VehiclePropertiesCompositeInterface_Access_Array_Access_Array;
   function getVehicleProperties (This : in out VehiclePropertiesCompositeInterface) return VehicleProperties_Access is abstract;

end org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;



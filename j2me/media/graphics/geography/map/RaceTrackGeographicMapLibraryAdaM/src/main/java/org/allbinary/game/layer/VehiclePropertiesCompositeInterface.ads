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

limited with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;
package org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References is
   type VehiclePropertiesCompositeInterface_Access is access all org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package.VehiclePropertiesCompositeInterface'Class;
   type VehiclePropertiesCompositeInterface_Access_Array is array (Natural range <>) of VehiclePropertiesCompositeInterface_Access;
   type VehiclePropertiesCompositeInterface_Access_Array_Access is access all VehiclePropertiesCompositeInterface_Access_Array;
   type VehiclePropertiesCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of VehiclePropertiesCompositeInterface_Access_Array_Access;
   type VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access is access all VehiclePropertiesCompositeInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References;

with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.VehicleProperties_Package;
with org.allbinary.game.layer.VehicleProperties_Package_References;

package org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package is

   package Reference_Types is
   subtype VehicleProperties_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access;
   use type VehicleProperties_Access;
   subtype VehicleProperties_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array;
   use type VehicleProperties_Access_Array;
   subtype VehicleProperties_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access;
   use type VehicleProperties_Access_Array_Access;
   subtype VehicleProperties_Access_Array_Access_Array is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array;
   use type VehicleProperties_Access_Array_Access_Array;
   subtype VehicleProperties_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehicleProperties_Package_References.VehicleProperties_Access_Array_Access_Array_Access;
   use type VehicleProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type VehiclePropertiesCompositeInterface is interface;
   subtype VehiclePropertiesCompositeInterface_Access is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access;
   function "=" (Left, Right : VehiclePropertiesCompositeInterface_Access) return Boolean renames org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References."=";
   subtype VehiclePropertiesCompositeInterface_Access_Array is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array;
   function "=" (Left, Right : VehiclePropertiesCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References."=";
   subtype VehiclePropertiesCompositeInterface_Access_Array_Access is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : VehiclePropertiesCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References."=";
   subtype VehiclePropertiesCompositeInterface_Access_Array_Access_Array is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VehiclePropertiesCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References."=";
   subtype VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References."=";
   function Java_Object_Access_From_VehiclePropertiesCompositeInterface (Value : VehiclePropertiesCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getVehicleProperties (This : in out VehiclePropertiesCompositeInterface) return VehicleProperties_Access is abstract;

end org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;



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

with AllBinary_Java;
limited with org.allbinary.game.layer.CollidableVehicleBehavior_Package;
package org.allbinary.game.layer.CollidableVehicleBehavior_Package_References is
   type CollidableVehicleBehavior_Access is access all org.allbinary.game.layer.CollidableVehicleBehavior_Package.CollidableVehicleBehavior'Class;
   type CollidableVehicleBehavior_Access_Array is array (Natural range <>) of CollidableVehicleBehavior_Access;
   type CollidableVehicleBehavior_Access_Array_Access is access all CollidableVehicleBehavior_Access_Array;
   type CollidableVehicleBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableVehicleBehavior_Access_Array_Access;
   type CollidableVehicleBehavior_Access_Array_Access_Array_Access is access all CollidableVehicleBehavior_Access_Array_Access_Array;
   type CollidableVehicleBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableVehicleBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableVehicleBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableVehicleBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableVehicleBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableVehicleBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableVehicleBehavior_Access_Array_Object'Class then CollidableVehicleBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableVehicleBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableVehicleBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableVehicleBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableVehicleBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableVehicleBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableVehicleBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableVehicleBehavior_Access_Array_Access_Array_Object'Class then CollidableVehicleBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.CollidableVehicleBehavior_Package_References;

with org.allbinary.game.layer.CollidableVehicleBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
limited with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;
with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;

package org.allbinary.game.layer.CollidableVehicleBehavior_Package is

   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
   package Reference_Types is
   subtype CollidableInterfaceCompositeInterface_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access;
   use type CollidableInterfaceCompositeInterface_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array;
   subtype CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package_References.CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   use type CollidableInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   subtype VehiclePropertiesCompositeInterface_Access is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access;
   use type VehiclePropertiesCompositeInterface_Access;
   subtype VehiclePropertiesCompositeInterface_Access_Array is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array;
   use type VehiclePropertiesCompositeInterface_Access_Array;
   subtype VehiclePropertiesCompositeInterface_Access_Array_Access is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array_Access;
   use type VehiclePropertiesCompositeInterface_Access_Array_Access;
   subtype VehiclePropertiesCompositeInterface_Access_Array_Access_Array is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array_Access_Array;
   use type VehiclePropertiesCompositeInterface_Access_Array_Access_Array;
   subtype VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package_References.VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access;
   use type VehiclePropertiesCompositeInterface_Access_Array_Access_Array_Access;
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableVehicleBehavior_Access is org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.CollidableVehicleBehavior_Access;
   function "=" (Left, Right : CollidableVehicleBehavior_Access) return Boolean renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References."=";
   subtype CollidableVehicleBehavior_Access_Array is org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.CollidableVehicleBehavior_Access_Array;
   function "=" (Left, Right : CollidableVehicleBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References."=";
   subtype CollidableVehicleBehavior_Access_Array_Access is org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.CollidableVehicleBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableVehicleBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References."=";
   function Java_Box (Value : CollidableVehicleBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableVehicleBehavior_Access_Array (Value : access Java_Object'Class) return CollidableVehicleBehavior_Access_Array_Access renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.Java_Unbox_CollidableVehicleBehavior_Access_Array;
   subtype CollidableVehicleBehavior_Access_Array_Access_Array is org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.CollidableVehicleBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableVehicleBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References."=";
   subtype CollidableVehicleBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.CollidableVehicleBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableVehicleBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References."=";
   function Java_Box (Value : CollidableVehicleBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableVehicleBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableVehicleBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.layer.CollidableVehicleBehavior_Package_References.Java_Unbox_CollidableVehicleBehavior_Access_Array_Access_Array;

   type CollidableVehicleBehavior is new CollidableDestroyableDamageableBehavior with record
      totalImpactVelocity : Long_Long_Integer;
      halfImpactVelocityX : Long_Long_Integer;
      halfImpactVelocityY : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out CollidableVehicleBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableVehicleBehavior_Access;
   procedure collide (This : in out CollidableVehicleBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideInterface (This : in out CollidableVehicleBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure collideVehicle (This : in out CollidableVehicleBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; vehiclePropertiesCompositeInterface_Param : access VehiclePropertiesCompositeInterface_Package.VehiclePropertiesCompositeInterface'Class);
   procedure collideFriction (This : in out CollidableVehicleBehavior; vehiclePropertiesCompositeInterface_Param : access VehiclePropertiesCompositeInterface_Package.VehiclePropertiesCompositeInterface'Class);

end org.allbinary.game.layer.CollidableVehicleBehavior_Package;



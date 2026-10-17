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
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package; use org.allbinary.game.layer.VehiclePropertiesCompositeInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.VehicleProperties_Package; use org.allbinary.game.layer.VehicleProperties_Package;
with org.allbinary.game.layer.VehicleFrictionProperties_Package; use org.allbinary.game.layer.VehicleFrictionProperties_Package;

package org.allbinary.game.layer.CollidableVehicleBehavior_Package is

   package PickedUpLayerInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames Standard.org.allbinary.game.collision.CollisionTypeFactory_Package;
   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;

   type CollidableVehicleBehavior is tagged;
   type CollidableVehicleBehavior_Access is access all CollidableVehicleBehavior'Class;
   type CollidableVehicleBehavior_Access_Array is array (Natural range <>) of CollidableVehicleBehavior_Access;
   type CollidableVehicleBehavior_Access_Array_Access is access all CollidableVehicleBehavior_Access_Array;

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



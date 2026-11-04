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

limited with org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package;
package org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References is
   type CollidableDamageWeaponBehavior_Access is access all org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package.CollidableDamageWeaponBehavior'Class;
   type CollidableDamageWeaponBehavior_Access_Array is array (Natural range <>) of CollidableDamageWeaponBehavior_Access;
   type CollidableDamageWeaponBehavior_Access_Array_Access is access all CollidableDamageWeaponBehavior_Access_Array;
   type CollidableDamageWeaponBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableDamageWeaponBehavior_Access_Array_Access;
   type CollidableDamageWeaponBehavior_Access_Array_Access_Array_Access is access all CollidableDamageWeaponBehavior_Access_Array_Access_Array;
end org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References;

with org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References;
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
limited with org.allbinary.game.collision.CollisionHelper_Package;
with org.allbinary.game.collision.CollisionHelper_Package_References;
limited with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionType_Package_References;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package is

   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollisionHelper_Package renames Standard.org.allbinary.game.collision.CollisionHelper_Package;
   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   subtype CollisionHelper_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access;
   use type CollisionHelper_Access;
   subtype CollisionHelper_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array;
   use type CollisionHelper_Access_Array;
   subtype CollisionHelper_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access;
   use type CollisionHelper_Access_Array_Access;
   subtype CollisionHelper_Access_Array_Access_Array is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array;
   use type CollisionHelper_Access_Array_Access_Array;
   subtype CollisionHelper_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionHelper_Package_References.CollisionHelper_Access_Array_Access_Array_Access;
   use type CollisionHelper_Access_Array_Access_Array_Access;
   subtype CollisionType_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access;
   use type CollisionType_Access;
   subtype CollisionType_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array;
   use type CollisionType_Access_Array;
   subtype CollisionType_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access;
   use type CollisionType_Access_Array_Access;
   subtype CollisionType_Access_Array_Access_Array is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array;
   use type CollisionType_Access_Array_Access_Array;
   subtype CollisionType_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollisionType_Package_References.CollisionType_Access_Array_Access_Array_Access;
   use type CollisionType_Access_Array_Access_Array_Access;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableDamageWeaponBehavior_Access is org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References.CollidableDamageWeaponBehavior_Access;
   function "=" (Left, Right : CollidableDamageWeaponBehavior_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References."=";
   subtype CollidableDamageWeaponBehavior_Access_Array is org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References.CollidableDamageWeaponBehavior_Access_Array;
   function "=" (Left, Right : CollidableDamageWeaponBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References."=";
   subtype CollidableDamageWeaponBehavior_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References.CollidableDamageWeaponBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableDamageWeaponBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References."=";
   subtype CollidableDamageWeaponBehavior_Access_Array_Access_Array is org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References.CollidableDamageWeaponBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDamageWeaponBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References."=";
   subtype CollidableDamageWeaponBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References.CollidableDamageWeaponBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDamageWeaponBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package_References."=";

   type CollidableDamageWeaponBehavior is new CollidableDestroyableDamageableBehavior with record
      collided : Boolean;
      collisionHelper : CollisionHelper_Access;
   end record;

   procedure Initialize (This : in out CollidableDamageWeaponBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableDamageWeaponBehavior_Access;
   procedure init (This : in out CollidableDamageWeaponBehavior; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function isCollision (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function isCollisionInterface (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure collideInterface (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   function getCollisionTypeWith (This : in out CollidableDamageWeaponBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableDamageWeaponBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function isCollided (This : in out CollidableDamageWeaponBehavior) return Boolean;
   procedure setCollided (This : in out CollidableDamageWeaponBehavior; collided : Boolean);

end org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package;



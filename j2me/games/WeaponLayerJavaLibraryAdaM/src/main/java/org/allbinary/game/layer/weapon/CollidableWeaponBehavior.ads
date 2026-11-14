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
limited with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
package org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References is
   type CollidableWeaponBehavior_Access is access all org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package.CollidableWeaponBehavior'Class;
   type CollidableWeaponBehavior_Access_Array is array (Natural range <>) of CollidableWeaponBehavior_Access;
   type CollidableWeaponBehavior_Access_Array_Access is access all CollidableWeaponBehavior_Access_Array;
   type CollidableWeaponBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableWeaponBehavior_Access_Array_Access;
   type CollidableWeaponBehavior_Access_Array_Access_Array_Access is access all CollidableWeaponBehavior_Access_Array_Access_Array;
   type CollidableWeaponBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableWeaponBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableWeaponBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableWeaponBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableWeaponBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableWeaponBehavior_Access_Array_Access is (if Value /= null and then Value.all in CollidableWeaponBehavior_Access_Array_Object'Class then CollidableWeaponBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type CollidableWeaponBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CollidableWeaponBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CollidableWeaponBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CollidableWeaponBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CollidableWeaponBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CollidableWeaponBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CollidableWeaponBehavior_Access_Array_Access_Array_Object'Class then CollidableWeaponBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References;

with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References;
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

package org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package is

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


   subtype CollidableWeaponBehavior_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access;
   function "=" (Left, Right : CollidableWeaponBehavior_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   function Java_Box (Value : CollidableWeaponBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableWeaponBehavior_Access_Array (Value : access Java_Object'Class) return CollidableWeaponBehavior_Access_Array_Access renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.Java_Unbox_CollidableWeaponBehavior_Access_Array;
   subtype CollidableWeaponBehavior_Access_Array_Access_Array is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   subtype CollidableWeaponBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableWeaponBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References."=";
   function Java_Box (Value : CollidableWeaponBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.Java_Box;
   function Java_Unbox_CollidableWeaponBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return CollidableWeaponBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.Java_Unbox_CollidableWeaponBehavior_Access_Array_Access_Array;

   type CollidableWeaponBehavior is new CollidableDestroyableDamageableBehavior with record
      collided : Boolean;
      collisionHelper : CollisionHelper_Access;
   end record;
   NULL_COLLIDABLE_WEAPON_BEHAVIOR : Java_Object_Access;

   procedure Initialize (This : in out CollidableWeaponBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableWeaponBehavior_Access;
   function getNullInstance return CollidableWeaponBehavior_Access;
   procedure init (This : in out CollidableWeaponBehavior; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function isCollision (This : in out CollidableWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function isCollisionInterface (This : in out CollidableWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   procedure collideInterface (This : in out CollidableWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface_Package.CollidableInterfaceCompositeInterface'Class);
   function getCollisionTypeWith (This : in out CollidableWeaponBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableWeaponBehavior; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function isCollided (This : in out CollidableWeaponBehavior) return Boolean;
   procedure setCollided (This : in out CollidableWeaponBehavior; collided : Boolean);

end org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;



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
with org.allbinary.game.collision.CollidableHelperFactory_Package; use org.allbinary.game.collision.CollidableHelperFactory_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionHelper_Package; use org.allbinary.game.collision.CollisionHelper_Package;
with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package; use org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package is

   package CollidableHelperFactory_Package renames Standard.org.allbinary.game.collision.CollidableHelperFactory_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollisionHelper_Package renames Standard.org.allbinary.game.collision.CollisionHelper_Package;
   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames Standard.org.allbinary.game.collision.CollisionTypeFactory_Package;
   package DamageableInterface_Package renames Standard.org.allbinary.game.combat.damage.DamageableInterface_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type CollidableDamageWeaponBehavior is tagged;
   type CollidableDamageWeaponBehavior_Access is access all CollidableDamageWeaponBehavior'Class;
   type CollidableDamageWeaponBehavior_Access_Array is array (Natural range <>) of CollidableDamageWeaponBehavior_Access;
   type CollidableDamageWeaponBehavior_Access_Array_Access is access all CollidableDamageWeaponBehavior_Access_Array;

   type CollidableDamageWeaponBehavior is new CollidableDestroyableDamageableBehavior with record
      collided : Boolean;
      collisionHelper : CollisionHelper_Access;
   end record;

   procedure Initialize (This : in out CollidableDamageWeaponBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableDamageWeaponBehavior_Access;
   procedure init (This : in out CollidableDamageWeaponBehavior; sourceLayerInterface_Param : access AllBinaryLayer'Class);
   function isCollision (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer'Class) return Boolean;
   procedure isCollision (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer'Class);
   procedure collide (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collisionLayer_Param : access CollidableCompositeLayer'Class);
   function isCollisionInterface (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class) return Boolean;
   procedure isCollisionInterface (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class);
   procedure collideInterface (This : in out CollidableDamageWeaponBehavior; ownerLayer_Param : access CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableInterfaceCompositeInterface'Class);
   function getCollisionTypeWith (This : in out CollidableDamageWeaponBehavior; layerInterface_Param : access AllBinaryLayer'Class) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableDamageWeaponBehavior; layerInterface_Param : access AllBinaryLayer'Class);
   function isCollided (This : in out CollidableDamageWeaponBehavior) return Boolean;
   procedure setCollided (This : in out CollidableDamageWeaponBehavior; collided : Boolean);

end org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package;



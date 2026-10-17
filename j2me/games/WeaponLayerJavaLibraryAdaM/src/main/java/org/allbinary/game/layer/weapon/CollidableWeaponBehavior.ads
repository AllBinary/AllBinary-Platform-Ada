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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package is

   package CollidableHelperFactory_Package renames Standard.org.allbinary.game.collision.CollidableHelperFactory_Package;
   package CollidableInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollisionHelper_Package renames Standard.org.allbinary.game.collision.CollisionHelper_Package;
   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames Standard.org.allbinary.game.collision.CollisionTypeFactory_Package;
   package DamageableInterface_Package renames Standard.org.allbinary.game.combat.damage.DamageableInterface_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type CollidableWeaponBehavior is tagged;
   type CollidableWeaponBehavior_Access is access all CollidableWeaponBehavior'Class;
   type CollidableWeaponBehavior_Access_Array is array (Natural range <>) of CollidableWeaponBehavior_Access;
   type CollidableWeaponBehavior_Access_Array_Access is access all CollidableWeaponBehavior_Access_Array;

   type CollidableWeaponBehavior is new CollidableDestroyableDamageableBehavior with record
      collided : Boolean;
      collisionHelper : CollisionHelper_Access;
   end record;
   NULL_COLLIDABLE_WEAPON_BEHAVIOR : Java_Object_Access;

   procedure Initialize (This : in out CollidableWeaponBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableWeaponBehavior_Access;
   function getNullInstance return CollidableWeaponBehavior_Access;
   procedure init (This : in out CollidableWeaponBehavior; sourceLayerInterface : AllBinaryLayer_Access);
   function isCollision (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollision (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access);
   procedure collide (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access);
   function isCollisionInterface (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean;
   procedure isCollisionInterface (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);
   procedure collideInterface (This : in out CollidableWeaponBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);
   function getCollisionTypeWith (This : in out CollidableWeaponBehavior; layerInterface : AllBinaryLayer_Access) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableWeaponBehavior; layerInterface : AllBinaryLayer_Access);
   function isCollided (This : in out CollidableWeaponBehavior) return Boolean;
   procedure setCollided (This : in out CollidableWeaponBehavior; collided : Boolean);

end org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;



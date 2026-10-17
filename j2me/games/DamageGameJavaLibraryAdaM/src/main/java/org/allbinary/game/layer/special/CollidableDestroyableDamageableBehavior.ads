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
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.combat.damage.DamageUtil_Package; use org.allbinary.game.combat.damage.DamageUtil_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;

package org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package is

   package CollidableBaseBehavior_Package renames org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package CollidableInterfaceCompositeInterface_Package renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package DamageUtil_Package renames org.allbinary.game.combat.damage.DamageUtil_Package;
   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;

   type CollidableDestroyableDamageableBehavior is tagged;
   type CollidableDestroyableDamageableBehavior_Access is access all CollidableDestroyableDamageableBehavior'Class;
   type CollidableDestroyableDamageableBehavior_Access_Array is array (Natural range <>) of CollidableDestroyableDamageableBehavior_Access;
   type CollidableDestroyableDamageableBehavior_Access_Array_Access is access all CollidableDestroyableDamageableBehavior_Access_Array;

   type CollidableDestroyableDamageableBehavior is new CollidableBaseBehavior with record
      damageUtil : DamageUtil_Access;
   end record;

   procedure Initialize (This : in out CollidableDestroyableDamageableBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableDestroyableDamageableBehavior_Access;
   function isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollision (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collisionLayer : CollidableCompositeLayer_Access);
   procedure collide (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access);
   function isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean;
   procedure isCollisionInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);
   procedure collideInterface (This : in out CollidableDestroyableDamageableBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);

end org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;



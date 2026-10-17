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
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;

package org.allbinary.game.layer.special.CollidableCharacterBehavior_Package is

   package CollidableInterfaceCompositeInterface_Package renames org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
   package CollisionType_Package renames org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames org.allbinary.game.collision.CollisionTypeFactory_Package;
   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package PickedUpLayerInterface_Package renames org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;

   type CollidableCharacterBehavior is tagged;
   type CollidableCharacterBehavior_Access is access all CollidableCharacterBehavior'Class;
   type CollidableCharacterBehavior_Access_Array is array (Natural range <>) of CollidableCharacterBehavior_Access;
   type CollidableCharacterBehavior_Access_Array_Access is access all CollidableCharacterBehavior_Access_Array;

   type CollidableCharacterBehavior is new CollidableDestroyableDamageableBehavior with null record;

   procedure Initialize (This : in out CollidableCharacterBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableCharacterBehavior_Access;
   procedure collide (This : in out CollidableCharacterBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access);
   procedure collideInterface (This : in out CollidableCharacterBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);

end org.allbinary.game.layer.special.CollidableCharacterBehavior_Package;



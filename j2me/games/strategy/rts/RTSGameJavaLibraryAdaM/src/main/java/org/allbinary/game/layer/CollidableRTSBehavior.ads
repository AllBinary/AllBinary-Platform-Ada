-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.game.collision.CollisionType_Package; use org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.CollisionTypeFactory_Package; use org.allbinary.game.collision.CollisionTypeFactory_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;

package org.allbinary.game.layer.CollidableRTSBehavior_Package is

   package CollisionType_Package renames Standard.org.allbinary.game.collision.CollisionType_Package;
   package CollisionTypeFactory_Package renames Standard.org.allbinary.game.collision.CollisionTypeFactory_Package;
   package CollidableDestroyableDamageableBehavior_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior_Package;

   type CollidableRTSBehavior is tagged;
   type CollidableRTSBehavior_Access is access all CollidableRTSBehavior'Class;
   type CollidableRTSBehavior_Access_Array is array (Natural range <>) of CollidableRTSBehavior_Access;
   type CollidableRTSBehavior_Access_Array_Access is access all CollidableRTSBehavior_Access_Array;

   type CollidableRTSBehavior is new CollidableDestroyableDamageableBehavior with null record;

   procedure Initialize (This : in out CollidableRTSBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableRTSBehavior_Access;
   function isCollision (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollision (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access);
   procedure collide (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access);
   procedure collideNone (This : in out CollidableRTSBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterface : CollidableCompositeLayer_Access);

end org.allbinary.game.layer.CollidableRTSBehavior_Package;



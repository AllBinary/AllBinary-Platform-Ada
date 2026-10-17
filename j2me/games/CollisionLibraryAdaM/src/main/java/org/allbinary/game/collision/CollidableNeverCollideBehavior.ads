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
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package; use org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;

package org.allbinary.game.collision.CollidableNeverCollideBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;

   type CollidableNeverCollideBehavior is tagged;
   type CollidableNeverCollideBehavior_Access is access all CollidableNeverCollideBehavior'Class;
   type CollidableNeverCollideBehavior_Access_Array is array (Natural range <>) of CollidableNeverCollideBehavior_Access;
   type CollidableNeverCollideBehavior_Access_Array_Access is access all CollidableNeverCollideBehavior_Access_Array;

   type CollidableNeverCollideBehavior is new CollidableBaseBehavior with null record;

   procedure Initialize (This : in out CollidableNeverCollideBehavior'Class; isCollidable : Boolean);
   function Create (isCollidable : Boolean) return CollidableNeverCollideBehavior_Access;
   function isCollision (This : in out CollidableNeverCollideBehavior; ownerLayer : CollidableCompositeLayer_Access; allbinaryCollidableLayer : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollision (This : in out CollidableNeverCollideBehavior; ownerLayer : CollidableCompositeLayer_Access; allbinaryCollidableLayer : CollidableCompositeLayer_Access);
   procedure collide (This : in out CollidableNeverCollideBehavior; ownerLayer : CollidableCompositeLayer_Access; allbinaryCollidableLayer : CollidableCompositeLayer_Access);
   procedure collideInterface (This : in out CollidableNeverCollideBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);
   function isCollisionInterface (This : in out CollidableNeverCollideBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) return Boolean;
   procedure isCollisionInterface (This : in out CollidableNeverCollideBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access);

end org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;



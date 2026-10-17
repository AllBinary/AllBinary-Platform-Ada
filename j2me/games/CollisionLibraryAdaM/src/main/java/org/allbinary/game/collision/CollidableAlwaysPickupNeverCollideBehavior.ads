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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.CollidableNeverCollideBehavior_Package; use org.allbinary.game.collision.CollidableNeverCollideBehavior_Package;

package org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package is

   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

   type CollidableAlwaysPickupNeverCollideBehavior is tagged;
   type CollidableAlwaysPickupNeverCollideBehavior_Access is access all CollidableAlwaysPickupNeverCollideBehavior'Class;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array is array (Natural range <>) of CollidableAlwaysPickupNeverCollideBehavior_Access;
   type CollidableAlwaysPickupNeverCollideBehavior_Access_Array_Access is access all CollidableAlwaysPickupNeverCollideBehavior_Access_Array;

   type CollidableAlwaysPickupNeverCollideBehavior is new CollidableNeverCollideBehavior with null record;

   procedure Initialize (This : in out CollidableAlwaysPickupNeverCollideBehavior'Class);
   function Create return CollidableAlwaysPickupNeverCollideBehavior_Access;
   function getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface : AllBinaryLayer_Access) return CollisionType_Access;
   procedure getCollisionTypeWith (This : in out CollidableAlwaysPickupNeverCollideBehavior; layerInterface : AllBinaryLayer_Access);

end org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehavior_Package;



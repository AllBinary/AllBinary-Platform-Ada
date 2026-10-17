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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;

package org.allbinary.game.collision.CollidableInterface_Package is

   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package NamedInterface_Package renames org.allbinary.layer.NamedInterface_Package;

   type CollidableInterface is interface and NamedInterface;
   type CollidableInterface_Access is access all CollidableInterface'Class;
   type CollidableInterface_Access_Array is array (Natural range <>) of CollidableInterface_Access;
   type CollidableInterface_Access_Array_Access is access all CollidableInterface_Access_Array;
   function isCollidable (This : in out CollidableInterface; ownerLayer : CollidableCompositeLayer_Access) return Boolean is abstract;
   function isCollision (This : in out CollidableInterface; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) return Boolean is abstract;
   procedure collide (This : in out CollidableInterface; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is abstract;
   function getCollisionTypeWith (This : in out CollidableInterface; layerInterface : AllBinaryLayer_Access) return CollisionType_Access is abstract;

end org.allbinary.game.collision.CollidableInterface_Package;



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

package org.allbinary.game.collision.CollisionHelper_Package is

   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

   type CollisionHelper is tagged;
   type CollisionHelper_Access is access all CollisionHelper'Class;
   type CollisionHelper_Access_Array is array (Natural range <>) of CollisionHelper_Access;
   type CollisionHelper_Access_Array_Access is access all CollisionHelper_Access_Array;

   type CollisionHelper is new Java_Object with record
      sourceLayerInterface : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out CollisionHelper'Class; sourceLayerInterface : AllBinaryLayer_Access);
   function Create (sourceLayerInterface : AllBinaryLayer_Access) return CollisionHelper_Access;
   function isCollidable (This : in out CollisionHelper; layerInterface : CollidableCompositeLayer_Access) return Boolean;
   procedure isCollidable (This : in out CollisionHelper; layerInterface : CollidableCompositeLayer_Access);
   function getOwnerLayerInterface (This : in out CollisionHelper) return AllBinaryLayer_Access;
   procedure getOwnerLayerInterface (This : in out CollisionHelper);
   procedure setOwnerLayerInterface (This : in out CollisionHelper; sourceLayerInterface : AllBinaryLayer_Access);

end org.allbinary.game.collision.CollisionHelper_Package;



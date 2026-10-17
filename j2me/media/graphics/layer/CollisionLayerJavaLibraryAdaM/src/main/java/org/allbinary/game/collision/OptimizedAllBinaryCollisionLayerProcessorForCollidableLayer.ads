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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;

package org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;
   package LayerProcessor_Package renames Standard.org.allbinary.layer.LayerProcessor_Package;

   type OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer is tagged;
   type OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access is access all OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer'Class;
   type OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access_Array is array (Natural range <>) of OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access;
   type OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access_Array_Access is access all OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access_Array;

   type OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer is new LayerProcessor with null record;

   procedure Initialize (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer'Class);
   function Create return OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Access;
   procedure processAt (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; startIndex : Integer);
   function isProcessorLayer (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer; layerInterface : AllBinaryLayer_Access) return Boolean;
   procedure isProcessorLayer (This : in out OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer; layerInterface : AllBinaryLayer_Access);

end org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_Package;



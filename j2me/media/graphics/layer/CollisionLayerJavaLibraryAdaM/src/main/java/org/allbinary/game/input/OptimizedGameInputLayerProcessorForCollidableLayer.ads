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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;

package org.allbinary.game.input.OptimizedGameInputLayerProcessorForCollidableLayer_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerProcessor_Package renames Standard.org.allbinary.layer.LayerProcessor_Package;

   type OptimizedGameInputLayerProcessorForCollidableLayer is tagged;
   type OptimizedGameInputLayerProcessorForCollidableLayer_Access is access all OptimizedGameInputLayerProcessorForCollidableLayer'Class;
   type OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array is array (Natural range <>) of OptimizedGameInputLayerProcessorForCollidableLayer_Access;
   type OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array_Access is access all OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array;
   type OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array_Access_Array is array (Natural range <>) of OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array_Access;
   type OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array_Access_Array_Access is access all OptimizedGameInputLayerProcessorForCollidableLayer_Access_Array_Access_Array;

   type OptimizedGameInputLayerProcessorForCollidableLayer is new LayerProcessor with null record;

   procedure Initialize (This : in out OptimizedGameInputLayerProcessorForCollidableLayer'Class);
   function Create return OptimizedGameInputLayerProcessorForCollidableLayer_Access;
   procedure processAt (This : in out OptimizedGameInputLayerProcessorForCollidableLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   function isProcessorLayer (This : in out OptimizedGameInputLayerProcessorForCollidableLayer; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isProcessorLayer (This : in out OptimizedGameInputLayerProcessorForCollidableLayer; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.input.OptimizedGameInputLayerProcessorForCollidableLayer_Package;



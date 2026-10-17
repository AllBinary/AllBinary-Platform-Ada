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
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;

package org.allbinary.game.tick.OptimizedTickableLayerProcessor_Package is

   package AllBinaryGameLayer_Package renames org.allbinary.game.layer.AllBinaryGameLayer_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerProcessor_Package renames org.allbinary.layer.LayerProcessor_Package;

   type OptimizedTickableLayerProcessor is tagged;
   type OptimizedTickableLayerProcessor_Access is access all OptimizedTickableLayerProcessor'Class;
   type OptimizedTickableLayerProcessor_Access_Array is array (Natural range <>) of OptimizedTickableLayerProcessor_Access;
   type OptimizedTickableLayerProcessor_Access_Array_Access is access all OptimizedTickableLayerProcessor_Access_Array;

   type OptimizedTickableLayerProcessor is new LayerProcessor with null record;

   procedure Initialize (This : in out OptimizedTickableLayerProcessor'Class);
   function Create return OptimizedTickableLayerProcessor_Access;
   procedure processAt (This : in out OptimizedTickableLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access; layerInterface : AllBinaryLayer_Access; index : Integer);
   function isProcessorLayer (This : in out OptimizedTickableLayerProcessor; layerInterface : AllBinaryLayer_Access) return Boolean;
   procedure isProcessorLayer (This : in out OptimizedTickableLayerProcessor; layerInterface : AllBinaryLayer_Access);

end org.allbinary.game.tick.OptimizedTickableLayerProcessor_Package;



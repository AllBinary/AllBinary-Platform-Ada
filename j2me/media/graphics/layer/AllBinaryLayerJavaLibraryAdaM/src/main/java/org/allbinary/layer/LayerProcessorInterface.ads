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
with org.allbinary.layer.BasicLayerProcessorInterface_Package; use org.allbinary.layer.BasicLayerProcessorInterface_Package;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.layer.LayerProcessorInterface_Package is


   type LayerProcessorInterface is interface and BasicLayerProcessorInterface;
   type LayerProcessorInterface_Access is access all LayerProcessorInterface'Class;
   type LayerProcessorInterface_Access_Array is array (Natural range <>) of LayerProcessorInterface_Access;
   type LayerProcessorInterface_Access_Array_Access is access all LayerProcessorInterface_Access_Array;
   type LayerProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of LayerProcessorInterface_Access_Array_Access;
   type LayerProcessorInterface_Access_Array_Access_Array_Access is access all LayerProcessorInterface_Access_Array_Access_Array;
   function getLayerManager (This : in out LayerProcessorInterface) return LayerManager_Access is abstract;
   procedure processAt (This : in out LayerProcessorInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is abstract;
   function isProcessorLayer (This : in out LayerProcessorInterface; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean is abstract;

end org.allbinary.layer.LayerProcessorInterface_Package;



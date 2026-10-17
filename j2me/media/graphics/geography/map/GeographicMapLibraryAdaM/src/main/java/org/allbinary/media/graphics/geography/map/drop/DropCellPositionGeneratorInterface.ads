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
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package is

   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type DropCellPositionGeneratorInterface is interface;
   type DropCellPositionGeneratorInterface_Access is access all DropCellPositionGeneratorInterface'Class;
   type DropCellPositionGeneratorInterface_Access_Array is array (Natural range <>) of DropCellPositionGeneratorInterface_Access;
   type DropCellPositionGeneratorInterface_Access_Array_Access is access all DropCellPositionGeneratorInterface_Access_Array;
   function getName (This : in out DropCellPositionGeneratorInterface) return Unbounded_String is abstract;
   procedure update (This : in out DropCellPositionGeneratorInterface; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; geographicMapInterface : BasicGeographicMap_Access) is abstract;
   procedure processTick (This : in out DropCellPositionGeneratorInterface; allBinaryLayerManager : AllBinaryLayerManager_Access) is abstract;
   function isDropAllowedAt (This : in out DropCellPositionGeneratorInterface; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean is abstract;

end org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;



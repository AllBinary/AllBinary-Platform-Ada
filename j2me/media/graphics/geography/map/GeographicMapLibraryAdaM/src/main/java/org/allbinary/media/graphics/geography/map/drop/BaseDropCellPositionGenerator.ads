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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;

package org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

   type BaseDropCellPositionGenerator is tagged;
   type BaseDropCellPositionGenerator_Access is access all BaseDropCellPositionGenerator'Class;
   type BaseDropCellPositionGenerator_Access_Array is array (Natural range <>) of BaseDropCellPositionGenerator_Access;
   type BaseDropCellPositionGenerator_Access_Array_Access is access all BaseDropCellPositionGenerator_Access_Array;

   type BaseDropCellPositionGenerator is new DropCellPositionGeneratorInterface with null record;

   procedure Initialize (This : in out BaseDropCellPositionGenerator'Class);
   function Create return BaseDropCellPositionGenerator_Access;
   function getName (This : in out BaseDropCellPositionGenerator) return Unbounded_String;
   procedure update (This : in out BaseDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap'Class);
   function isDropAllowedAt (This : in out BaseDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return Boolean;
   procedure isDropAllowedAt (This : in out BaseDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);
   procedure processTick (This : in out BaseDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class);

end org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;



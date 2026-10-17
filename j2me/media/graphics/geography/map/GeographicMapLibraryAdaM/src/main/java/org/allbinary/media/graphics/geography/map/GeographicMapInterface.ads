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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;

   type GeographicMapInterface is interface;
   type GeographicMapInterface_Access is access all GeographicMapInterface'Class;
   type GeographicMapInterface_Access_Array is array (Natural range <>) of GeographicMapInterface_Access;
   type GeographicMapInterface_Access_Array_Access is access all GeographicMapInterface_Access_Array;
   function getId (This : in out GeographicMapInterface) return Integer is abstract;
   function getName (This : in out GeographicMapInterface) return Unbounded_String is abstract;
   procedure reset (This : in out GeographicMapInterface) is abstract;
   function getAllBinaryTiledLayer (This : in out GeographicMapInterface) return AllBinaryTiledLayer_Access is abstract;
   function getCellPositionsAt (This : in out GeographicMapInterface; layer_Param : access Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean is abstract;
   function getCellPositionAtXY (This : in out GeographicMapInterface; x : Integer; y : Integer) return GeographicMapCellPosition_Access is abstract;
   function getCellPositionAtXYNoThrow (This : in out GeographicMapInterface; x : Integer; y : Integer) return GeographicMapCellPosition_Access is abstract;
   function getCellTypeFromMapCellTypeInt (This : in out GeographicMapInterface; cellTypeId : Integer) return Integer is abstract;
   function getCellTypeAtXY (This : in out GeographicMapInterface; x : Integer; y : Integer) return GeographicMapCellType_Access is abstract;
   function getCellTypeAt (This : in out GeographicMapInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return GeographicMapCellType_Access is abstract;
   function getGeographicMapCellPositionFactory (This : in out GeographicMapInterface) return BasicGeographicMapCellPositionFactory_Access is abstract;
   function getGeographicMapCellPositionFactoryInterface (This : in out GeographicMapInterface) return GeographicMapCellPositionFactoryInterface_Access is abstract;
   function getForegroundBasicColor (This : in out GeographicMapInterface) return BasicColor_Access is abstract;
   function getBackgroundBasicColor (This : in out GeographicMapInterface) return BasicColor_Access is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;



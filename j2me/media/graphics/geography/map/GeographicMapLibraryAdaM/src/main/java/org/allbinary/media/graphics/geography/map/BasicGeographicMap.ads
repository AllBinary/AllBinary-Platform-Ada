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
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

package org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type BasicGeographicMap is tagged;
   type BasicGeographicMap_Access is access all BasicGeographicMap'Class;
   type BasicGeographicMap_Access_Array is array (Natural range <>) of BasicGeographicMap_Access;
   type BasicGeographicMap_Access_Array_Access is access all BasicGeographicMap_Access_Array;

   type BasicGeographicMap is new SimpleGeographicMap and GeographicMapInterface with record
      mathUtil : MathUtil_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access;
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
   end record;
   NULL_BASIC_GEOGRAPHIC_MAP_ARRAY : BasicGeographicMap_Access_Array_Access;

   procedure Initialize (This : in out BasicGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer : AllBinaryTiledLayer_Access; foregroundBasicColor : BasicColor_Access; backgroundBasicColor : BasicColor_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access);
   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer : AllBinaryTiledLayer_Access; foregroundBasicColor : BasicColor_Access; backgroundBasicColor : BasicColor_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) return BasicGeographicMap_Access;
   function getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access;
   procedure getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access;
   procedure getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition : GeographicMapCellPosition_Access; newGeographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition : GeographicMapCellPosition_Access; newGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer);
   function getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer);
   function isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList : BasicArrayList_Access);
   function getCellPositionsAt (This : in out BasicGeographicMap; layer : Layer_Access; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean;
   procedure getCellPositionsAt (This : in out BasicGeographicMap; layer : Layer_Access; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access);
   function getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access;
   procedure getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer);
   function getGeographicMapCellPositionFactory (This : in out BasicGeographicMap) return BasicGeographicMapCellPositionFactory_Access;
   function getGeographicMapCellPositionFactoryInterface (This : in out BasicGeographicMap) return GeographicMapCellPositionFactoryInterface_Access;
   function getGeographicMapCellTypeFactory (This : in out BasicGeographicMap) return GeographicMapCellTypeFactory_Access;

end org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;



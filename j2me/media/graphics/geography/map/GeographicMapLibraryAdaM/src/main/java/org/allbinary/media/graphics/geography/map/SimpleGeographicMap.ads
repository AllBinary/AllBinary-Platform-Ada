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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type SimpleGeographicMap is tagged;
   type SimpleGeographicMap_Access is access all SimpleGeographicMap'Class;
   type SimpleGeographicMap_Access_Array is array (Natural range <>) of SimpleGeographicMap_Access;
   type SimpleGeographicMap_Access_Array_Access is access all SimpleGeographicMap_Access_Array;

   type SimpleGeographicMap is new Java_Object with record
      commonStrings : CommonStrings_Access;
      id : Integer;
      name : Unbounded_String;
      cellTypeIdToGeographicMapCellType : Integer_Array_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      foregroundBasicColor : BasicColor_Access;
      backgroundBasicColor : BasicColor_Access;
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
   end record;

   procedure Initialize (This : in out SimpleGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor'Class; backgroundBasicColor_Param : access BasicColor'Class);
   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor'Class; backgroundBasicColor_Param : access BasicColor'Class) return SimpleGeographicMap_Access;
   function getId (This : in out SimpleGeographicMap) return Integer;
   function getName (This : in out SimpleGeographicMap) return Unbounded_String;
   procedure reset (This : in out SimpleGeographicMap);
   function getAllBinaryTiledLayer (This : in out SimpleGeographicMap) return AllBinaryTiledLayer_Access;
   function getCellTypeAt (This : in out SimpleGeographicMap; cellPosition_Param : access GeographicMapCellPosition'Class) return GeographicMapCellType_Access;
   procedure getCellTypeAt (This : in out SimpleGeographicMap; cellPosition_Param : access GeographicMapCellPosition'Class);
   function getCellTypeFromMapCellTypeInt (This : in out SimpleGeographicMap; cellTypeId : Integer) return Integer;
   procedure getCellTypeFromMapCellTypeInt (This : in out SimpleGeographicMap; cellTypeId : Integer);
   function getForegroundBasicColor (This : in out SimpleGeographicMap) return BasicColor_Access;
   procedure setForegroundBasicColor (This : in out SimpleGeographicMap; foregroundBasicColor_Param : access BasicColor'Class);
   function getBackgroundBasicColor (This : in out SimpleGeographicMap) return BasicColor_Access;
   procedure setBackgroundBasicColor (This : in out SimpleGeographicMap; backgroundBasicColor_Param : access BasicColor'Class);

end org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;



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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package is


   type SimpleGeographicMapCellPositionFactory is tagged;
   type SimpleGeographicMapCellPositionFactory_Access is access all SimpleGeographicMapCellPositionFactory'Class;
   type SimpleGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of SimpleGeographicMapCellPositionFactory_Access;
   type SimpleGeographicMapCellPositionFactory_Access_Array_Access is access all SimpleGeographicMapCellPositionFactory_Access_Array;
   type SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of SimpleGeographicMapCellPositionFactory_Access_Array_Access;
   type SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array;

   type SimpleGeographicMapCellPositionFactory is new Java_Object and GeographicMapCellPositionFactoryInterface with null record;
   NULL_GEOGRAPHIC_MAP_CELL_POSITION : GeographicMapCellPosition_Access;

   procedure Initialize (This : in out SimpleGeographicMapCellPositionFactory'Class);
   function Create return SimpleGeographicMapCellPositionFactory_Access;
   function getInstance (This : in out SimpleGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure getInstance (This : in out SimpleGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer);

end org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;



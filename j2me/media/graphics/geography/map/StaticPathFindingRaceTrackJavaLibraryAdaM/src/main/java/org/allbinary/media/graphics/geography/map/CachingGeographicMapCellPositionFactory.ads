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
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package is


   type CachingGeographicMapCellPositionFactory is tagged;
   type CachingGeographicMapCellPositionFactory_Access is access all CachingGeographicMapCellPositionFactory'Class;
   type CachingGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of CachingGeographicMapCellPositionFactory_Access;
   type CachingGeographicMapCellPositionFactory_Access_Array_Access is access all CachingGeographicMapCellPositionFactory_Access_Array;
   type CachingGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of CachingGeographicMapCellPositionFactory_Access_Array_Access;
   type CachingGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all CachingGeographicMapCellPositionFactory_Access_Array_Access_Array;

   type CachingGeographicMapCellPositionFactory is new BasicGeographicMapCellPositionFactory with null record;

   procedure Initialize (This : in out CachingGeographicMapCellPositionFactory'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return CachingGeographicMapCellPositionFactory_Access;
   function createInstance (This : in out CachingGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure createInstance (This : in out CachingGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer);

end org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package;



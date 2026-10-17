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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryTiledLayer_Package renames org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type BasicGeographicMapCellPositionFactory is tagged;
   type BasicGeographicMapCellPositionFactory_Access is access all BasicGeographicMapCellPositionFactory'Class;
   type BasicGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of BasicGeographicMapCellPositionFactory_Access;
   type BasicGeographicMapCellPositionFactory_Access_Array_Access is access all BasicGeographicMapCellPositionFactory_Access_Array;

   type BasicGeographicMapCellPositionFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      geographicMapCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access;
      columns : Integer;
      rows : Integer;
      tiledLayer : AllBinaryTiledLayer_Access;
   end record;

   procedure Initialize (This : in out BasicGeographicMapCellPositionFactory'Class; geographicMapInterface : BasicGeographicMap_Access);
   function Create (geographicMapInterface : BasicGeographicMap_Access) return BasicGeographicMapCellPositionFactory_Access;
   procedure init (This : in out BasicGeographicMapCellPositionFactory);
   procedure visit (This : in out BasicGeographicMapCellPositionFactory; geographicMapCelPositionFactoryInitVisitorInterface : GeographicMapCellPositionFactoryInitVisitorInterface_Access);
   function getAt (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer) return GeographicMapCellPosition_Access;
   procedure getAt (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer);
   function getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access;
   procedure getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer);
   function getColumns (This : in out BasicGeographicMapCellPositionFactory) return Integer;
   procedure getColumns (This : in out BasicGeographicMapCellPositionFactory);
   function getRows (This : in out BasicGeographicMapCellPositionFactory) return Integer;
   procedure getRows (This : in out BasicGeographicMapCellPositionFactory);

end org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;



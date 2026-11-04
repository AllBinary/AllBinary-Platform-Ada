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

limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
package org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References is
   type BasicGeographicMapCellPositionFactory_Access is access all org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package.BasicGeographicMapCellPositionFactory'Class;
   type BasicGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of BasicGeographicMapCellPositionFactory_Access;
   type BasicGeographicMapCellPositionFactory_Access_Array_Access is access all BasicGeographicMapCellPositionFactory_Access_Array;
   type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of BasicGeographicMapCellPositionFactory_Access_Array_Access;
   type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;

with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References;

package org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   use type GeographicMapCellPositionFactoryInterface_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   use type GeographicMapCellPositionFactoryInterface_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access;
   use type GeographicMapCellPositionFactoryInitVisitorInterface_Access;
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array;
   use type GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array;
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array;
   use type GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array;
   subtype GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package_References.GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";

   type BasicGeographicMapCellPositionFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      geographicMapCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access;
      columns : Integer;
      rows : Integer;
      tiledLayer : AllBinaryTiledLayer_Access;
   end record;

   procedure Initialize (This : in out BasicGeographicMapCellPositionFactory'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access;
   procedure init (This : in out BasicGeographicMapCellPositionFactory);
   procedure visit (This : in out BasicGeographicMapCellPositionFactory; geographicMapCelPositionFactoryInitVisitorInterface_Param : access GeographicMapCellPositionFactoryInitVisitorInterface_Package.GeographicMapCellPositionFactoryInitVisitorInterface'Class);
   function getAt (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer) return GeographicMapCellPosition_Access;
   procedure getAt (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer);
   function getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access;
   procedure getInstance (This : in out BasicGeographicMapCellPositionFactory; anotherMapGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure createInstance (This : in out BasicGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer);
   function getColumns (This : in out BasicGeographicMapCellPositionFactory) return Integer;
   function getRows (This : in out BasicGeographicMapCellPositionFactory) return Integer;

end org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;



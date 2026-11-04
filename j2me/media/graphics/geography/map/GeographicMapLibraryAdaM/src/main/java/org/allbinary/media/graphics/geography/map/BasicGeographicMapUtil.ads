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

limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
package org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References is
   type BasicGeographicMapUtil_Access is access all org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package.BasicGeographicMapUtil'Class;
   type BasicGeographicMapUtil_Access_Array is array (Natural range <>) of BasicGeographicMapUtil_Access;
   type BasicGeographicMapUtil_Access_Array_Access is access all BasicGeographicMapUtil_Access_Array;
   type BasicGeographicMapUtil_Access_Array_Access_Array is array (Natural range <>) of BasicGeographicMapUtil_Access_Array_Access;
   type BasicGeographicMapUtil_Access_Array_Access_Array_Access is access all BasicGeographicMapUtil_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References;

with org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package is

   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   use type Layer_Access;
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   use type Layer_Access_Array;
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   use type Layer_Access_Array_Access;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   use type Layer_Access_Array_Access_Array;
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   use type Layer_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicGeographicMapUtil_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References.BasicGeographicMapUtil_Access;
   function "=" (Left, Right : BasicGeographicMapUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References."=";
   subtype BasicGeographicMapUtil_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References.BasicGeographicMapUtil_Access_Array;
   function "=" (Left, Right : BasicGeographicMapUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References."=";
   subtype BasicGeographicMapUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References.BasicGeographicMapUtil_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References."=";
   subtype BasicGeographicMapUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References.BasicGeographicMapUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMapUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References."=";
   subtype BasicGeographicMapUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References.BasicGeographicMapUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package_References."=";

   type BasicGeographicMapUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicGeographicMapUtil_Access;

   procedure Initialize (This : in out BasicGeographicMapUtil'Class);
   function Create return BasicGeographicMapUtil_Access;
   function getInstance return BasicGeographicMapUtil_Access;
   function getBorderingRow (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer;
   procedure getBorderingRow (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getBorderingColumn (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer;
   procedure getBorderingColumn (This : in out BasicGeographicMapUtil; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function isSameCellPosition (This : in out BasicGeographicMapUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure isSameCellPosition (This : in out BasicGeographicMapUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function createAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access) return Layer_Access_Array_Access;
   procedure createAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access);
   function getAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; tiledLayerArray : Layer_Access_Array_Access; startIndex : Integer) return Layer_Access_Array_Access;
   procedure getAllBinaryTiledLayerArray (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; tiledLayerArray : Layer_Access_Array_Access; startIndex : Integer);
   procedure move (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; dx : Integer; dy : Integer);
   procedure setPosition (This : in out BasicGeographicMapUtil; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer);

end org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;



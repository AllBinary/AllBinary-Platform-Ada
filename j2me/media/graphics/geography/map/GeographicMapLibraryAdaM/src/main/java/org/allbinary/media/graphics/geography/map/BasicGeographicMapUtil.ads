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
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package is

   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type BasicGeographicMapUtil is tagged;
   type BasicGeographicMapUtil_Access is access all BasicGeographicMapUtil'Class;
   type BasicGeographicMapUtil_Access_Array is array (Natural range <>) of BasicGeographicMapUtil_Access;
   type BasicGeographicMapUtil_Access_Array_Access is access all BasicGeographicMapUtil_Access_Array;

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



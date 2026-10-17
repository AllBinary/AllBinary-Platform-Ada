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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package is


   type GeographicMapCellPositionFactoryInterface is interface;
   type GeographicMapCellPositionFactoryInterface_Access is access all GeographicMapCellPositionFactoryInterface'Class;
   type GeographicMapCellPositionFactoryInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactoryInterface_Access;
   type GeographicMapCellPositionFactoryInterface_Access_Array_Access is access all GeographicMapCellPositionFactoryInterface_Access_Array;
   function getInstance (This : in out GeographicMapCellPositionFactoryInterface; geographicMapInterface : BasicGeographicMap_Access; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;



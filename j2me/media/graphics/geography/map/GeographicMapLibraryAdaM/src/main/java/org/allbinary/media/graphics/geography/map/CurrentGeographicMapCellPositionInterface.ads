-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package is


   type CurrentGeographicMapCellPositionInterface is interface;
   type CurrentGeographicMapCellPositionInterface_Access is access all CurrentGeographicMapCellPositionInterface'Class;
   type CurrentGeographicMapCellPositionInterface_Access_Array is array (Natural range <>) of CurrentGeographicMapCellPositionInterface_Access;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access is access all CurrentGeographicMapCellPositionInterface_Access_Array;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array is array (Natural range <>) of CurrentGeographicMapCellPositionInterface_Access_Array_Access;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access is access all CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array;
   function getCurrentGeographicMapCellPosition (This : in out CurrentGeographicMapCellPositionInterface) return GeographicMapCellPosition_Access is abstract;

end org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package;



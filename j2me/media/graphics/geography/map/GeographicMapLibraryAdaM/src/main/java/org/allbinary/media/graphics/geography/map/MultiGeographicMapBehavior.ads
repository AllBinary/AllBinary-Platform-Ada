-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package is


   type MultiGeographicMapBehavior is tagged;
   type MultiGeographicMapBehavior_Access is access all MultiGeographicMapBehavior'Class;
   type MultiGeographicMapBehavior_Access_Array is array (Natural range <>) of MultiGeographicMapBehavior_Access;
   type MultiGeographicMapBehavior_Access_Array_Access is access all MultiGeographicMapBehavior_Access_Array;

   type MultiGeographicMapBehavior is new Java_Object with null record;

   procedure Initialize (This : in out MultiGeographicMapBehavior'Class);
   function Create return MultiGeographicMapBehavior_Access;
   function getCellTypeAt (This : in out MultiGeographicMapBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return GeographicMapCellType_Access_Array_Access;
   procedure getCellTypeAt (This : in out MultiGeographicMapBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;



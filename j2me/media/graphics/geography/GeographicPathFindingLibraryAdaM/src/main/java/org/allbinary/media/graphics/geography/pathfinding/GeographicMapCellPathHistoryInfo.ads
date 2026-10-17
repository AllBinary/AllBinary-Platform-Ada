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
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

package org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

   type GeographicMapCellPathHistoryInfo is tagged;
   type GeographicMapCellPathHistoryInfo_Access is access all GeographicMapCellPathHistoryInfo'Class;
   type GeographicMapCellPathHistoryInfo_Access_Array is array (Natural range <>) of GeographicMapCellPathHistoryInfo_Access;
   type GeographicMapCellPathHistoryInfo_Access_Array_Access is access all GeographicMapCellPathHistoryInfo_Access_Array;

   type GeographicMapCellPathHistoryInfo is new Java_Object with record
      previousGeographicMapCellPosition : GeographicMapCellPosition_Access;
      previousOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      nextUnvisitedOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      nextOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      nextChosenOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPathHistoryInfo'Class);
   function Create return GeographicMapCellPathHistoryInfo_Access;
   function getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextUnvisitedOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure setNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextChosenOnPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;



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

   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

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
   procedure getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo);
   procedure setPreviousGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure getPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo);
   procedure setPreviousOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; previousOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure getNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo);
   procedure setNextUnvisitedOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextUnvisitedOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure getNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo);
   procedure setNextOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access);
   function getNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo) return GeographicMapCellPosition_Access;
   procedure getNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo);
   procedure setNextChosenOnPathGeographicMapCellPosition (This : in out GeographicMapCellPathHistoryInfo; nextChosenOnPathGeographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;



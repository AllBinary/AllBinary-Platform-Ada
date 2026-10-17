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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.PathData_Package; use org.allbinary.media.graphics.geography.map.PathData_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package;

package org.allbinary.media.graphics.geography.pathfinding.StaticPathGenerator_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CellPosition_Package renames org.allbinary.graphics.CellPosition_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellHistory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package PathData_Package renames org.allbinary.media.graphics.geography.map.PathData_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;

   type StaticPathGenerator is tagged;
   type StaticPathGenerator_Access is access all StaticPathGenerator'Class;
   type StaticPathGenerator_Access_Array is array (Natural range <>) of StaticPathGenerator_Access;
   type StaticPathGenerator_Access_Array_Access is access all StaticPathGenerator_Access_Array;

   type StaticPathGenerator is new PathGeneratorInterface with record
      logUtil : LogUtil_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;

   procedure Initialize (This : in out StaticPathGenerator'Class);
   function Create return StaticPathGenerator_Access;
   procedure init (This : in out StaticPathGenerator; geographicMapInterface : Java_Object_Access; totalPaths : Integer);
   function getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (This : in out StaticPathGenerator; geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access; pathList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (This : in out StaticPathGenerator; geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access; pathList : BasicArrayList_Access);
   function createList (This : in out StaticPathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access;
   procedure createList (This : in out StaticPathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer);

end org.allbinary.media.graphics.geography.pathfinding.StaticPathGenerator_Package;



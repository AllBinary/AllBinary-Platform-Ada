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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;
with org.allbinary.game.ai.path.BasicDirectionAIHelper_Package; use org.allbinary.game.ai.path.BasicDirectionAIHelper_Package;

package org.allbinary.game.ai.path.BasicAIProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package GeographicMapCellPathHistoryInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo_Package;

   type BasicAIProcessor is tagged;
   type BasicAIProcessor_Access is access all BasicAIProcessor'Class;
   type BasicAIProcessor_Access_Array is array (Natural range <>) of BasicAIProcessor_Access;
   type BasicAIProcessor_Access_Array_Access is access all BasicAIProcessor_Access_Array;
   type BasicAIProcessor_Access_Array_Access_Array is array (Natural range <>) of BasicAIProcessor_Access_Array_Access;
   type BasicAIProcessor_Access_Array_Access_Array_Access is access all BasicAIProcessor_Access_Array_Access_Array;

   type BasicAIProcessor is new Java_Object with record
      name : Unbounded_String;
      geographicMapCellHistory : GeographicMapCellHistory_Access;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
      geographicMapCellPathHistoryInfo : GeographicMapCellPathHistoryInfo_Access;
      basicAI : BasicDirectionAIHelper_Access;
      geographicMapDirectionUtil : GeographicMapDirectionUtil_Access;
   end record;

   procedure Initialize (This : in out BasicAIProcessor'Class; name : Unbounded_String; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; seed : Integer);
   function Create (name : Unbounded_String; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; seed : Integer) return BasicAIProcessor_Access;
   procedure setNewPath (This : in out BasicAIProcessor; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; chosenPathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure init (This : in out BasicAIProcessor);
   function goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer;
   procedure goTowardNextChosenOnPathPosition (This : in out BasicAIProcessor; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure update (This : in out BasicAIProcessor);
   function processAI (This : in out BasicAIProcessor; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Integer;
   procedure processAI (This : in out BasicAIProcessor; myManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getName (This : in out BasicAIProcessor) return Unbounded_String;
   procedure setName (This : in out BasicAIProcessor; name : Unbounded_String);
   function getGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor) return GeographicMapCellPathHistoryInfo_Access;
   procedure setGeographicMapCellPathHistoryInfo (This : in out BasicAIProcessor; geographicMapCellPathHistoryInfo_Param : access GeographicMapCellPathHistoryInfo_Package.GeographicMapCellPathHistoryInfo'Class);
   function getGeographicMapCellHistory (This : in out BasicAIProcessor) return GeographicMapCellHistory_Access;
   procedure setGeographicMapCellHistory (This : in out BasicAIProcessor; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class);

end org.allbinary.game.ai.path.BasicAIProcessor_Package;



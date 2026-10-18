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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.NamedAngle_Package; use org.allbinary.math.NamedAngle_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.RTSLayerLogHelper_Package; use org.allbinary.game.layer.RTSLayerLogHelper_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;

package org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package NamedAngle_Package renames Standard.org.allbinary.math.NamedAngle_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type RTSLayerSelectedLogHelper is tagged;
   type RTSLayerSelectedLogHelper_Access is access all RTSLayerSelectedLogHelper'Class;
   type RTSLayerSelectedLogHelper_Access_Array is array (Natural range <>) of RTSLayerSelectedLogHelper_Access;
   type RTSLayerSelectedLogHelper_Access_Array_Access is access all RTSLayerSelectedLogHelper_Access_Array;
   type RTSLayerSelectedLogHelper_Access_Array_Access_Array is array (Natural range <>) of RTSLayerSelectedLogHelper_Access_Array_Access;
   type RTSLayerSelectedLogHelper_Access_Array_Access_Array_Access is access all RTSLayerSelectedLogHelper_Access_Array_Access_Array;

   type RTSLayerSelectedLogHelper is new RTSLayerLogHelper with record
      logUtil : LogUtil_Access;
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      TRACKTO_TURNTO : Unbounded_String;
   end record;
   instanceC : RTSLayerSelectedLogHelper_Access;

   procedure Initialize (This : in out RTSLayerSelectedLogHelper'Class);
   function Create return RTSLayerSelectedLogHelper_Access;
   function getInstance return RTSLayerSelectedLogHelper_Access;
   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; pathsList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure trackTo (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; nextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; dx : Integer; dy : Integer; reason : Unbounded_String);
   procedure turnTo (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; dx : Integer; dy : Integer; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; angle : Integer; movementAngle_Param : access NamedAngle_Package.NamedAngle'Class; evading : Boolean; targetAngle : Integer);
   procedure doneMoving (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure closeEnough (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingLeft (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingRight (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingUp (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure movingDown (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure currentMoveEnded (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure evade (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure rotateLeft (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure rotateRight (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure handle (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; movementAngle_Param : access NamedAngle_Package.NamedAngle'Class);
   procedure noRotation (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);
   procedure notOnPath (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; currentGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package;



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
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
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
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access);
   procedure trackTo (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; dx : Integer; dy : Integer; reason : Unbounded_String);
   procedure turnTo (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer; angleInfo : AngleInfo_Access; angle : Integer; movementAngle : NamedAngle_Access; evading : Boolean; targetAngle : Integer);
   procedure doneMoving (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure closeEnough (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingLeft (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingRight (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingUp (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingDown (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure currentMoveEnded (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure evade (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure rotateLeft (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure rotateRight (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure handle (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; movementAngle : NamedAngle_Access);
   procedure noRotation (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure notOnPath (This : in out RTSLayerSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; currentGeographicMapCellPosition : GeographicMapCellPosition_Access; pathList : BasicArrayList_Access);

end org.allbinary.game.layer.RTSLayerSelectedLogHelper_Package;



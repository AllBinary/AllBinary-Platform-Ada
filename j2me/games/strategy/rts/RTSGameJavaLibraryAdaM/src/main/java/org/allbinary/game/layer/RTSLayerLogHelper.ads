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
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.NamedAngle_Package; use org.allbinary.math.NamedAngle_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.RTSLayerLogHelper_Package is

   package AngleInfo_Package renames org.allbinary.math.AngleInfo_Package;
   package NamedAngle_Package renames org.allbinary.math.NamedAngle_Package;
   package GeographicMapCellHistory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type RTSLayerLogHelper is tagged;
   type RTSLayerLogHelper_Access is access all RTSLayerLogHelper'Class;
   type RTSLayerLogHelper_Access_Array is array (Natural range <>) of RTSLayerLogHelper_Access;
   type RTSLayerLogHelper_Access_Array_Access is access all RTSLayerLogHelper_Access_Array;

   type RTSLayerLogHelper is new Java_Object with null record;
   instance : RTSLayerLogHelper_Access;

   procedure Initialize (This : in out RTSLayerLogHelper'Class);
   function Create return RTSLayerLogHelper_Access;
   function getInstance return RTSLayerLogHelper_Access;
   procedure getInstance;
   procedure setClosestGeographicMapCellHistory (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access);
   procedure trackTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; dx : Integer; dy : Integer; reason : Unbounded_String);
   procedure turnTo (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer; angleInfo : AngleInfo_Access; angle : Integer; movementAngle : NamedAngle_Access; evading : Boolean; targetAngle : Integer);
   procedure doneMoving (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure closeEnough (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingUp (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure movingDown (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure currentMoveEnded (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure evade (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure rotateLeft (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure rotateRight (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure handle (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; movementAngle : NamedAngle_Access);
   procedure noRotation (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure notOnPath (This : in out RTSLayerLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; currentGeographicMapCellPosition : GeographicMapCellPosition_Access; pathList : BasicArrayList_Access);

end org.allbinary.game.layer.RTSLayerLogHelper_Package;



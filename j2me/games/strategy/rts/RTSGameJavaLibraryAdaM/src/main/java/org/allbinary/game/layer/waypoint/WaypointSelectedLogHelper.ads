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
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package; use org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;

package org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package is

   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package WaypointBehaviorBase_Package renames Standard.org.allbinary.game.layer.WaypointBehaviorBase_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type WaypointSelectedLogHelper is tagged;
   type WaypointSelectedLogHelper_Access is access all WaypointSelectedLogHelper'Class;
   type WaypointSelectedLogHelper_Access_Array is array (Natural range <>) of WaypointSelectedLogHelper_Access;
   type WaypointSelectedLogHelper_Access_Array_Access is access all WaypointSelectedLogHelper_Access_Array;

   type WaypointSelectedLogHelper is new WaypointLogHelper with record
      logUtil : LogUtil_Access;
      commonSeps : CommonSeps_Access;
      stringUtil : StringUtil_Access;
   end record;
   instanceC : WaypointSelectedLogHelper_Access;

   procedure Initialize (This : in out WaypointSelectedLogHelper'Class);
   function Create return WaypointSelectedLogHelper_Access;
   function getInstance return WaypointSelectedLogHelper_Access;
   procedure getInstance;
   procedure onWaypointEvent (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure addWaypointFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure addWaypointFromBuildingList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access; list : BasicArrayList_Access);
   procedure insertWaypoint (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String);
   procedure insertWaypointList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String; list : BasicArrayList_Access);
   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access);
   procedure moveAwayFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure needToMove (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior : WaypointBehaviorBase_Access);
   procedure setRandomGeographicMapCellHistory (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access);
   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingCurrentPathGeographicMapCellPosition : GeographicMapCellPosition_Access; currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;



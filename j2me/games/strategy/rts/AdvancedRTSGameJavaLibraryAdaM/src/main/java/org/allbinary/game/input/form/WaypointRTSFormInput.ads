-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.WaypointRTSFormInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type WaypointRTSFormInput is tagged;
   type WaypointRTSFormInput_Access is access all WaypointRTSFormInput'Class;
   type WaypointRTSFormInput_Access_Array is array (Natural range <>) of WaypointRTSFormInput_Access;
   type WaypointRTSFormInput_Access_Array_Access is access all WaypointRTSFormInput_Access_Array;
   type WaypointRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of WaypointRTSFormInput_Access_Array_Access;
   type WaypointRTSFormInput_Access_Array_Access_Array_Access is access all WaypointRTSFormInput_Access_Array_Access_Array;

   type WaypointRTSFormInput is new RTSFormInput with record
      WAYPOINT_EVENT : RTSLayerEvent_Access;
      dragToSpotGameNotificationEvent : GameNotificationEvent_Access;
      spotTakenGameNotificationEvent : GameNotificationEvent_Access;
      buildingCollisionGameNotificationEvent : GameNotificationEvent_Access;
      roadCollisionGameNotificationEvent : GameNotificationEvent_Access;
      newWaypointGameNotificationEvent : GameNotificationEvent_Access;
      noMoneyGameNotificationEvent : GameNotificationEvent_Access;
      isPrimaryWaypointCreator : Boolean;
      stickyAssociatedRtsLayer : PathFindingLayerInterface_Access;
   end record;

   procedure Initialize (This : in out WaypointRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean);
   function Create (groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean) return WaypointRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out WaypointRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure processAtPoint (This : in out WaypointRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class);
   procedure processCellPosition (This : in out WaypointRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure processStickyGameSpecific (This : in out WaypointRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer);
   function attemptBuild (This : in out WaypointRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer) return Boolean;
   procedure attemptBuild (This : in out WaypointRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer);
   procedure addWayPoint (This : in out WaypointRTSFormInput; layerInterface_Param : access WaypointLayer_Package.WaypointLayer'Class);

end org.allbinary.game.input.form.WaypointRTSFormInput_Package;



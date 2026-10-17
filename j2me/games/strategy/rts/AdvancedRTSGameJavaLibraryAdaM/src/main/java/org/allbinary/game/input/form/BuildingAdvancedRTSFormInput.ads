-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.building.event.BuildingEventHandler_Package; use org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
with org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package; use org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
with org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package; use org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.game.input.form.BuildingRTSFormInput_Package; use org.allbinary.game.input.form.BuildingRTSFormInput_Package;

package org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package is

   package AdvancedPlayerOwnedRTSLayers_Package renames Standard.org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
   package AdvancedRTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package BuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
   package LocalPlayerBuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;
   package WaypointCellPositionHistory_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointCellPositionHistory_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type BuildingAdvancedRTSFormInput is tagged;
   type BuildingAdvancedRTSFormInput_Access is access all BuildingAdvancedRTSFormInput'Class;
   type BuildingAdvancedRTSFormInput_Access_Array is array (Natural range <>) of BuildingAdvancedRTSFormInput_Access;
   type BuildingAdvancedRTSFormInput_Access_Array_Access is access all BuildingAdvancedRTSFormInput_Access_Array;

   type BuildingAdvancedRTSFormInput is new BuildingRTSFormInput with record
      atLeastOneHouseGameNotificationEvent : GameNotificationEvent_Access;
      BUILD_BUILDING_RTS_LAYER_EVENT : RTSLayerEvent_Access;
   end record;

   procedure Initialize (This : in out BuildingAdvancedRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean);
   function Create (groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) return BuildingAdvancedRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out BuildingAdvancedRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class);
   function isPositionBlocked (This : in out BuildingAdvancedRTSFormInput) return Boolean;
   function isBuildAttemptValid (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer'Class) return Boolean;
   procedure isBuildAttemptValid (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer'Class);
   procedure add (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer'Class);

end org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package;



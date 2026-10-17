-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.game.input.RTSPlayerGameInput_Package; use org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package; use org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.media.audio.BuildingSound_Package; use org.allbinary.media.audio.BuildingSound_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package; use org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.BuildingRTSFormInput_Package is

   package RTSPlayerGameInput_Package renames Standard.org.allbinary.game.input.RTSPlayerGameInput_Package;
   package DemoLockedWithCostLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;
   package GeographicMapCellPositionAreaBase_Package renames Standard.org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package Capital_Package renames Standard.org.allbinary.game.layer.capital.Capital_Package;
   package LayerInterfaceFactoryImageItem_Package renames Standard.org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package BuildingSound_Package renames Standard.org.allbinary.media.audio.BuildingSound_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package RaceTrackGeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;

   type BuildingRTSFormInput is tagged;
   type BuildingRTSFormInput_Access is access all BuildingRTSFormInput'Class;
   type BuildingRTSFormInput_Access_Array is array (Natural range <>) of BuildingRTSFormInput_Access;
   type BuildingRTSFormInput_Access_Array_Access is access all BuildingRTSFormInput_Access_Array;

   type BuildingRTSFormInput is new RTSFormInput with record
      isUnitProducer : Boolean;
      buildOnPathGameNotificationEvent : GameNotificationEvent_Access;
      spotTakenGameNotificationEvent : GameNotificationEvent_Access;
      selectBuildSpotGameNotificationEvent : GameNotificationEvent_Access;
      roadCollisionGameNotificationEvent : GameNotificationEvent_Access;
      noMoneyGameNotificationEvent : GameNotificationEvent_Access;
      buildingCollisionGameNotificationEvent : GameNotificationEvent_Access;
      structureToCloseCollisionGameNotificationEvent : GameNotificationEvent_Access;
      buildingGameNotificationEvent : GameNotificationEvent_Access;
      mapEdgeGameNotificationEvent : GameNotificationEvent_Access;
      dropCellPositionHistory : DropCellPositionHistory_Access;
   end record;

   procedure Initialize (This : in out BuildingRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean);
   function Create (groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) return BuildingRTSFormInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out BuildingRTSFormInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   procedure processGameSpecific (This : in out BuildingRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; itemIndex : Integer);
   function isPositionBlocked (This : in out BuildingRTSFormInput) return Boolean;
   procedure isPositionBlocked (This : in out BuildingRTSFormInput);
   function isDemoLocked (This : in out BuildingRTSFormInput; item : ABCustomItem_Access) return Boolean;
   procedure isDemoLocked (This : in out BuildingRTSFormInput; item : ABCustomItem_Access);
   procedure buildFromMotionInput (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; itemIndex : Integer);
   function attemptBuild (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; layerInterface : RTSLayer_Access; itemIndex : Integer) return Boolean;
   procedure attemptBuild (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; layerInterface : RTSLayer_Access; itemIndex : Integer);
   function isBuildAttemptValid (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerInterface : RTSLayer_Access) return Boolean;
   procedure isBuildAttemptValid (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerInterface : RTSLayer_Access);
   procedure add (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; layerInterface : RTSLayer_Access);
   function isSurroundingCellsOffMap (This : in out BuildingRTSFormInput; layerInterface : RTSLayer_Access) return Boolean;
   procedure isSurroundingCellsOffMap (This : in out BuildingRTSFormInput; layerInterface : RTSLayer_Access);

end org.allbinary.game.input.form.BuildingRTSFormInput_Package;



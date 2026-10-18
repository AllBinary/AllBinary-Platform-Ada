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
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.BuildingRTSFormInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;

   type BuildingRTSFormInput is tagged;
   type BuildingRTSFormInput_Access is access all BuildingRTSFormInput'Class;
   type BuildingRTSFormInput_Access_Array is array (Natural range <>) of BuildingRTSFormInput_Access;
   type BuildingRTSFormInput_Access_Array_Access is access all BuildingRTSFormInput_Access_Array;
   type BuildingRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of BuildingRTSFormInput_Access_Array_Access;
   type BuildingRTSFormInput_Access_Array_Access_Array_Access is access all BuildingRTSFormInput_Access_Array_Access_Array;

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
   procedure setAllBinaryGameLayerManager (This : in out BuildingRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure processGameSpecific (This : in out BuildingRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer);
   function isPositionBlocked (This : in out BuildingRTSFormInput) return Boolean;
   function isDemoLocked (This : in out BuildingRTSFormInput; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Boolean;
   procedure isDemoLocked (This : in out BuildingRTSFormInput; item_Param : access ABCustomItem_Package.ABCustomItem'Class);
   procedure buildFromMotionInput (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer);
   function attemptBuild (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer) return Boolean;
   procedure attemptBuild (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer);
   function isBuildAttemptValid (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean;
   procedure isBuildAttemptValid (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure add (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class);
   function isSurroundingCellsOffMap (This : in out BuildingRTSFormInput; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean;
   procedure isSurroundingCellsOffMap (This : in out BuildingRTSFormInput; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class);

end org.allbinary.game.input.form.BuildingRTSFormInput_Package;



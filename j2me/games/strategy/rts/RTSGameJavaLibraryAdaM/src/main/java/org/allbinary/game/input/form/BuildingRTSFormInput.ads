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

limited with org.allbinary.game.input.form.BuildingRTSFormInput_Package;
package org.allbinary.game.input.form.BuildingRTSFormInput_Package_References is
   type BuildingRTSFormInput_Access is access all org.allbinary.game.input.form.BuildingRTSFormInput_Package.BuildingRTSFormInput'Class;
   type BuildingRTSFormInput_Access_Array is array (Natural range <>) of BuildingRTSFormInput_Access;
   type BuildingRTSFormInput_Access_Array_Access is access all BuildingRTSFormInput_Access_Array;
   type BuildingRTSFormInput_Access_Array_Access_Array is array (Natural range <>) of BuildingRTSFormInput_Access_Array_Access;
   type BuildingRTSFormInput_Access_Array_Access_Array_Access is access all BuildingRTSFormInput_Access_Array_Access_Array;
end org.allbinary.game.input.form.BuildingRTSFormInput_Package_References;

with org.allbinary.game.input.form.BuildingRTSFormInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
limited with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References;
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
   package Reference_Types is
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   use type RTSLayer_Access;
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   use type RTSLayer_Access_Array;
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   use type RTSLayer_Access_Array_Access;
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   use type RTSLayer_Access_Array_Access_Array;
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   use type RTSLayer_Access_Array_Access_Array_Access;
   subtype RTSPlayerLayerInterface_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access;
   use type RTSPlayerLayerInterface_Access;
   subtype RTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array;
   use type RTSPlayerLayerInterface_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access;
   use type RTSPlayerLayerInterface_Access_Array_Access;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array;
   use type RTSPlayerLayerInterface_Access_Array_Access_Array;
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   use type RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   use type GameNotificationEvent_Access;
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   use type GameNotificationEvent_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access;
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   use type GameNotificationEvent_Access_Array_Access_Array;
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   use type GameNotificationEvent_Access_Array_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype DropCellPositionHistory_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access;
   use type DropCellPositionHistory_Access;
   subtype DropCellPositionHistory_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array;
   use type DropCellPositionHistory_Access_Array;
   subtype DropCellPositionHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access;
   use type DropCellPositionHistory_Access_Array_Access;
   subtype DropCellPositionHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array;
   use type DropCellPositionHistory_Access_Array_Access_Array;
   subtype DropCellPositionHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array_Access;
   use type DropCellPositionHistory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BuildingRTSFormInput_Access is org.allbinary.game.input.form.BuildingRTSFormInput_Package_References.BuildingRTSFormInput_Access;
   function "=" (Left, Right : BuildingRTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.BuildingRTSFormInput_Package_References."=";
   subtype BuildingRTSFormInput_Access_Array is org.allbinary.game.input.form.BuildingRTSFormInput_Package_References.BuildingRTSFormInput_Access_Array;
   function "=" (Left, Right : BuildingRTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.BuildingRTSFormInput_Package_References."=";
   subtype BuildingRTSFormInput_Access_Array_Access is org.allbinary.game.input.form.BuildingRTSFormInput_Package_References.BuildingRTSFormInput_Access_Array_Access;
   function "=" (Left, Right : BuildingRTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.BuildingRTSFormInput_Package_References."=";
   subtype BuildingRTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.BuildingRTSFormInput_Package_References.BuildingRTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingRTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.BuildingRTSFormInput_Package_References."=";
   subtype BuildingRTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.BuildingRTSFormInput_Package_References.BuildingRTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingRTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.BuildingRTSFormInput_Package_References."=";

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



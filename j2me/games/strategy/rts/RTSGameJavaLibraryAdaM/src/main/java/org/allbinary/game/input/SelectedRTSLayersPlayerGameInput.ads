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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package; use org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.media.audio.DowngradeSound_Package; use org.allbinary.media.audio.DowngradeSound_Package;
with org.allbinary.media.audio.UpgradeSound_Package; use org.allbinary.media.audio.UpgradeSound_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package is

   package RTSGameStrings_Package renames org.allbinary.game.layer.RTSGameStrings_Package;
   package RTSLayer_Package renames org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerInfoPaintable_Package renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
   package RTSPlayerLayerInterface_Package renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package Capital_Package renames org.allbinary.game.layer.capital.Capital_Package;
   package DowngradeSound_Package renames org.allbinary.media.audio.DowngradeSound_Package;
   package UpgradeSound_Package renames org.allbinary.media.audio.UpgradeSound_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package BooleanFactory_Package renames org.allbinary.logic.java.bool.BooleanFactory_Package;
   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package GameNotificationEventHandler_Package renames org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package CollidableDestroyableDamageableLayer_Package renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package Visitor_Package renames org.allbinary.logic.util.visitor.Visitor_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ErrorSound_Package renames org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;

   type SelectedRTSLayersPlayerGameInput is tagged;
   type SelectedRTSLayersPlayerGameInput_Access is access all SelectedRTSLayersPlayerGameInput'Class;
   type SelectedRTSLayersPlayerGameInput_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInput_Access;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access is access all SelectedRTSLayersPlayerGameInput_Access_Array;

   type SelectedRTSLayersPlayerGameInput is new PlayerGameInput with record
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      list : BasicArrayList_Access;
      isSingleKeyProcessing : Boolean;
      selectedRTSLayersList : BasicArrayList_Access;
      preSelectedRTSLayersList : BasicArrayList_Access;
      paintSelectedRTSLayersList : BasicArrayList_Access;
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access;
      selectRTSLayerVisitorInterface : Visitor_Access;
      upgradeGameNotificationEvent : GameNotificationEvent_Access;
      noMoneyGameNotificationEvent : GameNotificationEvent_Access;
      downgradeGameNotificationEvent : GameNotificationEvent_Access;
   end record;

   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInput'Class; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; list : BasicArrayList_Access; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access);
   function Create (towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; list : BasicArrayList_Access; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access) return SelectedRTSLayersPlayerGameInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out SelectedRTSLayersPlayerGameInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   function isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer : RTSLayer_Access) return Boolean;
   procedure isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer : RTSLayer_Access);
   procedure upgrade (This : in out SelectedRTSLayersPlayerGameInput);
   procedure downgrade (This : in out SelectedRTSLayersPlayerGameInput);
   procedure initInputProcessors (This : in out SelectedRTSLayersPlayerGameInput);
   procedure processInputKey (This : in out SelectedRTSLayersPlayerGameInput; key : Integer);
   procedure processInput (This : in out SelectedRTSLayersPlayerGameInput; layerManager : AllBinaryLayerManager_Access);
   function getSelectedBasicArrayList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   procedure getSelectedBasicArrayList (This : in out SelectedRTSLayersPlayerGameInput);
   procedure addSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer : RTSLayer_Access);
   procedure setSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer : CollidableDestroyableDamageableLayer_Access);
   function getLastSelectedRtsLayer (This : in out SelectedRTSLayersPlayerGameInput) return CollidableDestroyableDamageableLayer_Access;
   procedure getLastSelectedRtsLayer (This : in out SelectedRTSLayersPlayerGameInput);
   procedure selectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput);
   procedure deselectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput);
   procedure deselectAll (This : in out SelectedRTSLayersPlayerGameInput);
   function isAnyRTSLayerSelected (This : in out SelectedRTSLayersPlayerGameInput) return Boolean;
   procedure isAnyRTSLayerSelected (This : in out SelectedRTSLayersPlayerGameInput);
   function getPaintSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   procedure getPaintSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput);
   function getPreSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   procedure getPreSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput);

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;



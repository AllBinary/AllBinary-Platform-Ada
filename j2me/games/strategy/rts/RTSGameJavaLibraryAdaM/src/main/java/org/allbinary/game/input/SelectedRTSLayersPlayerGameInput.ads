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
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package; use org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;

package org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerInfoPaintable_Package renames Standard.org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;

   type SelectedRTSLayersPlayerGameInput is tagged;
   type SelectedRTSLayersPlayerGameInput_Access is access all SelectedRTSLayersPlayerGameInput'Class;
   type SelectedRTSLayersPlayerGameInput_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInput_Access;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access is access all SelectedRTSLayersPlayerGameInput_Access_Array;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is access all SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;

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

   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInput'Class; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class);
   function Create (towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class) return SelectedRTSLayersPlayerGameInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out SelectedRTSLayersPlayerGameInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean;
   procedure isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure upgrade (This : in out SelectedRTSLayersPlayerGameInput);
   procedure downgrade (This : in out SelectedRTSLayersPlayerGameInput);
   procedure initInputProcessors (This : in out SelectedRTSLayersPlayerGameInput);
   procedure processInputKey (This : in out SelectedRTSLayersPlayerGameInput; key : Integer);
   procedure processInput (This : in out SelectedRTSLayersPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getSelectedBasicArrayList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   procedure addSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer_Param : access RTSLayer_Package.RTSLayer'Class);
   procedure setSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   function getLastSelectedRtsLayer (This : in out SelectedRTSLayersPlayerGameInput) return CollidableDestroyableDamageableLayer_Access;
   procedure selectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput);
   procedure deselectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput);
   procedure deselectAll (This : in out SelectedRTSLayersPlayerGameInput);
   function isAnyRTSLayerSelected (This : in out SelectedRTSLayersPlayerGameInput) return Boolean;
   function getPaintSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;
   function getPreSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access;

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;



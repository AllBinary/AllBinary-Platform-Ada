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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package; use org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.NullRTSLayer_Package; use org.allbinary.game.layer.NullRTSLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;

package org.allbinary.game.input.RTSPlayerGameInput_Package is

   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerInfoPaintable_Package renames Standard.org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package NullRTSLayer_Package renames Standard.org.allbinary.game.layer.NullRTSLayer_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type RTSPlayerGameInput is tagged;
   type RTSPlayerGameInput_Access is access all RTSPlayerGameInput'Class;
   type RTSPlayerGameInput_Access_Array is array (Natural range <>) of RTSPlayerGameInput_Access;
   type RTSPlayerGameInput_Access_Array_Access is access all RTSPlayerGameInput_Access_Array;

   type RTSPlayerGameInput is new PlayerGameInput with record
      inputProcessorArray : GameInputProcessor_Access_Array_Access;
      removeInputProcessorArray : GameInputProcessor_Access_Array_Access;
      inputList : BasicArrayList_Access;
      isSingleKeyProcessing : Boolean;
      gameCanvas : AllBinaryGameCanvas_Access;
      motionGestureInputList : BasicArrayList_Access;
      scrollPlayerGameInput : ScrollMapPlayerGameInput_Access;
      selectedRTSLayerPlayerGameInput : SelectedRTSLayersPlayerGameInput_Access;
      towerInfoPaintable : RTSLayerInfoPaintable_Access;
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access;
      layerPositionFinderInterface : LayerPositionFinderInterface_Access;
      selectedRtsFormInput : RTSFormInput_Access;
   end record;

   procedure Initialize (This : in out RTSPlayerGameInput'Class; gameCanvas : AllBinaryGameCanvas_Access; inputList : BasicArrayList_Access; playerInputId : Integer; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerPositionFinderInterface : LayerPositionFinderInterface_Access; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access; inputList : BasicArrayList_Access; playerInputId : Integer; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerPositionFinderInterface : LayerPositionFinderInterface_Access; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access) return RTSPlayerGameInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out RTSPlayerGameInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   procedure onDisplayChangeEvent (This : in out RTSPlayerGameInput; displayChangeEvent : DisplayChangeEvent_Access);
   procedure left (This : in out RTSPlayerGameInput);
   procedure right (This : in out RTSPlayerGameInput);
   procedure initInputProcessors (This : in out RTSPlayerGameInput);
   procedure processInput (This : in out RTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access);
   procedure processMotionInput (This : in out RTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access);
   procedure select_Id (This : in out RTSPlayerGameInput; motionGestureEvent : MotionGestureEvent_Access);
   procedure setSelectedRTSLayer (This : in out RTSPlayerGameInput; rtsLayer : CollidableDestroyableDamageableLayer_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure paint (This : in out RTSPlayerGameInput; graphics : Graphics_Access);
   procedure updatePaintable (This : in out RTSPlayerGameInput);
   function getSelectedBuildingPlayerGameInput (This : in out RTSPlayerGameInput) return SelectedRTSLayersPlayerGameInput_Access;
   procedure getSelectedBuildingPlayerGameInput (This : in out RTSPlayerGameInput);
   function getSelectedRtsFormInput (This : in out RTSPlayerGameInput) return RTSFormInput_Access;
   procedure getSelectedRtsFormInput (This : in out RTSPlayerGameInput);
   procedure setSelectedRtsFormInput (This : in out RTSPlayerGameInput; selectedRtsFormInput : RTSFormInput_Access);
   function getRtsPlayerLayerInterface (This : in out RTSPlayerGameInput) return RTSPlayerLayerInterface_Access;
   procedure getRtsPlayerLayerInterface (This : in out RTSPlayerGameInput);
   function getRTSLayerInfoPaintable (This : in out RTSPlayerGameInput) return RTSLayerInfoPaintable_Access;
   procedure getRTSLayerInfoPaintable (This : in out RTSPlayerGameInput);
   function getMotionGestureInputList (This : in out RTSPlayerGameInput) return BasicArrayList_Access;
   procedure getMotionGestureInputList (This : in out RTSPlayerGameInput);
   function getGameCanvas (This : in out RTSPlayerGameInput) return AllBinaryGameCanvas_Access;
   procedure getGameCanvas (This : in out RTSPlayerGameInput);
   function isIsSingleKeyProcessing (This : in out RTSPlayerGameInput) return Boolean;
   procedure isIsSingleKeyProcessing (This : in out RTSPlayerGameInput);
   function getScrollPlayerGameInput (This : in out RTSPlayerGameInput) return ScrollMapPlayerGameInput_Access;
   procedure getScrollPlayerGameInput (This : in out RTSPlayerGameInput);

end org.allbinary.game.input.RTSPlayerGameInput_Package;



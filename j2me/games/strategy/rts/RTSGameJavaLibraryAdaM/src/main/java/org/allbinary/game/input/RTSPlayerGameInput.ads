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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package; use org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapPlayerGameInput_Package; use org.allbinary.game.input.ScrollMapPlayerGameInput_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package; use org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;

package org.allbinary.game.input.RTSPlayerGameInput_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package RTSLayerInfoPaintable_Package renames Standard.org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type RTSPlayerGameInput is tagged;
   type RTSPlayerGameInput_Access is access all RTSPlayerGameInput'Class;
   type RTSPlayerGameInput_Access_Array is array (Natural range <>) of RTSPlayerGameInput_Access;
   type RTSPlayerGameInput_Access_Array_Access is access all RTSPlayerGameInput_Access_Array;
   type RTSPlayerGameInput_Access_Array_Access_Array is array (Natural range <>) of RTSPlayerGameInput_Access_Array_Access;
   type RTSPlayerGameInput_Access_Array_Access_Array_Access is access all RTSPlayerGameInput_Access_Array_Access_Array;

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

   procedure Initialize (This : in out RTSPlayerGameInput'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; inputList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerPositionFinderInterface_Param : access LayerPositionFinderInterface_Package.LayerPositionFinderInterface'Class; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; inputList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerPositionFinderInterface_Param : access LayerPositionFinderInterface_Package.LayerPositionFinderInterface'Class; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class) return RTSPlayerGameInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out RTSPlayerGameInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure onDisplayChangeEvent (This : in out RTSPlayerGameInput; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure left (This : in out RTSPlayerGameInput);
   procedure right (This : in out RTSPlayerGameInput);
   procedure initInputProcessors (This : in out RTSPlayerGameInput);
   procedure processInput (This : in out RTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure processMotionInput (This : in out RTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure select_Id (This : in out RTSPlayerGameInput; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure setSelectedRTSLayer (This : in out RTSPlayerGameInput; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure paint (This : in out RTSPlayerGameInput; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure updatePaintable (This : in out RTSPlayerGameInput);
   function getSelectedBuildingPlayerGameInput (This : in out RTSPlayerGameInput) return SelectedRTSLayersPlayerGameInput_Access;
   function getSelectedRtsFormInput (This : in out RTSPlayerGameInput) return RTSFormInput_Access;
   procedure setSelectedRtsFormInput (This : in out RTSPlayerGameInput; selectedRtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class);
   function getRtsPlayerLayerInterface (This : in out RTSPlayerGameInput) return RTSPlayerLayerInterface_Access;
   function getRTSLayerInfoPaintable (This : in out RTSPlayerGameInput) return RTSLayerInfoPaintable_Access;
   function getMotionGestureInputList (This : in out RTSPlayerGameInput) return BasicArrayList_Access;
   function getGameCanvas (This : in out RTSPlayerGameInput) return AllBinaryGameCanvas_Access;
   function isIsSingleKeyProcessing (This : in out RTSPlayerGameInput) return Boolean;
   function getScrollPlayerGameInput (This : in out RTSPlayerGameInput) return ScrollMapPlayerGameInput_Access;

end org.allbinary.game.input.RTSPlayerGameInput_Package;



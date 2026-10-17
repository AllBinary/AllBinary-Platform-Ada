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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.MultiSelectPaintable_Package; use org.allbinary.game.layer.MultiSelectPaintable_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package; use org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder_Package; use org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder_Package;
with org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder_Package; use org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder_Package;
with org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package; use org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package;
with org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package; use org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package;
with org.allbinary.media.audio.SelectBuildingSound_Package; use org.allbinary.media.audio.SelectBuildingSound_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.paint.NullInitUpdatePaintable_Package; use org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;
with org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package; use org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package; use org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;

package org.allbinary.game.input.HumanRTSPlayerGameInput_Package is

   package RTSFormInput_Package renames Standard.org.allbinary.game.input.form.RTSFormInput_Package;
   package MultiSelectPaintable_Package renames Standard.org.allbinary.game.layer.MultiSelectPaintable_Package;
   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package RTSLayerInfoPaintable_Package renames Standard.org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
   package RTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package EndLevelNoBuildingSelectedTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder_Package;
   package EndLevelTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder_Package;
   package NoBuildingSelectedTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package;
   package RTSTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package;
   package SelectBuildingSound_Package renames Standard.org.allbinary.media.audio.SelectBuildingSound_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullInitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;
   package TouchButtonsBuilderFactory_Package renames Standard.org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package BaseMotionGestureEventListener_Package renames Standard.org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type HumanRTSPlayerGameInput is tagged;
   type HumanRTSPlayerGameInput_Access is access all HumanRTSPlayerGameInput'Class;
   type HumanRTSPlayerGameInput_Access_Array is array (Natural range <>) of HumanRTSPlayerGameInput_Access;
   type HumanRTSPlayerGameInput_Access_Array_Access is access all HumanRTSPlayerGameInput_Access_Array;

   type HumanRTSPlayerGameInput is new RTSPlayerGameInput and BaseMotionGestureEventListener with record
      isDragging : Boolean;
      gameStateFactory : GameStateFactory_Access;
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      PRESSED : MotionGestureInput_Access;
      RELEASED : MotionGestureInput_Access;
      touchButtonsBuilderFactory : TouchButtonsBuilderFactory_Access;
      notYoursGameNotificationEvent : GameNotificationEvent_Access;
      selectedRtsLayer : CollidableDestroyableDamageableLayer_Access;
      startPoint : GPoint_Access;
      endPoint : GPoint_Access;
      POSSIBLE : Unbounded_String;
      AT_Id : Unbounded_String;
      METHOD : Unbounded_String;
      ADDING : Unbounded_String;
      SPACE : Unbounded_String;
      multiSelectPaintable : MultiSelectPaintable_Access;
   end record;

   procedure Initialize (This : in out HumanRTSPlayerGameInput'Class; gameCanvas : AllBinaryGameCanvas_Access; inputList : BasicArrayList_Access; playerInputId : Integer; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerPositionFinderInterface : LayerPositionFinderInterface_Access; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access; touchButtonsBuilderFactory : TouchButtonsBuilderFactory_Access);
   function Create (gameCanvas : AllBinaryGameCanvas_Access; inputList : BasicArrayList_Access; playerInputId : Integer; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerPositionFinderInterface : LayerPositionFinderInterface_Access; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access; touchButtonsBuilderFactory : TouchButtonsBuilderFactory_Access) return HumanRTSPlayerGameInput_Access;
   procedure setAllBinaryGameLayerManager (This : in out HumanRTSPlayerGameInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   function processDraggingMotionInput (This : in out HumanRTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access) return Boolean;
   procedure processDraggingMotionInput (This : in out HumanRTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access);
   procedure makeSelection (This : in out HumanRTSPlayerGameInput);
   procedure processSelectionBoxMotionInput (This : in out HumanRTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access);
   procedure processMotionInput (This : in out HumanRTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access);
   procedure setSelectedRtsFormInput (This : in out HumanRTSPlayerGameInput; selectedRtsFormInput : RTSFormInput_Access);
   procedure updateFormForLayer (This : in out HumanRTSPlayerGameInput; rtsLayer : RTSLayer_Access);
   procedure updateForm (This : in out HumanRTSPlayerGameInput; scrollSelectionForm : ScrollSelectionForm_Access; rtfFormInput : RTSFormInput_Access);
   procedure setSelectedRTSLayer (This : in out HumanRTSPlayerGameInput; rtSLayer : CollidableDestroyableDamageableLayer_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure updatePaintable (This : in out HumanRTSPlayerGameInput);
   procedure paint (This : in out HumanRTSPlayerGameInput; graphics : Graphics_Access);
   procedure onMotionGestureEvent (This : in out HumanRTSPlayerGameInput; motionGestureEvent : MotionGestureEvent_Access);
   procedure onScrolledMotionGestureEvent (This : in out HumanRTSPlayerGameInput; motionGestureEvent : MotionGestureEvent_Access);
   function getSelectedRtsLayer (This : in out HumanRTSPlayerGameInput) return CollidableDestroyableDamageableLayer_Access;
   procedure setSelectedRtsLayer (This : in out HumanRTSPlayerGameInput; selectedRtsLayer : CollidableDestroyableDamageableLayer_Access);

end org.allbinary.game.input.HumanRTSPlayerGameInput_Package;



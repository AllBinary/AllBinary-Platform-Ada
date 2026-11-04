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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
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
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package; use org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
with org.allbinary.game.input.BuildMenuCompositeInterface_Package;
with org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaInterface_Package;
with org.allbinary.game.input.LayerPositionFinderInterface_Package;
with org.allbinary.game.layer.MultiSelectPaintable_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.RTSInterface_Package;
with org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer2LogHelper_Package;
with org.allbinary.game.layer.RTSLayerInfoPaintable_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.WaypointBehaviorBase_Package;
with org.allbinary.game.layer.waypoint.WaypointLayerInterface_Package;
with org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper_Package;

package body org.allbinary.game.input.HumanRTSPlayerGameInput_Package is

   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package EndLevelNoBuildingSelectedTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder_Package;
   package EndLevelTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder_Package;
   package NoBuildingSelectedTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder_Package;
   package RTSTouchButtonsBuilder_Package renames Standard.org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package;
   package SelectBuildingSound_Package renames Standard.org.allbinary.media.audio.SelectBuildingSound_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package NullInitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype RTSFormInput_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access;
   function "=" (Left, Right : RTSFormInput_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype RTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSFormInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.RTSFormInput_Package_References."=";
   subtype MultiSelectPaintable_Access is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access;
   function "=" (Left, Right : MultiSelectPaintable_Access) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array_Access is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array_Access;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array_Access_Array is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   function "=" (Left, Right : RTSLayer_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayerInfoPaintable_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSLayerInfoPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References.RTSLayerInfoPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayerInfoPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayerInfoPaintable_Package_References."=";
   subtype RTSPlayerLayerInterface_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype RTSPlayerLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References.RTSPlayerLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References."=";
   subtype GameStateFactory_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access;
   function "=" (Left, Right : GameStateFactory_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype GameNotificationEvent_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access;
   function "=" (Left, Right : GameNotificationEvent_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array;
   function "=" (Left, Right : GameNotificationEvent_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access_Array is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype GameNotificationEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References.GameNotificationEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   function "=" (Left, Right : MotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MotionGestureInput_Package_References."=";
   subtype TouchMotionGestureFactory_Access is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access;
   function "=" (Left, Right : TouchMotionGestureFactory_Access) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array_Access is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array_Access;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array_Access_Array is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype TouchMotionGestureFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References.TouchMotionGestureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchMotionGestureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package_References."=";
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   function "=" (Left, Right : MotionGestureEvent_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype RectangleCollisionUtil_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype RectangleCollisionUtil_Access_Array_Access_Array_Access is org.allbinary.math.RectangleCollisionUtil_Package_References.RectangleCollisionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleCollisionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.RectangleCollisionUtil_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype LayerPositionFinderInterface_Access is org.allbinary.game.input.LayerPositionFinderInterface_Package_References.LayerPositionFinderInterface_Access;
   function "=" (Left, Right : LayerPositionFinderInterface_Access) return Boolean renames org.allbinary.game.input.LayerPositionFinderInterface_Package_References."=";
   subtype LayerPositionFinderInterface_Access_Array is org.allbinary.game.input.LayerPositionFinderInterface_Package_References.LayerPositionFinderInterface_Access_Array;
   function "=" (Left, Right : LayerPositionFinderInterface_Access_Array) return Boolean renames org.allbinary.game.input.LayerPositionFinderInterface_Package_References."=";
   subtype LayerPositionFinderInterface_Access_Array_Access is org.allbinary.game.input.LayerPositionFinderInterface_Package_References.LayerPositionFinderInterface_Access_Array_Access;
   function "=" (Left, Right : LayerPositionFinderInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.LayerPositionFinderInterface_Package_References."=";
   subtype LayerPositionFinderInterface_Access_Array_Access_Array is org.allbinary.game.input.LayerPositionFinderInterface_Package_References.LayerPositionFinderInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPositionFinderInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.LayerPositionFinderInterface_Package_References."=";
   subtype LayerPositionFinderInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.LayerPositionFinderInterface_Package_References.LayerPositionFinderInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPositionFinderInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.LayerPositionFinderInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   subtype SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References.SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectRTSLayerVisitorFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectRTSLayerVisitorFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out HumanRTSPlayerGameInput'Class) is
   begin
      null;
      This.isDragging := False;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      This.rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
      This.touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
      This.PRESSED := MotionGestureInput_Access (This.touchMotionGestureFactory.PRESSED);
      This.RELEASED := MotionGestureInput_Access (This.touchMotionGestureFactory.RELEASED);
      
      
      This.selectedRtsLayer := CollidableDestroyableDamageableLayer_Package.getNullInstance;
      This.startPoint := GPoint_Access (PointFactory_Package.getInstance.ZERO_ZERO);
      This.endPoint := GPoint_Access (PointFactory_Package.getInstance.ZERO_ZERO);
      This.POSSIBLE := To_Unbounded_String ("Possible: ");
      This.AT_Id := To_Unbounded_String ("At: ");
      This.METHOD := To_Unbounded_String ("makeSelection");
      This.ADDING := To_Unbounded_String ("Adding: ");
      This.SPACE := CommonSeps_Package.getInstance.SPACE;
      This.multiSelectPaintable := MultiSelectPaintable_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out HumanRTSPlayerGameInput'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; inputList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerPositionFinderInterface_Param : access LayerPositionFinderInterface_Package.LayerPositionFinderInterface'Class; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class; touchButtonsBuilderFactory_Param : access TouchButtonsBuilderFactory_Package.TouchButtonsBuilderFactory'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
      inputList : constant BasicArrayList_Access := BasicArrayList_Access (inputList_Param);
      towerInfoPaintable : constant RTSLayerInfoPaintable_Access := RTSLayerInfoPaintable_Access (towerInfoPaintable_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerPositionFinderInterface : constant LayerPositionFinderInterface_Access := LayerPositionFinderInterface_Access (layerPositionFinderInterface_Param);
      selectRTSLayerVisitorFactoryInterface : constant SelectRTSLayerVisitorFactoryInterface_Access := SelectRTSLayerVisitorFactoryInterface_Access (selectRTSLayerVisitorFactoryInterface_Param);
      touchButtonsBuilderFactory : constant TouchButtonsBuilderFactory_Access := TouchButtonsBuilderFactory_Access (touchButtonsBuilderFactory_Param);
      basicColorFactory : BasicColorFactory_Access;
   begin
        RTSPlayerGameInput_Package.Initialize (This, gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface);
        Initialize_Fields (This);
        This.touchButtonsBuilderFactory := touchButtonsBuilderFactory;
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.notYoursGameNotificationEvent := GameNotificationEvent_Package.Create (HumanRTSPlayerGameInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NOT_YOURS, SmallIntegerSingletonFactory_Package.getInstance.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        BasicMotionGesturesHandler_Package.getInstance.addListenerInterface (HumanRTSPlayerGameInput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; inputList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerPositionFinderInterface_Param : access LayerPositionFinderInterface_Package.LayerPositionFinderInterface'Class; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class; touchButtonsBuilderFactory_Param : access TouchButtonsBuilderFactory_Package.TouchButtonsBuilderFactory'Class) return HumanRTSPlayerGameInput_Access is
      This : constant HumanRTSPlayerGameInput_Access := new HumanRTSPlayerGameInput;
   begin
      HumanRTSPlayerGameInput_Package.Initialize (This.all, gameCanvas_Param, inputList_Param, playerInputId, towerInfoPaintable_Param, rtsPlayerLayerInterface_Param, layerPositionFinderInterface_Param, selectRTSLayerVisitorFactoryInterface_Param, touchButtonsBuilderFactory_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out HumanRTSPlayerGameInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.notYoursGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   function processDraggingMotionInput (This : in out HumanRTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) return Boolean is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      motionGestureEvent : MotionGestureEvent_Access;
      motionGestureInput : MotionGestureInput_Access;
      rtsFormInput : RTSFormInput_Access;
      point : GPoint_Access;
      previousRtsFormInput : RTSFormInput_Access;
   begin
        motionGestureEvent := MotionGestureEvent_Access (HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.get ((HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.size) - (1)));
        motionGestureInput := motionGestureEvent.getMotionGesture;
        rtsFormInput := HumanRTSPlayerGameInput'Class (This).getSelectedRtsFormInput;
        if (motionGestureInput) = (This.PRESSED) then
            point := motionGestureEvent.getCurrentPoint;
            if HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getCurrentScrollSelectionForm.isInForm (point) then
                This.isDragging := rtsFormInput.processSticky (HumanRTSPlayerGameInput'Class (This).getSelectedRtsLayer, HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface, layerManager, point);
            end if;
        elsif (motionGestureInput) = (This.RELEASED) then
            point := motionGestureEvent.getCurrentPoint;
            if HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getCurrentScrollSelectionForm.isInForm (point) then
                rtsFormInput.processAtPoint (HumanRTSPlayerGameInput'Class (This).getSelectedRtsLayer, HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface, layerManager, point);
            elsif rtsFormInput.isStickyItemSelected then
                previousRtsFormInput := rtsFormInput;
                HumanRTSPlayerGameInput'Class (This).select_Id (motionGestureEvent);
                HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.selectAllPreselected;
                previousRtsFormInput.processAtPoint (HumanRTSPlayerGameInput'Class (This).getSelectedRtsLayer, HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface, layerManager, point);
                HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.deselectAllPreselected;
            else
                HumanRTSPlayerGameInput'Class (This).select_Id (motionGestureEvent);
            end if;
            rtsFormInput.setStickyItemSelected (False);
            rtsFormInput.setSelectedStickyItem (ABCustomItem_Package.getNullInstance);
            rtsFormInput.setSelectedStickyItemIndex (-(1));
            return True;
        end if;
        return False;
   end processDraggingMotionInput;

   procedure makeSelection (This : in out HumanRTSPlayerGameInput) is
      rtsLayerList : BasicArrayList_Access;
      rectX1 : Integer;
      rectY1 : Integer;
      rectX2 : Integer;
      rectY2 : Integer;
      stringBuffer : StringMaker_Access;
      rtsLayer : RTSLayer_Access;
      viewPosition : ViewPositionBase_Access;
      index : Integer;
      gameLayer : CollidableDestroyableDamageableLayer_Access;
      lastRTSLayer : RTSLayer_Access;
   begin
        rtsLayerList := BasicArrayList_Access (HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getPlayerOwnedRTSLayers.rtsLayerList);
        rectX1 := This.startPoint.getX;
        rectY1 := This.startPoint.getY;
        rectX2 := This.endPoint.getX;
        rectY2 := This.endPoint.getY;
        if (rectX1) > (rectX2) then
            rectX2 := rectX1;
            rectX1 := This.endPoint.getX;
        end if;
        if (rectY1) > (rectY2) then
            rectY2 := rectY1;
            rectY1 := This.endPoint.getY;
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.AT_Id);
        stringBuffer.appendint (rectX1);
        stringBuffer.append (This.SPACE);
        stringBuffer.appendint (rectY1);
        stringBuffer.append (This.SPACE);
        stringBuffer.appendint (rectX2);
        stringBuffer.append (This.SPACE);
        stringBuffer.appendint (rectY2);
        This.logUtil.putF (stringBuffer.toString, HumanRTSPlayerGameInput_Access'(This'Unchecked_Access), This.METHOD);
        rtsLayer := null;
        for index in reverse 0 .. (rtsLayerList.size) - (1) loop
            rtsLayer := RTSLayer_Access (rtsLayerList.get (index));
            stringBuffer.delete (0, stringBuffer.length);
            viewPosition := rtsLayer.getViewPosition;
            stringBuffer.append (This.POSSIBLE);
            stringBuffer.append (rtsLayer.getName);
            stringBuffer.append (This.SPACE);
            stringBuffer.append (This.AT_Id);
            stringBuffer.appendint (Integer (((viewPosition.getX) + (rtsLayer.getHalfWidth))));
            stringBuffer.append (This.SPACE);
            stringBuffer.appendint (Integer (((viewPosition.getY) + (rtsLayer.getHalfHeight))));
            This.logUtil.putF (stringBuffer.toString, HumanRTSPlayerGameInput_Access'(This'Unchecked_Access), This.METHOD);
            if This.rectangleCollisionUtil.isInside (rectX1, rectY1, rectX2, rectY2, (viewPosition.getX) + (rtsLayer.getHalfWidth), (viewPosition.getY) + (rtsLayer.getHalfHeight)) then
                This.logUtil.putF (StringMaker_Package.Create.append (This.ADDING).append (rtsLayer.getName).toString, HumanRTSPlayerGameInput_Access'(This'Unchecked_Access), This.METHOD);
                rtsLayer.select_Id;
                HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.addSelectedRTSLayer (rtsLayer);
            end if;
        end loop;
        gameLayer := HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.getLastSelectedRtsLayer;
        if (gameLayer) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            lastRTSLayer := RTSLayer_Access (gameLayer);
            if (lastRTSLayer.getScrollSelectionForm) /= (ScrollSelectionForm_Package.getNullScrollSelectionForm) then
                HumanRTSPlayerGameInput'Class (This).updateForm (lastRTSLayer.getScrollSelectionForm, lastRTSLayer.getRTSFormInput);
                HumanRTSPlayerGameInput'Class (This).setSelectedRtsLayer (lastRTSLayer);
            end if;
        end if;
        HumanRTSPlayerGameInput'Class (This).updatePaintable;
   end makeSelection;

   --  throws Exception
   procedure processSelectionBoxMotionInput (This : in out HumanRTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      motionGestureEvent : MotionGestureEvent_Access;
      motionGestureInput : MotionGestureInput_Access;
      point : GPoint_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.size) - (1) loop
            motionGestureEvent := MotionGestureEvent_Access (HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.get (index));
            motionGestureInput := motionGestureEvent.getMotionGesture;
            point := motionGestureEvent.getCurrentPoint;
            if (motionGestureInput) = (This.touchMotionGestureFactory.PRESSED) then
                This.startPoint := point;
                This.endPoint := point;
            elsif (motionGestureInput) = (This.touchMotionGestureFactory.RELEASED) then
                This.endPoint := point;
                HumanRTSPlayerGameInput'Class (This).makeSelection;
                This.startPoint := GPoint_Access (PointFactory_Package.getInstance.ZERO_ZERO);
                This.endPoint := GPoint_Access (PointFactory_Package.getInstance.ZERO_ZERO);
            else
                This.endPoint := point;
            end if;
        end loop;
   end processSelectionBoxMotionInput;

   --  throws Exception
   procedure processMotionInput (This : in out HumanRTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      endDrag : Boolean;
   begin
        if (HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.size) > (0) then
            endDrag := HumanRTSPlayerGameInput'Class (This).processDraggingMotionInput (layerManager);
            if not (This.isDragging) then
                HumanRTSPlayerGameInput'Class (This).processSelectionBoxMotionInput (layerManager);
            end if;
            if endDrag then
                This.isDragging := False;
            end if;
        end if;
        HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.clear;
   end processMotionInput;

   procedure setSelectedRtsFormInput (This : in out HumanRTSPlayerGameInput; selectedRtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class) is
      selectedRtsFormInput : constant RTSFormInput_Access := RTSFormInput_Access (selectedRtsFormInput_Param);
      logUtil : LogUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START).append (StringUtil_Package.getInstance.toString (selectedRtsFormInput)).toString, HumanRTSPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedRtsFormInput"));
        RTSPlayerGameInput (This).setSelectedRtsFormInput (selectedRtsFormInput);
        HumanRTSPlayerGameInput'Class (This).setSelectedRtsLayer (CollidableDestroyableDamageableLayer_Package.getNullInstance);
   end setSelectedRtsFormInput;

   procedure updateFormForLayer (This : in out HumanRTSPlayerGameInput; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        scrollSelectionForm := rtsLayer.getScrollSelectionForm;
        if ((scrollSelectionForm) /= (ScrollSelectionForm_Package.getNullScrollSelectionForm)) and then ((HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getGroupInterface (0)) = (rtsLayer.getGroupInterface (0))) then
            HumanRTSPlayerGameInput'Class (This).updateForm (scrollSelectionForm, rtsLayer.getRTSFormInput);
            HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.setSelectedRTSLayer (CollidableDestroyableDamageableLayer_Package.getNullInstance);
            HumanRTSPlayerGameInput'Class (This).setSelectedRtsLayer (rtsLayer);
        else
            HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.setCurrentScrollSelectionForm (HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getBuildingScrollSelectionForm);
            HumanRTSPlayerGameInput'Class (This).setSelectedRtsFormInput (HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getRTSFormInput);
            HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.setSelectedRTSLayer (CollidableDestroyableDamageableLayer_Package.getNullInstance);
        end if;
   end updateFormForLayer;

   procedure updateForm (This : in out HumanRTSPlayerGameInput; scrollSelectionForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class; rtfFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class) is
      scrollSelectionForm : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (scrollSelectionForm_Param);
      rtfFormInput : constant RTSFormInput_Access := RTSFormInput_Access (rtfFormInput_Param);
   begin
        HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.setCurrentScrollSelectionForm (scrollSelectionForm);
        HumanRTSPlayerGameInput'Class (This).setSelectedRtsFormInput (rtfFormInput);
   end updateForm;

   --  throws Exception
   procedure setSelectedRTSLayer (This : in out HumanRTSPlayerGameInput; rtSLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      rtSLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtSLayer_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      gameCanvas : AllBinaryGameCanvas_Access;
      endLevelNoBuildingSelectedTouchButtonsBuilder : EndLevelNoBuildingSelectedTouchButtonsBuilder_Access;
      rtsLayer : RTSLayer_Access;
      endLevelTouchButtonsBuilder : EndLevelTouchButtonsBuilder_Access;
   begin
        if ((rtSLayer) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance)) and then ((HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getGroupInterface (0)) /= (rtSLayer.getGroupInterface (0))) then
            HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            GameNotificationEventHandler_Package.getInstance.fireEvent (This.notYoursGameNotificationEvent);
            return;
        end if;
        gameCanvas := HumanRTSPlayerGameInput'Class (This).getGameCanvas;
        if (rtSLayer) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.add (SelectBuildingSound_Package.getInstance);
            rtsLayer := RTSLayer_Access (rtSLayer);
            rtsLayer.select_Id;
            HumanRTSPlayerGameInput'Class (This).updateFormForLayer (rtsLayer);
            if (gameCanvas.getGameState) = (This.gameStateFactory.PLAYING_GAME_STATE) then
                if rtsLayer.isSelfUpgradeable then
                    gameCanvas.updateCurrentTouchInputFactory (RTSTouchButtonsBuilder_Package.Create);
                else
                    gameCanvas.updateCurrentTouchInputFactory (NoBuildingSelectedTouchButtonsBuilder_Package.Create);
                end if;
            else
                endLevelTouchButtonsBuilder := EndLevelTouchButtonsBuilder_Package.Create;
                if (This.touchButtonsBuilderFactory) /= (null) then
                    endLevelTouchButtonsBuilder.add (This.touchButtonsBuilderFactory.getInstance);
                end if;
                gameCanvas.updateCurrentTouchInputFactory (endLevelTouchButtonsBuilder);
            end if;
        else
            This.logUtil.putF (To_Unbounded_String ("Set Player Default Form"), HumanRTSPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedRTSLayer"));
            HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.setCurrentScrollSelectionForm (HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getBuildingScrollSelectionForm);
            HumanRTSPlayerGameInput'Class (This).setSelectedRtsFormInput (HumanRTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface.getRTSFormInput);
            HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.setSelectedRTSLayer (CollidableDestroyableDamageableLayer_Package.getNullInstance);
            if (gameCanvas.getGameState) = (This.gameStateFactory.PLAYING_GAME_STATE) then
                gameCanvas.updateCurrentTouchInputFactory (NoBuildingSelectedTouchButtonsBuilder_Package.Create);
            else
                endLevelNoBuildingSelectedTouchButtonsBuilder := EndLevelNoBuildingSelectedTouchButtonsBuilder_Package.Create;
                if (This.touchButtonsBuilderFactory) /= (null) then
                    endLevelNoBuildingSelectedTouchButtonsBuilder.add (This.touchButtonsBuilderFactory.getInstance);
                end if;
                gameCanvas.updateCurrentTouchInputFactory (endLevelNoBuildingSelectedTouchButtonsBuilder);
            end if;
        end if;
        HumanRTSPlayerGameInput'Class (This).getSelectedRtsFormInput.setSelectedGeographicCellPosition (geographicMapCellPosition);
        HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.setSelectedRTSLayer (rtSLayer);
        HumanRTSPlayerGameInput'Class (This).updatePaintable;
   end setSelectedRTSLayer;

   procedure updatePaintable (This : in out HumanRTSPlayerGameInput) is
      list : BasicArrayList_Access;
      rtsLayer : RTSLayer_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        list := HumanRTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.getSelectedBasicArrayList;
        if (list.size) > (1) then
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (HumanRTSPlayerGameInput'Class (This).getGameCanvas);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            This.multiSelectPaintable.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
            This.multiSelectPaintable.update (list);
            HumanRTSPlayerGameInput'Class (This).getRTSLayerInfoPaintable.updateRTSLayerInfoSelection (This.multiSelectPaintable);
        elsif (list.size) = (1) then
            rtsLayer := RTSLayer_Access (list.get (0));
            HumanRTSPlayerGameInput'Class (This).getRTSLayerInfoPaintable.updateRTSLayerInfoSelection (rtsLayer.createHudPaintable);
        else
            HumanRTSPlayerGameInput'Class (This).getRTSLayerInfoPaintable.updateRTSLayerInfoInit (NullInitUpdatePaintable_Package.getInstance);
        end if;
   end updatePaintable;

   procedure paint (This : in out HumanRTSPlayerGameInput; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      rectX1 : Integer;
      rectY1 : Integer;
      rectX2 : Integer;
      rectY2 : Integer;
   begin
        RTSPlayerGameInput (This).paint (graphics);
        if ((This.startPoint) /= (PointFactory_Package.getInstance.ZERO_ZERO)) and then ((This.endPoint) /= (PointFactory_Package.getInstance.ZERO_ZERO)) then
            graphics.setColor (BasicColorFactory_Package.getInstance.RED.intValue);
            rectX1 := This.startPoint.getX;
            rectY1 := This.startPoint.getY;
            rectX2 := This.endPoint.getX;
            rectY2 := This.endPoint.getY;
            if (rectX1) > (rectX2) then
                rectX2 := rectX1;
                rectX1 := This.endPoint.getX;
            end if;
            if (rectY1) > (rectY2) then
                rectY2 := rectY1;
                rectY1 := This.endPoint.getY;
            end if;
            graphics.drawRect (rectX1, rectY1, (rectX2) - (rectX1), (rectY2) - (rectY1));
        end if;
   end paint;

   procedure onMotionGestureEvent (This : in out HumanRTSPlayerGameInput; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        HumanRTSPlayerGameInput'Class (This).getMotionGestureInputList.add (Java_Object_Access (motionGestureEvent));
   end onMotionGestureEvent;

   procedure onScrolledMotionGestureEvent (This : in out HumanRTSPlayerGameInput; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
   begin
        null;
   end onScrolledMotionGestureEvent;

   function getSelectedRtsLayer (This : in out HumanRTSPlayerGameInput) return CollidableDestroyableDamageableLayer_Access is
   begin
        return This.selectedRtsLayer;
   end getSelectedRtsLayer;

   procedure setSelectedRtsLayer (This : in out HumanRTSPlayerGameInput; selectedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      selectedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (selectedRtsLayer_Param);
   begin
        This.selectedRtsLayer := selectedRtsLayer;
   end setSelectedRtsLayer;

   procedure processDraggingMotionInput (This : in out HumanRTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      Java_Result : constant Boolean := HumanRTSPlayerGameInput'Class (This).processDraggingMotionInput (layerManager_Param => layerManager_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processDraggingMotionInput;

end org.allbinary.game.input.HumanRTSPlayerGameInput_Package;



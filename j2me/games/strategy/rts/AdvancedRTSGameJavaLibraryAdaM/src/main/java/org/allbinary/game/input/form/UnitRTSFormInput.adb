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


with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package; use org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package; use org.allbinary.game.layer.RTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSPlayerLayerInterface_Package_References;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.waypoint.WorkWaypoint_Package; use org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
with org.allbinary.media.audio.BuildingSound_Package; use org.allbinary.media.audio.BuildingSound_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package_References;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.game.input.form.AssignWaypointsUtil_Package; use org.allbinary.game.input.form.AssignWaypointsUtil_Package;
with org.allbinary.game.input.form.PlayersSingletonFactory_Package; use org.allbinary.game.input.form.PlayersSingletonFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.game.input.form.AssignWaypointsUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.math.FrameUtil_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.input.form.PlayersSingletonFactory_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.game.layer.SensorAction_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.layer.unit.UnitWaypointStrings_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.game.layer.waypoint.Waypoint_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;

package body org.allbinary.game.input.form.UnitRTSFormInput_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AdvancedPlayerOwnedRTSLayers_Package renames Standard.org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers_Package;
   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package AdvancedRTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package Capital_Package renames Standard.org.allbinary.game.layer.capital.Capital_Package;
   package UnitLayer_Package renames Standard.org.allbinary.game.layer.unit.UnitLayer_Package;
   package WorkWaypoint_Package renames Standard.org.allbinary.game.layer.waypoint.WorkWaypoint_Package;
   package BuildingSound_Package renames Standard.org.allbinary.media.audio.BuildingSound_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package GeographicMapCellPositionAreaBase_Package renames Standard.org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   function "=" (Left, Right : ABCustomItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   function "=" (Left, Right : ABCustomItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
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
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
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
   procedure Initialize_Fields (This : in out UnitRTSFormInput'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out UnitRTSFormInput'Class; groupInterface : Group_Access_Array_Access) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      basicColorFactory : BasicColorFactory_Access;
   begin
        RTSFormInput_Package.Initialize (This, groupInterface);
        Initialize_Fields (This);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.noMoneyGameNotificationEvent := GameNotificationEvent_Package.Create (UnitRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NO_MONEY, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.newUnitGameNotificationEvent := GameNotificationEvent_Package.Create (UnitRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NEW_UNIT, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        UnitRTSFormInput'Class (This).getHashtable.put (WorkWaypoint_Package.ID, smallIntegerSingletonFactory.getAt (50));
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access) return UnitRTSFormInput_Access is
      This : constant UnitRTSFormInput_Access := new UnitRTSFormInput;
   begin
      UnitRTSFormInput_Package.Initialize (This.all, groupInterface);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out UnitRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput_Package.RTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.noMoneyGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.newUnitGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processGameSpecific (This : in out UnitRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      associatedRtsLayer2 : RTSLayer_Access;
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      cellPoint : GPoint_Access;
      rtsLayer : RTSLayer_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput_Package.RTSFormInput (This).process (layerManager);
        associatedRtsLayer2 := RTSLayer_Access (associatedRtsLayer);
        geographicMapCellPositionArea := GeographicMapCellPositionAreaBase_Access (associatedRtsLayer2.geographicMapCellPositionAreaBase);
        geographicMapCellPosition := geographicMapCellPositionArea.getNextSurroundingGeographicMapCellPosition;
        UnitRTSFormInput'Class (This).getHashtable.put (Layer_Package.ID, associatedRtsLayer);
        UnitRTSFormInput'Class (This).getHashtable.put (UnitRTSFormInput_Package.DECAL_ID, AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface).getDecalBasicColor);
        if (This.newUnconstructedRTSLayerInterfaceArray (itemIndex)) = (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := UnitRTSFormInput'Class (This).getInstance (layerManager, item, geographicMapCellPosition);
        else
            cellPoint := geographicMapCellPosition.getPoint;
            rtsLayer := RTSLayer_Access (This.newUnconstructedRTSLayerInterfaceArray (itemIndex));
            rtsLayer.setPosition (cellPoint.getX, cellPoint.getY, rtsLayer.getZP);
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (rtsLayer.allBinaryGameLayerManagerP);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            rtsLayer.geographicMapCellPositionAreaBase.update (geographicMapInterface);
        end if;
        cellPoint := geographicMapCellPosition.getMidPoint;
        rtsLayer := RTSLayer_Access (This.newUnconstructedRTSLayerInterfaceArray (itemIndex));
        rtsLayer.setPosition ((cellPoint.getX) - (rtsLayer.getHalfWidth), (cellPoint.getY) - (rtsLayer.getHalfHeight), rtsLayer.getZP);
        UnitRTSFormInput'Class (This).attemptBuild (associatedRtsLayer2, rtsPlayerLayerInterface, layerManager, RTSLayer_Access (rtsLayer), itemIndex);
   end processGameSpecific;

   --  throws Exception
   procedure attemptBuild (This : in out UnitRTSFormInput; associatedRtsLayer_Param : access RTSLayer_Package.RTSLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer) is
      associatedRtsLayer : constant RTSLayer_Access := RTSLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      layerInterface : constant RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      cost : Integer;
      capital : Capital_Access;
      stringBuffer : StringMaker_Access;
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
      advancedPlayerOwnedRTSLayers : AdvancedPlayerOwnedRTSLayers_Access;
   begin
        cost := layerInterface.getCost;
        capital := rtsPlayerLayerInterface.getCapital;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Trying to Build: "));
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" for: $"));
        stringBuffer.appendint (cost);
        stringBuffer.append (To_Unbounded_String (" with "));
        stringBuffer.appendint (Integer (capital.getTotalMoney));
        This.logUtil.putF (stringBuffer.toString, UnitRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("attemptBuild"));
        if (cost) <= (capital.getTotalMoney) then
            layerInterface.construct (rtsPlayerLayerInterface);
            This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := CollidableDestroyableDamageableLayer_Package.getNullInstance;
            rtsPlayerLayerInterface.add (BuildingSound_Package.getInstance);
            capital.removeMoney (cost);
            AssignWaypointsUtil_Package.getInstance.set (UnitLayer_Access (layerInterface), AdvancedRTSGameLayer_Access (associatedRtsLayer));
            layerManager.appendAt (layerInterface, PlayersSingletonFactory_Package.total);
            advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
            advancedPlayerOwnedRTSLayers := advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers;
            advancedPlayerOwnedRTSLayers.addUnit (layerInterface);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.newUnitGameNotificationEvent);
            end if;
        else
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.noMoneyGameNotificationEvent);
            end if;
        end if;
   end attemptBuild;

begin
   null;
   DECAL_ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (23);

end org.allbinary.game.input.form.UnitRTSFormInput_Package;



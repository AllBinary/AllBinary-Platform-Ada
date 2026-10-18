-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.game.identification.GroupFactory_Package; use org.allbinary.game.identification.GroupFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.layer.building.event.BuildingEventHandler_Package; use org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;
with org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
with org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package; use org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;
with org.allbinary.game.tick.NullTickable_Package; use org.allbinary.game.tick.NullTickable_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;

package body org.allbinary.game.layer.AdvancedRTSGameLayer_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GameTypeFactory_Package renames Standard.org.allbinary.game.GameTypeFactory_Package;
   package DestroyedEventHandler_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package GroupFactory_Package renames Standard.org.allbinary.game.identification.GroupFactory_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package BuildingEventHandler_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventHandler_Package;
   package UnitLayer_Package renames Standard.org.allbinary.game.layer.unit.UnitLayer_Package;
   package Waypoint2SelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;
   package WaypointBase_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointBase_Package;
   package WaypointRunnableSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper_Package;
   package WaypointSelectedLogHelper_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;
   package NullTickable_Package renames Standard.org.allbinary.game.tick.NullTickable_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package FrameUtil_Package renames Standard.org.allbinary.math.FrameUtil_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   procedure Initialize_Fields (This : in out AdvancedRTSGameLayer'Class) is
   begin
      null;
      
      
      
      This.parentLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
      This.waypointBehaviorBase := NullTickable_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   function createSimulated return AdvancedRTSGameLayer_Access is
      nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
      nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        nullAnimationInterfaceFactoryInterface := NullAnimationFactory_Package.getFactoryInstance;
        nullIndexedAnimationInterfaceFactoryInterface := NullIndexedAnimationFactory_Package.getFactoryInstance;
        return AdvancedRTSGameLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER, AdvancedRTSProperties_Package.createPropertiesSimulated, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0, TileLayerPositionIntoViewPosition_Package.Create);
   end createSimulated;

   procedure Initialize (This : in out AdvancedRTSGameLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      parentLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (parentLayer_Param);
      advancedRTSProperties : constant AdvancedRTSProperties_Access := AdvancedRTSProperties_Access (advancedRTSProperties_Param);
      healthInterface : constant Health_Access := Health_Access (healthInterface_Param);
      rtsFormInput : constant RTSFormInput_Access := RTSFormInput_Access (rtsFormInput_Param);
      animationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (animationInterfaceFactoryInterface_Param);
      emptyAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (emptyAnimationInterfaceFactoryInterface_Param);
      baseAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (baseAnimationInterfaceFactoryInterface_Param);
      buildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (buildAnimationInterfaceFactoryInterface_Param);
      verticleBuildAnimationInterfaceFactoryInterface : constant AnimationInterfaceFactoryInterface_Access := AnimationInterfaceFactoryInterface_Access (verticleBuildAnimationInterfaceFactoryInterface_Param);
      proceduralAnimationInterfaceFactoryInterface : constant ProceduralAnimationInterfaceFactoryInterface_Access := ProceduralAnimationInterfaceFactoryInterface_Access (proceduralAnimationInterfaceFactoryInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        RTSLayer_Package.Initialize (This, remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        Initialize_Fields (This);
        AdvancedRTSGameLayer'Class (This).setVisible (False);
        AdvancedRTSGameLayer'Class (This).setWaypointBehavior (WaypointBehaviorBase_Package.Create);
        This.shakeListener := advancedRTSProperties.shakeListener;
        This.vibration := advancedRTSProperties.vibration;
        This.duration := advancedRTSProperties.duration;
        AdvancedRTSGameLayer'Class (This).setParentLayer (parentLayer);
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return AdvancedRTSGameLayer_Access is
      This : constant AdvancedRTSGameLayer_Access := new AdvancedRTSGameLayer;
   begin
      AdvancedRTSGameLayer_Package.Initialize (This.all, remoteInfo_Param, parentLayer_Param, advancedRTSProperties_Param, groupInterface, rootName, name, healthInterface_Param, rtsFormInput_Param, animationInterfaceFactoryInterface_Param, emptyAnimationInterfaceFactoryInterface_Param, baseAnimationInterfaceFactoryInterface_Param, buildAnimationInterfaceFactoryInterface_Param, verticleBuildAnimationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, x, y, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure updateWaypointBehavior (This : in out AdvancedRTSGameLayer; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        RTSLayer (This).updateWaypointBehavior (geographicMapInterface);
        AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint.setAllBinaryGameLayerManager (This.allBinaryGameLayerManagerP);
   end updateWaypointBehavior;

   procedure initVisibility (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        if (advancedRTSPlayerLayerInterface.isLocalPlayer) or else ((advancedRTSPlayerLayerInterface.getGameType) = (GameTypeFactory_Package.getInstance.BOT)) then
            AdvancedRTSGameLayer'Class (This).setVisible (True);
        else
            AdvancedRTSGameLayer'Class (This).setVisible (False);
        end if;
   end initVisibility;

   --  throws Exception
   procedure construct (This : in out AdvancedRTSGameLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
   begin
        RTSLayer (This).construct (rtsPlayerLayerInterface);
        AdvancedRTSGameLayer'Class (This).initVisibility (rtsPlayerLayerInterface);
        BuildingEventHandler_Package.getInstance.addListenerInterface (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint);
   end construct;

   --  throws Exception
   procedure setDestroyed (This : in out AdvancedRTSGameLayer; destroyed : Boolean) is
   begin
        RTSLayer (This).setDestroyed (destroyed);
        if AdvancedRTSGameLayer'Class (This).isDestroyed then
            BuildingEventHandler_Package.getInstance.removeListener (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint);
            BuildingEventHandler_Package.getInstance.removeListener (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            DestroyedEventHandler_Package.getInstance.addListener (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            RTSLayerUtil_Package.getInstance.destroyAndClear (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getOwnedWaypointList);
        end if;
   end setDestroyed;

   function getParentLayer (This : in out AdvancedRTSGameLayer) return PathFindingLayerInterface_Access is
   begin
        return This.parentLayer;
   end getParentLayer;

   procedure setParentLayer (This : in out AdvancedRTSGameLayer; parentLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      parentLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (parentLayer_Param);
   begin
        This.parentLayer := parentLayer;
   end setParentLayer;

   function getWaypointBehavior (This : in out AdvancedRTSGameLayer) return WaypointBehaviorBase_Access is
   begin
        return WaypointBehaviorBase_Access (This.waypointBehaviorBase);
   end getWaypointBehavior;

   procedure setWaypointBehavior (This : in out AdvancedRTSGameLayer; unitWaypointHelper_Param : access WaypointBehaviorBase_Package.WaypointBehaviorBase'Class) is
      unitWaypointHelper : constant WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointHelper_Param);
   begin
        This.waypointBehaviorBase := TickableInterface_Access (unitWaypointHelper);
   end setWaypointBehavior;

   function getWaypointLogHelper (This : in out AdvancedRTSGameLayer) return WaypointLogHelper_Access is
   begin
        return This.waypointLogHelperP;
   end getWaypointLogHelper;

   function getWaypoint2LogHelper (This : in out AdvancedRTSGameLayer) return Waypoint2LogHelper_Access is
   begin
        return This.waypoint2LogHelperP;
   end getWaypoint2LogHelper;

   function getWaypointRunnableLogHelper (This : in out AdvancedRTSGameLayer) return WaypointRunnableLogHelper_Access is
   begin
        return This.waypointRunnableLogHelperP;
   end getWaypointRunnableLogHelper;

   function shouldAddWaypointFromBuilding (This : in out AdvancedRTSGameLayer) return Boolean is
      parentAdvancedRTSGameLayer : AdvancedRTSGameLayer_Access;
   begin
        if (This.parentLayer) /= (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER) then
            parentAdvancedRTSGameLayer := AdvancedRTSGameLayer_Access (This.parentLayer);
            if (parentAdvancedRTSGameLayer.getType) /= (UnitLayer_Package.getStaticType) then
                return True;
            end if;
        end if;
        return False;
   end shouldAddWaypointFromBuilding;

   function isWaypointListEmptyOrOnlyTargets (This : in out AdvancedRTSGameLayer) return Boolean is
   begin
        if (AdvancedRTSGameLayer'Class (This).getType) /= (UnitLayer_Package.getStaticType) then
            return True;
        end if;
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      allbinaryLayer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      buildingDirection : Direction_Access;
      angleInfo : AngleInfo_Access;
      angle : Integer;
      gameKeyEventFactory : GameKeyEventFactory_Access;
   begin
        geographicMapCellPosition := AdvancedRTSGameLayer'Class (This).getCurrentGeographicMapCellPosition;
        buildingDirection := GeographicMapDirectionUtil_Package.getInstance.getDirectionFromCellPositionToAdjacentCellPosition (geographicMapCellPosition, cellPosition);
        angleInfo := AdvancedRTSGameLayer'Class (This).getRotationAnimationInterface.getAngleInfoP;
        angle := FrameUtil_Package.getInstance.adjustAngleToFrameAngle ((angleInfo.getAngle) + (90));
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if (buildingDirection) = (DirectionFactory_Package.getInstance.UP) then
            This.rtsLayer2LogHelper.buildingAbove (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            if ((angle) > (180)) and then ((angle) < (360)) then
                This.rtsLayer2LogHelper.buildingChaseLeft (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if (angle) <= (190) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseRight (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) >= (170) then
                    return True;
                end if;
            end if;
        elsif (buildingDirection) = (DirectionFactory_Package.getInstance.DOWN) then
            This.rtsLayer2LogHelper.buildingDown (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
            if ((angle) > (180)) and then ((angle) < (360)) then
                This.rtsLayer2LogHelper.buildingChaseLeft (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) > (315) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseRight (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if (angle) < (45) then
                    return True;
                end if;
            end if;
        elsif (buildingDirection) = (DirectionFactory_Package.getInstance.LEFT) then
            This.rtsLayer2LogHelper.buildingLeft;
            if ((angle) > (90)) and then ((angle) < (270)) then
                This.rtsLayer2LogHelper.buildingChaseDown (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if (angle) < (135) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseUp (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) > (45) then
                    return True;
                end if;
            end if;
        elsif (buildingDirection) = (DirectionFactory_Package.getInstance.RIGHT) then
            This.rtsLayer2LogHelper.buildingRight;
            if ((angle) > (90)) and then ((angle) < (270)) then
                This.rtsLayer2LogHelper.buildingChaseDown (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.RIGHT));
                if (angle) > (225) then
                    return True;
                end if;
            else
                This.rtsLayer2LogHelper.buildingChaseUp (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), angle);
                AdvancedRTSGameLayer'Class (This).getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (AdvancedRTSGameLayer_Access'(This'Unchecked_Access), Canvas_Package.LEFT));
                if ((angle) < (315)) and then ((angle) > (180)) then
                    return True;
                end if;
            end if;
        else
            return True;
        end if;
        return False;
   end buildingChase;

   --  throws Exception
   function getSurroundingGeographicMapCellPositionList (This : in out AdvancedRTSGameLayer) return BasicArrayList_Access is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.geographicMapCellPositionAreaBase.update (geographicMapInterface);
        return This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
   end getSurroundingGeographicMapCellPositionList;

   procedure setSelected (This : in out AdvancedRTSGameLayer; selected : Boolean) is
   begin
        RTSLayer (This).setSelected (selected);
        if This.debug then
            if selected then
                This.waypointLogHelperP := WaypointSelectedLogHelper_Package.getInstance;
                This.waypoint2LogHelperP := Waypoint2SelectedLogHelper_Package.getInstance;
                This.waypointRunnableLogHelperP := WaypointRunnableSelectedLogHelper_Package.getInstance;
            else
                This.waypointLogHelperP := WaypointLogHelper_Package.getInstance;
                This.waypoint2LogHelperP := Waypoint2LogHelper_Package.getInstance;
                This.waypointRunnableLogHelperP := WaypointRunnableLogHelper_Package.getInstance;
            end if;
        end if;
   end setSelected;

   procedure onDestroyed (This : in out AdvancedRTSGameLayer; destroyedEvent_Param : access DestroyedEvent_Package.DestroyedEvent'Class) is
      destroyedEvent : constant DestroyedEvent_Access := DestroyedEvent_Access (destroyedEvent_Param);
      layerInterface : AllBinaryLayer_Access;
      waypoint : WaypointBase_Access;
   begin
        begin
            layerInterface := destroyedEvent.getLayerInterface;
            if (layerInterface) = (AdvancedRTSGameLayer_Access'(This'Unchecked_Access)) then
                DestroyedEventHandler_Package.getInstance.removeListener (AdvancedRTSGameLayer_Access'(This'Unchecked_Access));
                waypoint := WaypointBase_Access (AdvancedRTSGameLayer'Class (This).getWaypointBehavior.getWaypoint);
                waypoint.reset;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AdvancedRTSGameLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("onDestroyed"), e);
                end;
        end;
   end onDestroyed;

   procedure buildingChase (This : in out AdvancedRTSGameLayer; allbinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := AdvancedRTSGameLayer'Class (This).buildingChase (allbinaryLayer_Param, cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end buildingChase;

end org.allbinary.game.layer.AdvancedRTSGameLayer_Package;



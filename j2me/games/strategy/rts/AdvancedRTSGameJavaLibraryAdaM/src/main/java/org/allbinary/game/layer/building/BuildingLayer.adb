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


with org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package; use org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.game.identification.GroupFactory_Package; use org.allbinary.game.identification.GroupFactory_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package; use org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
with org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package; use org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.layer.RTSLayerUtil_Package; use org.allbinary.game.layer.RTSLayerUtil_Package;
with org.allbinary.game.layer.waypoint.Waypoint_Package; use org.allbinary.game.layer.waypoint.Waypoint_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package; use org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;
with org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package; use org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;

package body org.allbinary.game.layer.building.BuildingLayer_Package is

   package ExplosionBasicSound_Package renames Standard.org.allbinary.ag.weapon.media.audio.ExplosionBasicSound_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package GroupFactory_Package renames Standard.org.allbinary.game.identification.GroupFactory_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package VisibleCellPositionsSingleton_Package renames Standard.org.allbinary.game.input.form.VisibleCellPositionsSingleton_Package;
   package AdvancedRTSPlayerLayerInterface_Package renames Standard.org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package RTSLayerUtil_Package renames Standard.org.allbinary.game.layer.RTSLayerUtil_Package;
   package Waypoint_Package renames Standard.org.allbinary.game.layer.waypoint.Waypoint_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package GeographicMapCellPositionAreaBase_Package renames Standard.org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out BuildingLayer'Class) is
   begin
      null;
      This.buildingLevelCost := 0;
      This.productivity := 0;
      
      
      
      
      
      
      
      This.local := False;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (3000);
   end Initialize_Fields;


   --  throws Exception
   function createSimulated return BuildingLayer_Access is
      nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
      nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access;
   begin
        nullAnimationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullAnimationFactory_Package.getFactoryInstance);
        nullIndexedAnimationInterfaceFactoryInterface := AnimationInterfaceFactoryInterface_Access (NullIndexedAnimationFactory_Package.getFactoryInstance);
        return BuildingLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, SimulatedBuildingPropertiesFactory_Package.getInstance, AdvancedRTSProperties_Package.createPropertiesSimulated, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0);
   end createSimulated;

   procedure Initialize (This : in out BuildingLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; buildingPropertiesFactory_Param : access BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      buildingPropertiesFactory : constant BuildingPropertiesFactory_Access := BuildingPropertiesFactory_Access (buildingPropertiesFactory_Param);
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
   begin
        AdvancedRTSGameLayer_Package.Initialize (This, remoteInfo, NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition_Package.Create);
        Initialize_Fields (This);
        BuildingLayer'Class (This).setCollidableInferface (CollidableRTSBehavior_Package.Create (True));
        BuildingLayer'Class (This).getWaypointBehavior.setWaypoint (Waypoint_Package.Create (BuildingLayer_Access'(This'Unchecked_Access), SelectSound_Package.getInstance));
        This.damageFloaters := buildingPropertiesFactory.getDamageFloaters (BuildingLayer_Access'(This'Unchecked_Access));
        This.damageFloatersPaintableInterface := buildingPropertiesFactory.damageFloatersPaintableInterface;
        This.healthBar := buildingPropertiesFactory.getHealthBar (BuildingLayer_Access'(This'Unchecked_Access));
        This.pathsHashtable := buildingPropertiesFactory.getHashtable;
        BuildingLayer'Class (This).setMaxLevel (30);
        BuildingLayer'Class (This).setProductivity (1);
        BuildingLayer'Class (This).setEfficiency (BuildingLayer'Class (This).calculateEfficiency);
        This.efficiencyPerLevel := buildingPropertiesFactory.getEfficiencyPerLevel (BuildingLayer_Access'(This'Unchecked_Access));
        This.efficiency := This.efficiencyPerLevel;
        BuildingLayer'Class (This).generateMoveOutOfBuildAreaPaths;
        This.trackingEvent := buildingPropertiesFactory.getTrackingEvent (BuildingLayer_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; buildingPropertiesFactory_Param : access BuildingPropertiesFactory_Package.BuildingPropertiesFactory'Class; advancedRTSProperties_Param : access AdvancedRTSProperties_Package.AdvancedRTSProperties'Class; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface_Param : access Health_Package.Health'Class; rtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class; animationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; emptyAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; baseAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; buildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; verticleBuildAnimationInterfaceFactoryInterface_Param : access AnimationInterfaceFactoryInterface_Package.AnimationInterfaceFactoryInterface'Class; proceduralAnimationInterfaceFactoryInterface_Param : access ProceduralAnimationInterfaceFactoryInterface_Package.ProceduralAnimationInterfaceFactoryInterface'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; x : Integer; y : Integer) return BuildingLayer_Access is
      This : constant BuildingLayer_Access := new BuildingLayer;
   begin
      BuildingLayer_Package.Initialize (This.all, remoteInfo_Param, buildingPropertiesFactory_Param, advancedRTSProperties_Param, groupInterface, rootName, name, healthInterface_Param, rtsFormInput_Param, animationInterfaceFactoryInterface_Param, emptyAnimationInterfaceFactoryInterface_Param, baseAnimationInterfaceFactoryInterface_Param, buildAnimationInterfaceFactoryInterface_Param, verticleBuildAnimationInterfaceFactoryInterface_Param, proceduralAnimationInterfaceFactoryInterface_Param, rectangle_Param, x, y);
      return This;
   end Create;

   procedure initVisibility (This : in out BuildingLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        if advancedRTSPlayerLayerInterface.isLocalPlayer then
            This.local := True;
            BuildingLayer'Class (This).addVisibility;
        else
            This.local := False;
        end if;
        AdvancedRTSGameLayer (This).initVisibility (rtsPlayerLayerInterface);
   end initVisibility;

   --  throws Exception
   procedure construct (This : in out BuildingLayer; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
   begin
        AdvancedRTSGameLayer (This).construct (rtsPlayerLayerInterface);
        TrackingEventHandler_Package.getInstance.addListenerInterface (BuildingLayer_Access'(This'Unchecked_Access));
   end construct;

   procedure onMovement (This : in out BuildingLayer; trackingEvent_Param : access TrackingEvent_Package.TrackingEvent'Class) is
      trackingEvent : constant TrackingEvent_Access := TrackingEvent_Access (trackingEvent_Param);
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        begin
            layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
            if (layerInterface.getGroupInterface (0)) /= (BuildingLayer'Class (This).getGroupInterface (0)) then
                layerInterface.onMovementFound (This.trackingEvent);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, BuildingLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("onMovement"), e);
                end;
        end;
   end onMovement;

   --  throws Exception
   procedure processBuiltTick (This : in out BuildingLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      currentFrame : Integer;
      size : Integer;
   begin
        if BuildingLayer'Class (This).getHealthInterface.isDamaged then
            BuildingLayer'Class (This).setAnimationInterface (This.destroyAnimationInterface);
        end if;
        if not (BuildingLayer'Class (This).getHealthInterface.isAlive) then
            if BuildingLayer'Class (This).isReadyForExplosion then
                currentFrame := This.destroyAnimationInterface.getFrame;
                size := (This.destroyAnimationInterface.getSize) - (1);
                if ((currentFrame) = (size)) and then (not (This.timeDelayHelper.isTimeTNT)) then
                    if not (BuildingLayer'Class (This).getHealthInterface.isAlive) then
                        BuildingLayer'Class (This).setDestroyed (True);
                    end if;
                else
                    This.destroyAnimationInterface.nextFrame;
                end if;
            else
                BuildingLayer'Class (This).setAnimationInterface (This.destroyAnimationInterface);
                SecondaryPlayerQueueFactory_Package.getInstance.add (ExplosionBasicSound_Package.getInstance);
                This.shakeListener.onSmallShakeEvent;
                This.vibration.vibrate (This.duration, 0, 0);
                This.timeDelayHelper.setStartTimeTNT;
                BuildingLayer'Class (This).setReadyForExplosion (True);
            end if;
        else
            AdvancedRTSGameLayer (This).processBuiltTick (allBinaryLayerManager);
        end if;
        This.indexedButShouldBeRotationAnimationInterface.nextFrame;
   end processBuiltTick;

   function calculateEfficiency (This : in out BuildingLayer) return Integer is
   begin
        return This.efficiencyPerLevel;
   end calculateEfficiency;

   function getCost (This : in out BuildingLayer) return Integer is
      total : Long_Long_Integer;
   begin
        total := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((BuildingLayer'Class (This).getLevel) * (BuildingLayer'Class (This).getBuildingLevelCost))));
        return Integer (total);
   end getCost;

   function getDowngradeCost (This : in out BuildingLayer) return Integer is
      downgradeCost : Long_Long_Integer;
   begin
        downgradeCost := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((((BuildingLayer'Class (This).getLevel) - (1))) * (BuildingLayer'Class (This).getBuildingLevelCost))));
        This.logUtil.putF (To_Unbounded_String ("Cost: ") & Java_Image (downgradeCost), BuildingLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("getDowngradeCost"));
        return ((Integer (downgradeCost)) * (9)) / (10);
   end getDowngradeCost;

   function getUpgradeCost (This : in out BuildingLayer) return Integer is
      upgradeCost : Long_Long_Integer;
   begin
        upgradeCost := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((((BuildingLayer'Class (This).getLevel) + (1))) * (BuildingLayer'Class (This).getBuildingLevelCost))));
        return Integer (upgradeCost);
   end getUpgradeCost;

   procedure downgrade (This : in out BuildingLayer) is
   begin
        AdvancedRTSGameLayer (This).downgrade;
        BuildingLayer'Class (This).setProductivity ((BuildingLayer'Class (This).getProductivity) - (1));
        BuildingLayer'Class (This).setEfficiency ((BuildingLayer'Class (This).getEfficiency) - (BuildingLayer'Class (This).calculateEfficiency));
        BuildingLayer'Class (This).getHealthInterface.setMaxHealth ((BuildingLayer'Class (This).getHealthInterface.getMaxHealth) - (((((BuildingLayer'Class (This).getLevel) + (1))) * (100))));
   end downgrade;

   procedure upgrade (This : in out BuildingLayer) is
   begin
        AdvancedRTSGameLayer (This).upgrade;
        BuildingLayer'Class (This).setProductivity ((BuildingLayer'Class (This).getProductivity) + (1));
        BuildingLayer'Class (This).setEfficiency ((BuildingLayer'Class (This).getEfficiency) + (BuildingLayer'Class (This).calculateEfficiency));
        BuildingLayer'Class (This).getHealthInterface.setMaxHealth ((BuildingLayer'Class (This).getHealthInterface.getMaxHealth) + (((BuildingLayer'Class (This).getLevel) * (100))));
   end upgrade;

   function getBuildingLevelCost (This : in out BuildingLayer) return Integer is
   begin
        return This.buildingLevelCost;
   end getBuildingLevelCost;

   procedure setBuildingLevelCost (This : in out BuildingLayer; buildingLevelCost : Integer) is
   begin
        This.buildingLevelCost := buildingLevelCost;
   end setBuildingLevelCost;

   function getProductivity (This : in out BuildingLayer) return Integer is
   begin
        return This.productivity;
   end getProductivity;

   procedure setProductivity (This : in out BuildingLayer; productivity : Integer) is
   begin
        This.productivity := productivity;
   end setProductivity;

   function getEfficiency (This : in out BuildingLayer) return Integer is
   begin
        return This.efficiency;
   end getEfficiency;

   procedure setEfficiency (This : in out BuildingLayer; efficiency : Integer) is
   begin
        This.efficiency := efficiency;
   end setEfficiency;

   --  throws Exception
   procedure generateMoveOutOfBuildAreaPaths (This : in out BuildingLayer) is
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
      NO_DIRECTION : Direction_Access;
      geographicMapDirectionUtil : GeographicMapDirectionUtil_Access;
      pathsList : BasicArrayList_Access;
      occupyGeographicMapCellPosition : GeographicMapCellPosition_Access;
      surroundGeographicMapCellPosition : GeographicMapCellPosition_Access;
      list : BasicArrayList_Access;
      index : Integer;
      index2 : Integer;
   begin
        occupyList := This.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
        surroundList := This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
        NO_DIRECTION := DirectionFactory_Package.getInstance.NO_DIRECTION;
        geographicMapDirectionUtil := GeographicMapDirectionUtil_Package.getInstance;
        pathsList := null;
        occupyGeographicMapCellPosition := null;
        surroundGeographicMapCellPosition := null;
        list := null;
        for index2 in reverse 0 .. (occupyList.size) - (1) loop
            pathsList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            occupyGeographicMapCellPosition := GeographicMapCellPosition_Access (occupyList.get (index2));
            for index in reverse 0 .. (surroundList.size) - (1) loop
                surroundGeographicMapCellPosition := GeographicMapCellPosition_Access (surroundList.get (index));
                if (geographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition (surroundGeographicMapCellPosition, occupyGeographicMapCellPosition)) /= (NO_DIRECTION) then
                    list := BasicArrayList_Access (BasicArrayListS_Package.Create (1));
                    list.add (Java_Object_Access (surroundGeographicMapCellPosition));
                    pathsList.add (Java_Object_Access (list));
                end if;
            end loop;
            This.pathsHashtable.put (occupyGeographicMapCellPosition, pathsList);
        end loop;
   end generateMoveOutOfBuildAreaPaths;

   function getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      pathsList : BasicArrayList_Access;
   begin
        pathsList := BasicArrayList_Access (This.pathsHashtable.get (geographicMapCellPosition));
        return pathsList;
   end getMoveOutOfBuildAreaPath;

   function getEndGeographicMapCellPositionList (This : in out BuildingLayer) return BasicArrayList_Access is
   begin
        return This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
   end getEndGeographicMapCellPositionList;

   function shouldHandleStartSameAsEnd (This : in out BuildingLayer) return Boolean is
   begin
        return False;
   end shouldHandleStartSameAsEnd;

   procedure paint (This : in out BuildingLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        if BuildingLayer'Class (This).isVisible then
            AdvancedRTSGameLayer (This).paint (graphics);
            This.damageFloatersPaintableInterface.paint (graphics);
            This.healthBar.paint (graphics);
        end if;
   end paint;

   --  throws Exception
   procedure damage (This : in out BuildingLayer; damage : Integer; damageType : Integer) is
   begin
        AdvancedRTSGameLayer (This).damage (damage, damageType);
        This.damageFloaters.add (damage);
        if (damage) > (0) then
            BuildingLayer'Class (This).getHealthInterface.damage (damage);
        end if;
   end damage;

   --  throws Exception
   function getDamage (This : in out BuildingLayer; damageType : Integer) return Integer is
   begin
        return 0;
   end getDamage;

   procedure addVisibility (This : in out BuildingLayer) is
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
   begin
        geographicMapCellPositionArea := This.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.addStationaryCellPositions (occupyList);
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.addStationaryCellPositions (surroundList);
   end addVisibility;

   procedure removeVisibility (This : in out BuildingLayer) is
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
   begin
        occupyList := This.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.removeStationaryCellPositions (occupyList);
        surroundList := This.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList;
        VisibleCellPositionsSingleton_Package.getInstance.removeStationaryCellPositions (surroundList);
   end removeVisibility;

   --  throws Exception
   procedure setDestroyed (This : in out BuildingLayer; destroyed : Boolean) is
      damage : Integer;
   begin
        AdvancedRTSGameLayer (This).setDestroyed (destroyed);
        if BuildingLayer'Class (This).isDestroyed then
            DropCellPositionHistory_Package.getInstance.removeAll (BuildingLayer_Access'(This'Unchecked_Access));
            TrackingEventHandler_Package.getInstance.removeListener (BuildingLayer_Access'(This'Unchecked_Access));
            if This.local then
                BuildingLayer'Class (This).removeVisibility;
            end if;
            if not (BuildingLayer'Class (This).getHealthInterface.isAlive) then
                damage := BuildingLayer'Class (This).getHealthInterface.getMaxHealth;
                if (damage) > (10) then
                    SecondaryPlayerQueueFactory_Package.getInstance.add (ExplosionBasicSound_Package.getInstance);
                    if (damage) < (100) then
                        This.shakeListener.onSmallShakeEvent;
                        This.vibration.vibrate (This.duration, 0, 0);
                    elsif (damage) < (1000) then
                        This.shakeListener.onMediumShakeEvent;
                        This.vibration.vibrate ((This.duration) * (2), 0, 0);
                    elsif (damage) < (3000) then
                        This.shakeListener.onLargeShakeEvent;
                        This.vibration.vibrate ((This.duration) * (4), 0, 0);
                    end if;
                end if;
            end if;
        end if;
   end setDestroyed;

   function createHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access is
      buildingInfoHudPaintable : BuildingInfoHudPaintable_Access;
   begin
        buildingInfoHudPaintable := BuildingInfoHudPaintable_Package.getInstance;
        buildingInfoHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        buildingInfoHudPaintable.setRtsLayer (BuildingLayer_Access'(This'Unchecked_Access));
        return SelectionHudPaintable_Access (buildingInfoHudPaintable);
   end createHudPaintable;

   function getHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access is
      buildingInfoHudPaintable : BuildingInfoHudPaintable_Access;
   begin
        buildingInfoHudPaintable := BuildingInfoHudPaintable_Package.getInstance;
        return SelectionHudPaintable_Access (buildingInfoHudPaintable);
   end getHudPaintable;

   function getType (This : in out BuildingLayer) return Integer is
   begin
        return BuildingLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 2;
   end getStaticType;

   procedure getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := BuildingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure getDamage (This : in out BuildingLayer; damageType : Integer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.building.BuildingLayer_Package;



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


package body org.allbinary.game.layer.building.BuildingLayer_Package is

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
        nullAnimationInterfaceFactoryInterface := NullAnimationFactory_Package.getFactoryInstance;
        nullIndexedAnimationInterfaceFactoryInterface := NullIndexedAnimationFactory_Package.getFactoryInstance;
        return BuildingLayer_Package.Create (RemoteInfo_Package.REMOTE_INFO, SimulatedBuildingPropertiesFactory_Package.getInstance, AdvancedRTSProperties_Package.createPropertiesSimulated, GroupFactory_Package.getInstance.NULL_GROUP_ARRAY, StringUtil_Package.getInstance.EMPTY_STRING, StringUtil_Package.getInstance.EMPTY_STRING, Health_Package.NULL_HEALTH, NullRTSFormInputFactory_Package.getInstance, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, NullIndexedAnimationFactory_Package.getFactoryInstance, RectangleFactory_Package.SINGLETON, 0, 0);
   end createSimulated;

   procedure Initialize (This : in out BuildingLayer'Class; remoteInfo : RemoteInfo_Access; buildingPropertiesFactory : BuildingPropertiesFactory_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) is
   begin
        AdvancedRTSGameLayer_Package.Initialize (This, remoteInfo, NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TileLayerPositionIntoViewPosition_Package.Create);
        Initialize_Fields (This);
        This.setCollidableInferface (CollidableRTSBehavior_Package.Create (True));
        This.getWaypointBehavior.setWaypoint (Waypoint_Package.Create (This'Unchecked_Access, SelectSound_Package.getInstance));
        This.damageFloaters := buildingPropertiesFactory.getDamageFloaters (This'Unchecked_Access);
        This.damageFloatersPaintableInterface := buildingPropertiesFactory.damageFloatersPaintableInterface;
        This.healthBar := buildingPropertiesFactory.getHealthBar (This'Unchecked_Access);
        This.pathsHashtable := buildingPropertiesFactory.getHashtable;
        This.setMaxLevel (30);
        This.setProductivity (1);
        This.setEfficiency (This.calculateEfficiency);
        This.efficiencyPerLevel := buildingPropertiesFactory.getEfficiencyPerLevel (This'Unchecked_Access);
        This.efficiency := This.efficiencyPerLevel;
        This.generateMoveOutOfBuildAreaPaths;
        This.trackingEvent := buildingPropertiesFactory.getTrackingEvent (This'Unchecked_Access);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; buildingPropertiesFactory : BuildingPropertiesFactory_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; healthInterface : Health_Access; rtsFormInput : RTSFormInput_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; x : Integer; y : Integer) return BuildingLayer_Access is
      This : constant BuildingLayer_Access := new BuildingLayer;
   begin
      Initialize (This.all, remoteInfo, buildingPropertiesFactory, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y);
      return This;
   end Create;

   procedure initVisibility (This : in out BuildingLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access) is
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        if advancedRTSPlayerLayerInterface.isLocalPlayer then
            This.local := True;
            This.addVisibility;
        else
            This.local := False;
        end if;
        AdvancedRTSGameLayer (This).initVisibility (rtsPlayerLayerInterface);
   end initVisibility;

   --  throws Exception
   procedure construct (This : in out BuildingLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access) is
   begin
        AdvancedRTSGameLayer (This).construct (rtsPlayerLayerInterface);
        TrackingEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
   end construct;

   procedure onMovement (This : in out BuildingLayer; trackingEvent : TrackingEvent_Access) is
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        begin
            layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
            if (layerInterface.getGroupInterface (0)) /= (This.getGroupInterface (0)) then
                layerInterface.onMovementFound (This.trackingEvent);
            end if;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("onMovement"), e);
        end;
   end onMovement;

   --  throws Exception
   procedure processBuiltTick (This : in out BuildingLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      currentFrame : Integer;
      size : Integer;
   begin
        if This.getHealthInterface.isDamaged then
            This.setAnimationInterface (This.destroyAnimationInterface);
        end if;
        if not (This.getHealthInterface.isAlive) then
            if This.isReadyForExplosion then
                currentFrame := This.destroyAnimationInterface.getFrame;
                size := (This.destroyAnimationInterface.getSize) - (1);
                if ((currentFrame) = (size)) and then (not (This.timeDelayHelper.isTimeTNT)) then
                    if not (This.getHealthInterface.isAlive) then
                        This.setDestroyed (True);
                    end if;
                else
                    This.destroyAnimationInterface.nextFrame;
                end if;
            else
                This.setAnimationInterface (This.destroyAnimationInterface);
                SecondaryPlayerQueueFactory_Package.getInstance.add (ExplosionBasicSound_Package.getInstance);
                This.shakeListener.onSmallShakeEvent;
                This.vibration.vibrate (This.duration, 0, 0);
                This.timeDelayHelper.setStartTimeTNT;
                This.setReadyForExplosion (True);
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
        total := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((This.getLevel) * (This.getBuildingLevelCost))));
        return Integer (total);
   end getCost;

   function getDowngradeCost (This : in out BuildingLayer) return Integer is
      downgradeCost : Long_Long_Integer;
   begin
        downgradeCost := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((((This.getLevel) - (1))) * (This.getBuildingLevelCost))));
        This.logUtil.putF (To_Unbounded_String ("Cost: ") & Java_Image (downgradeCost), This'Unchecked_Access, To_Unbounded_String ("getDowngradeCost"));
        return ((Integer (downgradeCost)) * (9)) / (10);
   end getDowngradeCost;

   function getUpgradeCost (This : in out BuildingLayer) return Integer is
      upgradeCost : Long_Long_Integer;
   begin
        upgradeCost := RTSLayerUtil_Package.getInstance.getCostExponential (Long_Long_Integer (((((This.getLevel) + (1))) * (This.getBuildingLevelCost))));
        return Integer (upgradeCost);
   end getUpgradeCost;

   procedure downgrade (This : in out BuildingLayer) is
   begin
        AdvancedRTSGameLayer (This).downgrade;
        This.setProductivity ((This.getProductivity) - (1));
        This.setEfficiency ((This.getEfficiency) - (This.calculateEfficiency));
        This.getHealthInterface.setMaxHealth ((This.getHealthInterface.getMaxHealth) - (((((This.getLevel) + (1))) * (100))));
   end downgrade;

   procedure upgrade (This : in out BuildingLayer) is
   begin
        AdvancedRTSGameLayer (This).upgrade;
        This.setProductivity ((This.getProductivity) + (1));
        This.setEfficiency ((This.getEfficiency) + (This.calculateEfficiency));
        This.getHealthInterface.setMaxHealth ((This.getHealthInterface.getMaxHealth) + (((This.getLevel) * (100))));
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
            pathsList := BasicArrayListD_Package.Create;
            occupyGeographicMapCellPosition := GeographicMapCellPosition_Access (occupyList.get (index2));
            for index in reverse 0 .. (surroundList.size) - (1) loop
                surroundGeographicMapCellPosition := GeographicMapCellPosition_Access (surroundList.get (index));
                if (geographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition (surroundGeographicMapCellPosition, occupyGeographicMapCellPosition)) /= (NO_DIRECTION) then
                    list := BasicArrayListS_Package.Create (1);
                    list.add (surroundGeographicMapCellPosition);
                    pathsList.add (list);
                end if;
            end loop;
            This.pathsHashtable.put (occupyGeographicMapCellPosition, pathsList);
        end loop;
   end generateMoveOutOfBuildAreaPaths;

   function getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
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

   procedure paint (This : in out BuildingLayer; graphics : Graphics_Access) is
   begin
        if This.isVisible then
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
            This.getHealthInterface.damage (damage);
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
        if This.isDestroyed then
            DropCellPositionHistory_Package.getInstance.removeAll (This'Unchecked_Access);
            TrackingEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
            if This.local then
                This.removeVisibility;
            end if;
            if not (This.getHealthInterface.isAlive) then
                damage := This.getHealthInterface.getMaxHealth;
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
        buildingInfoHudPaintable.setRtsLayer (This'Unchecked_Access);
        return buildingInfoHudPaintable;
   end createHudPaintable;

   function getHudPaintable (This : in out BuildingLayer) return SelectionHudPaintable_Access is
      buildingInfoHudPaintable : BuildingInfoHudPaintable_Access;
   begin
        buildingInfoHudPaintable := BuildingInfoHudPaintable_Package.getInstance;
        return buildingInfoHudPaintable;
   end getHudPaintable;

   function getType (This : in out BuildingLayer) return Integer is
   begin
        return BuildingLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 2;
   end getStaticType;

   procedure createSimulated is
      Java_Result : constant BuildingLayer_Access := createSimulated;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSimulated;

   procedure calculateEfficiency (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).calculateEfficiency;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end calculateEfficiency;

   procedure getCost (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCost;

   procedure getDowngradeCost (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getDowngradeCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDowngradeCost;

   procedure getUpgradeCost (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getUpgradeCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUpgradeCost;

   procedure getBuildingLevelCost (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getBuildingLevelCost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBuildingLevelCost;

   procedure getProductivity (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getProductivity;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProductivity;

   procedure getEfficiency (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getEfficiency;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiency;

   procedure getMoveOutOfBuildAreaPath (This : in out BuildingLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := BuildingLayer'Class (This).getMoveOutOfBuildAreaPath (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMoveOutOfBuildAreaPath;

   procedure getEndGeographicMapCellPositionList (This : in out BuildingLayer) is
      Java_Result : constant BasicArrayList_Access := BuildingLayer'Class (This).getEndGeographicMapCellPositionList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndGeographicMapCellPositionList;

   procedure shouldHandleStartSameAsEnd (This : in out BuildingLayer) is
      Java_Result : constant Boolean := BuildingLayer'Class (This).shouldHandleStartSameAsEnd;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldHandleStartSameAsEnd;

   procedure getDamage (This : in out BuildingLayer; damageType : Integer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

   procedure createHudPaintable (This : in out BuildingLayer) is
      Java_Result : constant SelectionHudPaintable_Access := BuildingLayer'Class (This).createHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHudPaintable;

   procedure getHudPaintable (This : in out BuildingLayer) is
      Java_Result : constant SelectionHudPaintable_Access := BuildingLayer'Class (This).getHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHudPaintable;

   procedure getType (This : in out BuildingLayer) is
      Java_Result : constant Integer := BuildingLayer'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

   procedure getStaticType is
      Java_Result : constant Integer := getStaticType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStaticType;

end org.allbinary.game.layer.building.BuildingLayer_Package;



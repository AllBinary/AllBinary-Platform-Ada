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


package body org.allbinary.game.layer.unit.UnitLayer_Package is

   procedure Initialize_Fields (This : in out UnitLayer'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.layerPartialCellPositionsUtil := LayerPartialCellPositionsUtil_Package.getInstance;
      This.layerDistanceUtil := LayerDistanceUtil_Package.getInstance;
      This.angleFactory := AngleFactory_Package.getInstance;
      This.cellPositionFactory := CellPositionFactory_Package.getInstance;
      
      
      This.accelerationBasicDecimal := BasicDecimal_Package.Create (1600);
      This.decelerationBasicDecimal := BasicDecimal_Package.Create (-(1000));
      
      This.damageFloaters := null;
      This.damageFloatersPaintableInterface := null;
      This.healthBar := null;
      
      
      This.resourceAnimation := IndexedAnimation_Access (NullIndexedAnimationFactory_Package.getFactoryInstance.getInstance (0));
      
      This.pathAnimation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      This.captionAnimationHelper := CaptionAnimationHelper_Package.Create (FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (CaptionResources_Package.getInstance.RESOURCE).getInstance (0), -(23), -(25), 6, 0);
      
      
      This.resourceLoad := 0;
      This.weaponRange := 0;
      This.rtsLogHelper := RTSLayerLogHelper_Package.getInstance;
      
      This.movementAngle := This.angleFactory.NOT_ANGLE;
      This.steeringInsideGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.sensorGeographicMapCellPositionList := BasicArrayListD_Package.Create;
      This.CAPITAL_EVENT := CapitalEvent_Package.Create (This'Unchecked_Access);
   end Initialize_Fields;


   procedure Initialize (This : in out UnitLayer'Class; remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; vehicleProperties : VehicleProperties_Access; healthInterface : Health_Access; maxResourceLoad : Integer; moveSoundInterface : Sound_Access; waypointLayerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; decalAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; resourceAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; direction : Direction_Access; x : Integer; y : Integer; z : Integer; viewPosition : ViewPositionBase_Access) is
   begin
        AdvancedRTSGameLayer_Package.Initialize (This, remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, WaypointRTSFormInput_Package.Create (groupInterface, True), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition);
        Initialize_Fields (This);
        This.setCollidableInferface (CollidableUnitBehavior_Package.Create (True));
        This.waypointLayerInterfaceFactoryInterface := waypointLayerInterfaceFactoryInterface;
        This.maxResourceLoad := maxResourceLoad.shortValue;
        This.moveSoundInterface := moveSoundInterface;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.DAMAGE_FLOATERS) then
            This.damageFloaters := PtsDamageFloaters_Package.Create (This'Unchecked_Access);
            This.damageFloatersPaintableInterface := This.damageFloaters;
        else
            This.damageFloatersPaintableInterface := NullPaintable_Package.getInstance;
            This.damageFloaters := DamageFloaters_Package.Create;
        end if;
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.HEALTH_BARS) then
            This.healthBar := HealthBar_Package.Create (This'Unchecked_Access, This.getHealthInterface, HealthBarTwodAnimation_Package.Create (AllBinaryLayer_Access (This'Unchecked_Access), BasicHudFactory_Package.getInstance.BOTTOMLEFT), -(1));
        else
            This.healthBar := NullPaintable_Package.getInstance;
        end if;
        This.decalAnimation := RotationAnimation_Access (decalAnimationInterfaceFactoryInterface.getInstance (0));
        This.initResourceAnimation := RotationAnimation_Access (resourceAnimationInterfaceFactoryInterface.getInstance (0));
        This.initResourceAnimation.setFrameByDirection (direction);
        This.decalAnimation.setFrameByDirection (direction);
        This.rotationAnimationInterfaceP := RotationAnimation_Access (This.indexedButShouldBeRotationAnimationInterface);
        This.rotationAnimationInterfaceP.setFrameByDirection (direction);
        This.setMaxLevel (12);
        This.vehicleProperties := vehicleProperties;
        This.trackingEvent := TrackingEvent_Package.Create (This'Unchecked_Access);
        This.initPathAnimation := PathAnimation_Package.Create (This'Unchecked_Access, LinePathRelativeAnimation_Package.getInstance);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; parentLayer : PathFindingLayerInterface_Access; advancedRTSProperties : AdvancedRTSProperties_Access; groupInterface : Group_Access_Array_Access; rootName : Unbounded_String; name : Unbounded_String; vehicleProperties : VehicleProperties_Access; healthInterface : Health_Access; maxResourceLoad : Integer; moveSoundInterface : Sound_Access; waypointLayerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access; animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; decalAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; resourceAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface_Access; proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface_Access; rectangle : Rectangle_Access; direction : Direction_Access; x : Integer; y : Integer; z : Integer; viewPosition : ViewPositionBase_Access) return UnitLayer_Access is
      This : constant UnitLayer_Access := new UnitLayer;
   begin
      Initialize (This.all, remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, vehicleProperties, healthInterface, maxResourceLoad, moveSoundInterface, waypointLayerInterfaceFactoryInterface, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, decalAnimationInterfaceFactoryInterface, resourceAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, direction, x, y, z, viewPosition);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out UnitLayer; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
   begin
        AdvancedRTSGameLayer (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        This.initPathAnimation.setAllBinaryGameLayerManager (allBinaryGameLayerManager);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure updateWaypointBehavior (This : in out UnitLayer; geographicMapInterface : BasicGeographicMap_Access) is
      hashtable : ABHashtable_Access;
      features : Features_Access;
      waypoint : WaypointBase_Access;
   begin
        hashtable := StdUtil_Package.getInstance.createHashtable;
        hashtable.put (This.groupCommonFactory.ID, This.getGroupInterface);
        hashtable.put (Layer_Package.ID, This'Unchecked_Access);
        hashtable.put (AllBinaryGameLayerManager_Package.ID, This.allBinaryGameLayerManagerP);
        This.setWaypointBehavior (UnitWaypointBehavior2_Package.Create (This'Unchecked_Access, AdvancedRTSGameLayer_Access (This.waypointLayerInterfaceFactoryInterface.getNextInstance (hashtable, This.x, This.y, This.z))));
        features := Features_Package.getInstance;
        waypoint := (if J2MEUtil_Package.isHTML then MultipassNoCacheWaypoint_Package.Create (This'Unchecked_Access, AttackSound_Package.getInstance) else NoCacheWaypoint_Package.Create (This'Unchecked_Access, AttackSound_Package.getInstance));
        This.getWaypointBehavior.setWaypoint (waypoint);
        AdvancedRTSGameLayer (This).updateWaypointBehavior (geographicMapInterface);
        This.initRangeHack;
   end updateWaypointBehavior;

   --  throws Exception
   procedure construct (This : in out UnitLayer; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access) is
   begin
        AdvancedRTSGameLayer (This).construct (rtsPlayerLayerInterface);
        TrackingEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
        WaypointEventHandlerFactory_Package.getInstance (This.getGroupInterface (0)).addListenerInterface (This.getUnitWaypointBehavior);
        BuildingEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
        This.getUnitWaypointBehavior.setCurrentPathGeographicMapCellPosition (This.getCurrentGeographicMapCellPosition);
        This.updateSensorGeographicMapCellPositionList;
        This.getUnitWaypointBehavior.setLastPathGeographicMapCellPosition (This.getUnitWaypointBehavior.getCurrentPathGeographicMapCellPosition);
   end construct;

   --  throws Exception
   procedure updateSensorGeographicMapCellPositionList (This : in out UnitLayer) is
      currentGeographicMapCellPosition : GeographicMapCellPosition_Access;
      sensorRange : Integer;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      totalCells : Integer;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      column : Integer;
      row : Integer;
      lastColumn : Integer;
      lastRow : Integer;
      firstColumn : Integer;
      firstRow : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index2 : Integer;
      index : Integer;
   begin
        if VisibleCellPositionsSingleton_Package.getInstance.shouldProcess then
            currentGeographicMapCellPosition := This.getCurrentGeographicMapCellPosition;
            This.sensorGeographicMapCellPositionList.clear;
            This.sensorGeographicMapCellPositionList.add (currentGeographicMapCellPosition);
            sensorRange := (This.weaponRange) * (UnitLayer_Package.SENSOR_RANGE_MULTIPLIER);
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
            totalCells := (((sensorRange) / (tiledLayer.getCellHeight))) / (2);
            geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
            column := currentGeographicMapCellPosition.getColumn;
            row := currentGeographicMapCellPosition.getRow;
            lastColumn := (column) + (totalCells);
            lastRow := (row) + (totalCells);
            if (lastColumn) > (tiledLayer.getColumns) then
                lastColumn := tiledLayer.getColumns;
            end if;
            if (lastRow) > (tiledLayer.getRows) then
                lastRow := tiledLayer.getRows;
            end if;
            firstColumn := (column) - (totalCells);
            firstRow := (row) - (totalCells);
            if (firstColumn) < (0) then
                firstColumn := 0;
            end if;
            if (firstRow) < (0) then
                firstRow := 0;
            end if;
            for index in reverse firstColumn .. (lastColumn) - (1) loop
                for index2 in reverse firstRow .. (lastRow) - (1) loop
                    geographicMapCellPosition := geographicMapCellPositionFactory.getAt (index, index2);
                    if not (This.sensorGeographicMapCellPositionList.contains (geographicMapCellPosition)) then
                        This.sensorGeographicMapCellPositionList.add (geographicMapCellPosition);
                    end if;
                end loop;
            end loop;
        end if;
   end updateSensorGeographicMapCellPositionList;

   function getSensorGeographicMapCellPositionList (This : in out UnitLayer) return BasicArrayList_Access is
   begin
        return This.sensorGeographicMapCellPositionList;
   end getSensorGeographicMapCellPositionList;

   procedure select_Id (This : in out UnitLayer) is
   begin
        This.pathAnimation := This.initPathAnimation;
        AdvancedRTSGameLayer (This).select_Id;
   end select_Id;

   procedure deselect (This : in out UnitLayer) is
   begin
        This.pathAnimation := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        AdvancedRTSGameLayer (This).deselect;
   end deselect;

   procedure setSelected (This : in out UnitLayer; selected : Boolean) is
   begin
        AdvancedRTSGameLayer (This).setSelected (selected);
        if selected then
            if This.debug then
                This.rtsLogHelper := RTSLayerSelectedLogHelper_Package.getInstance;
            end if;
            This.rtsLayer2LogHelper := RTSLayer2SelectedLogHelper_Package.getInstance;
        else
            if This.debug then
                This.rtsLogHelper := RTSLayerLogHelper_Package.getInstance;
            end if;
            This.rtsLayer2LogHelper := RTSLayer2LogHelper_Package.getInstance;
        end if;
   end setSelected;

   --  throws Exception
   procedure setClosestGeographicMapCellHistory (This : in out UnitLayer; pathsList : BasicArrayList_Access) is
      closestIndex : Integer;
      shortestDistance : Integer;
      currentDistance : Integer;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        This.rtsLogHelper.setClosestGeographicMapCellHistory (This'Unchecked_Access, pathsList);
        closestIndex := -(1);
        shortestDistance := Integer_Package.MAX_VALUE;
        currentDistance := Integer_Package.MAX_VALUE;
        for index in reverse 0 .. (pathsList.size) - (1) loop
            geographicMapCellPositionBasicArrayList := BasicArrayList_Access (pathsList.get (index));
            geographicMapCellPosition := GeographicMapCellPosition_Access (geographicMapCellPositionBasicArrayList.get ((geographicMapCellPositionBasicArrayList.size) - (1)));
            currentDistance := This.layerDistanceUtil.getDistanceAt (This'Unchecked_Access, geographicMapCellPosition.getMidPoint);
            if (currentDistance) < (shortestDistance) then
                shortestDistance := currentDistance;
                closestIndex := index;
            end if;
        end loop;
        if (closestIndex) >= (0) then
            geographicMapCellPositionBasicArrayList := BasicArrayList_Access (pathsList.get (closestIndex));
            geographicMapCellPosition := GeographicMapCellPosition_Access (geographicMapCellPositionBasicArrayList.get (0));
            This.teleportTo (geographicMapCellPosition);
        end if;
   end setClosestGeographicMapCellHistory;

   --  throws Exception
   procedure init (This : in out UnitLayer; geographicMapCellHistory : GeographicMapCellHistory_Access; geographicMapCellPositionBasicArrayList : BasicArrayList_Access) is
   begin
        geographicMapCellHistory.trackAll (geographicMapCellPositionBasicArrayList);
   end init;

   procedure onMovement (This : in out UnitLayer; trackingEvent : TrackingEvent_Access) is
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        begin
            layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
            if (layerInterface.getGroupInterface (0)) /= (This.getGroupInterface (0)) then
                This.getUnitWaypointBehavior.getPossibleTargetList.add (layerInterface);
                layerInterface.onMovementFound (This.getTrackingEvent);
            end if;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("onMovement"), e);
        end;
   end onMovement;

   --  throws Exception
   procedure onMovementFound (This : in out UnitLayer; trackingEvent : TrackingEvent_Access) is
      layerInterface : AdvancedRTSGameLayer_Access;
   begin
        layerInterface := AdvancedRTSGameLayer_Access (trackingEvent.getLayerInterface);
        if (layerInterface.getGroupInterface (0)) /= (This.getGroupInterface (0)) then
            This.getUnitWaypointBehavior.getPossibleTargetList.add (layerInterface);
        end if;
   end onMovementFound;

   procedure initRangeHack (This : in out UnitLayer) is
      basicWeaponPart : BasicWeaponPart_Access;
      weaponProperties : WeaponProperties_Access;
      sensorRange : Integer;
   begin
        basicWeaponPart := BasicWeaponPart_Access (This.getPartInterfaceArray (0));
        weaponProperties := basicWeaponPart.getWeaponProperties;
        This.weaponRange := weaponProperties.getRange;
        This.initRangeAnimation := AdjustedCircleAnimation_Package.createW (This.weaponRange, This.weaponRange, This.getWidth, This.basicColorFactory.GREEN);
        sensorRange := (This.weaponRange) * (UnitLayer_Package.SENSOR_RANGE_MULTIPLIER);
        This.initSensorRangeAnimation := AdjustedCircleAnimation_Package.createW (sensorRange, sensorRange, This.getWidth, This.basicColorFactory.RED);
        This.getUnitWaypointBehavior.initRange (This.weaponRange);
        This.fireTimeHelper.delay_Id := (Integer (weaponProperties.getReloadTime));
   end initRangeHack;

   --  throws Exception
   procedure processBuiltTick (This : in out UnitLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      currentFrame : Integer;
      size : Integer;
   begin
        if not (This.getHealthInterface.isAlive) then
            if This.isReadyForExplosion then
                currentFrame := This.destroyAnimationInterface.getFrame;
                size := (This.destroyAnimationInterface.getSize) - (1);
                if (currentFrame) = (size) then
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
                This.setReadyForExplosion (True);
            end if;
        else
            AdvancedRTSGameLayer (This).processBuiltTick (allBinaryLayerManager);
        end if;
        This.captionAnimationHelper.tick;
        This.getUnitWaypointBehavior.processTick (allBinaryLayerManager);
   end processBuiltTick;

   procedure teleportTo (This : in out UnitLayer; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      point : GPoint_Access;
   begin
        point := geographicMapCellPosition.getMidPoint;
        This.setPosition ((point.getX) - (This.getHalfWidth), (point.getY) - (This.getHalfHeight), This.z);
   end teleportTo;

   --  throws Exception
   function getCurrentGeographicMapCellPosition (This : in out UnitLayer) return GeographicMapCellPosition_Access is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        geographicMapCellPosition := geographicMapInterface.getCellPositionAtXY ((This.x) + (This.getHalfWidth), (This.y) + (This.getHalfHeight));
        raceTrackGeographicMap := RaceTrackGeographicMap_Access (geographicMapInterface);
        if not (raceTrackGeographicMap.isValid (geographicMapCellPosition)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Position is not really on the map: ") & Java_Image (geographicMapCellPosition)));
        end if;
        return geographicMapCellPosition;
   end getCurrentGeographicMapCellPosition;

   --  throws Exception
   procedure fire (This : in out UnitLayer; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        if This.fireTimeHelper.isTimeTNT then
            This.fireAll (layerManager);
        else
            This.reload;
        end if;
   end fire;

   --  throws Exception
   procedure left (This : in out UnitLayer) is
   begin
        This.initResourceAnimation.previousRotation;
        This.decalAnimation.previousRotation;
        This.rotationAnimationInterfaceP.previousRotation;
   end left;

   --  throws Exception
   procedure right (This : in out UnitLayer) is
   begin
        This.initResourceAnimation.nextRotation;
        This.decalAnimation.nextRotation;
        This.rotationAnimationInterfaceP.nextRotation;
   end right;

   procedure down (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
   begin
        velocityProperties := This.getVehicleProperties.getVelocityProperties;
        if not (velocityProperties.isOverXYMaxForwardVelocity) then
            This.accelerate (This.decelerationBasicDecimal);
        end if;
   end down;

   procedure up (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
   begin
        velocityProperties := This.getVehicleProperties.getVelocityProperties;
        if not (velocityProperties.isOverXYMaxForwardVelocity) then
            This.accelerate (This.accelerationBasicDecimal);
        end if;
   end up;

   procedure initInputProcessors (This : in out UnitLayer) is
   begin
        This.inputProcessorArray (Canvas_Package.RIGHT) := SpecialRightGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.LEFT) := SpecialLeftGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.KEY_NUM0) := SpecialFireGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.KEY_POUND) := This.inputProcessorArray (Canvas_Package.KEY_NUM0);
        This.inputProcessorArray (Canvas_Package.DOWN) := SpecialDownGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.UP) := SpecialUpGameInputProcessor_Package.Create (This'Unchecked_Access);
        AdvancedRTSGameLayer (This).initInputProcessors;
   end initInputProcessors;

   --  throws Exception
   procedure processInput (This : in out UnitLayer; layerManager : AllBinaryLayerManager_Access) is
      list : BasicArrayList_Access;
      size : Integer;
      anyType : Java_Object_Access;
      key : Integer;
      index : Integer;
   begin
        list := This.getGameKeyEventList;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            anyType := list.get (index);
            key := GameKeyEventUtil_Package.getKey (anyType);
            This.inputProcessorArray (key).processEvent (layerManager, GameKeyEvent_Package.NONE);
        end loop;
        list.clear;
        This.groundFriction;
        This.move_Case;
   end processInput;

   procedure accelerate (This : in out UnitLayer; accelerate : BasicDecimal_Access) is
   begin
        This.getVehicleProperties.getVelocityProperties.addVelocityi (accelerate.getUnscaled, Integer (This.rotationAnimationInterfaceP.getAngleInfoP.getAngle), 90);
   end accelerate;

   --  throws Exception
   procedure fireAll (This : in out UnitLayer; layerManager : AllBinaryLayerManager_Access) is
      angleInfo : AngleInfo_Access;
      angle : Integer;
      salvoInterface : SalvoInterface_Access;
   begin
        angleInfo := This.rotationAnimationInterfaceP.getAngleInfoP;
        angle := Integer (((angleInfo.getAngle) + (This.slightAngle)));
        This.hashtable.put (SmallIntegerSingletonFactory_Package.getInstance.getAt (1), SmallIntegerSingletonFactory_Package.getInstance.getAt (Integer (AngleFactory_Package.getInstance.getAt (angle).getValue)));
        salvoInterface := SalvoInterface_Access (This.getPartInterfaceArray (0));
        salvoInterface.process (layerManager, Short_Integer (angle), Short_Integer (90));
   end fireAll;

   procedure downgrade (This : in out UnitLayer) is
   begin
        if (This.getLevel) > (1) then
            AdvancedRTSGameLayer (This).downgrade;
        end if;
   end downgrade;

   procedure upgrade (This : in out UnitLayer) is
   begin
        AdvancedRTSGameLayer (This).upgrade;
        This.initRangeHack;
   end upgrade;

   procedure groundFriction (This : in out UnitLayer) is
      vehicleFrictionProperties : VehicleFrictionProperties_Access;
   begin
        vehicleFrictionProperties := This.getVehicleProperties.getVehicleFrictionProperties;
        This.getVehicleProperties.getVehicleFrictionProperties.friction (This.getVehicleProperties.getVelocityProperties, vehicleFrictionProperties.getTireFrictionNominator);
   end groundFriction;

   --  throws Exception
   procedure trackTo (This : in out UnitLayer; reason : Unbounded_String) is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      point : GPoint_Access;
      dx : Integer;
      dy : Integer;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        point := nextUnvisitedPathGeographicMapCellPosition.getMidPoint;
        dx := (((This.getXP) + (This.getHalfWidth))) - (point.getX);
        dy := (((This.getYP) + (This.getHalfHeight))) - (point.getY);
        This.rtsLogHelper.trackTo (This'Unchecked_Access, nextUnvisitedPathGeographicMapCellPosition, dx, dy, reason);
        This.trackToDXY (dx, dy);
   end trackTo;

   --  throws Exception
   procedure trackToDXY (This : in out UnitLayer; dx : Integer; dy : Integer) is
      angleOfTarget : Integer;
   begin
        angleOfTarget := 0;
        This.trackToDXYTargetAngle (dx, dy, angleOfTarget);
   end trackToDXY;

   --  throws Exception
   function turnTo (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle : Integer) return Boolean is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
      evading : Boolean;
      angleInfo : AngleInfo_Access;
      angle : Integer;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      deltaAngle2 : Integer;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        evading := False;
        if (This.getUnitWaypointBehavior.getSensorAction) = (SensorActionFactory_Package.getInstance.EVADE) then
            This.rtsLogHelper.evade (This'Unchecked_Access);
            evading := True;
            targetAngle := (targetAngle) + (180);
        end if;
        angleInfo := This.rotationAnimationInterfaceP.getAngleInfoP;
        angle := FrameUtil_Package.getInstance.adjustAngleToFrameAngle ((angleInfo.getAngle) - (270));
        This.rtsLogHelper.turnTo (This'Unchecked_Access, dx, dy, angleInfo, angle, This.movementAngle, evading, targetAngle);
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if ((dx) = (0)) and then ((dy) = (0)) then
            This.rtsLogHelper.doneMoving (This'Unchecked_Access);
            return True;
        elsif ((Integer (This.movementAngle.getValue))) = (angle) then
            if ((dx) > (0)) and then ((This.movementAngle) = (This.angleFactory.LEFT)) then
                This.rtsLogHelper.movingLeft (This'Unchecked_Access);
                return False;
            end if;
            if ((dx) < (0)) and then ((This.movementAngle) = (This.angleFactory.RIGHT)) then
                This.rtsLogHelper.movingRight (This'Unchecked_Access);
                return False;
            end if;
            if ((dy) > (0)) and then ((This.movementAngle) = (This.angleFactory.UP)) then
                This.rtsLogHelper.movingUp (This'Unchecked_Access);
                return False;
            end if;
            if ((dy) < (0)) and then ((This.movementAngle) = (This.angleFactory.DOWN)) then
                This.rtsLogHelper.movingDown (This'Unchecked_Access);
                return False;
            end if;
            This.rtsLogHelper.currentMoveEnded (This'Unchecked_Access);
            if ((This.movementAngle) = (This.angleFactory.LEFT)) or else ((This.movementAngle) = (This.angleFactory.RIGHT)) then
                This.handleDeltalY (dx, dy);
            elsif ((This.movementAngle) = (This.angleFactory.UP)) or else ((This.movementAngle) = (This.angleFactory.DOWN)) then
                This.handleDeltalX (dx, dy);
            end if;
            return True;
        else
            if (nextUnvisitedPathGeographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
                if (This.steeringInsideGeographicMapCellPosition) /= (nextUnvisitedPathGeographicMapCellPosition) then
                    if ((abs (dx)) > (abs (dy))) and then ((dy) /= (0)) then
                        This.handleDeltalY (dx, dy);
                    elsif (dx) /= (0) then
                        This.handleDeltalX (dx, dy);
                    else
                        This.handleDeltalY (dx, dy);
                    end if;
                end if;
                deltaAngle2 := (This.movementAngle.getValue) - (angle);
                if (deltaAngle2) > (0) then
                    This.rtsLogHelper.rotateRight (This'Unchecked_Access);
                    This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.RIGHT));
                else
                    This.rtsLogHelper.rotateLeft (This'Unchecked_Access);
                    This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.LEFT));
                end if;
                return True;
            else
                This.rtsLogHelper.noRotation (This'Unchecked_Access);
            end if;
            return False;
        end if;
   end turnTo;

   procedure handleDeltalX (This : in out UnitLayer; dx : Integer; dy : Integer) is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        if (dx) > (0) then
            This.movementAngle := This.angleFactory.LEFT;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        else
            This.movementAngle := This.angleFactory.RIGHT;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end if;
        This.rtsLogHelper.handle (This'Unchecked_Access, This.movementAngle);
   end handleDeltalX;

   procedure handleDeltalY (This : in out UnitLayer; dx : Integer; dy : Integer) is
      waypointBehaviorBase : WaypointBehaviorBase_Access;
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        waypointBehaviorBase := WaypointBehaviorBase_Access (This.waypointBehaviorBase);
        nextUnvisitedPathGeographicMapCellPosition := waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition;
        if (dy) > (0) then
            This.movementAngle := This.angleFactory.UP;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        else
            This.movementAngle := This.angleFactory.DOWN;
            This.steeringInsideGeographicMapCellPosition := nextUnvisitedPathGeographicMapCellPosition;
        end if;
        This.rtsLogHelper.handle (This'Unchecked_Access, This.movementAngle);
   end handleDeltalY;

   --  throws Exception
   procedure trackToDXYTargetAngle (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle : Integer) is
      list : BasicArrayList_Access;
      steeringVisitor : SteeringVisitor_Access;
      anyType : Java_Object_Access;
      index : Integer;
   begin
        list := This.getUnitWaypointBehavior.getSteeringVisitorList;
        if (list.size) > (0) then
            for index in reverse 0 .. (list.size) - (1) loop
                steeringVisitor := SteeringVisitor_Access (list.get (index));
                anyType := steeringVisitor.visit (This'Unchecked_Access);
                if (anyType) = (null) then
                    list.removeAt (index);
                end if;
            end loop;
            This.fireOrMove;
        elsif not (This.turnTo (dx, dy, targetAngle)) then
            This.fireOrMove;
        end if;
   end trackToDXYTargetAngle;

   --  throws Exception
   procedure fireOrMove (This : in out UnitLayer) is
      gameKeyEventFactory : GameKeyEventFactory_Access;
   begin
        gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
        if This.getUnitWaypointBehavior.needToMove then
            This.rtsLayer2LogHelper.steeringUp (This'Unchecked_Access);
            if (This.showMoreCaptionStates) and then (not (This.captionAnimationHelper.isShowing)) then
                This.captionAnimationHelper.update (UnitLayer_Package.MOVE, This.basicColorFactory.GREEN);
            end if;
            This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.UP));
        else
            This.captionAnimationHelper.update (CommonPhoneStrings_Package.getInstance.FIRE, This.basicColorFactory.RED);
            This.rtsLayer2LogHelper.steeringFireOrStop (This'Unchecked_Access);
            This.allStop;
            This.getGameKeyEventList.add (gameKeyEventFactory.getInstanceForKey (This'Unchecked_Access, Canvas_Package.KEY_NUM0));
            TrackingEventHandler_Package.getInstance.fireEvent (This.getTrackingEvent);
        end if;
   end fireOrMove;

   procedure move_Case (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
      velocityXScaled : Long_Long_Integer;
      velocityYScaled : Long_Long_Integer;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      cellPosition : GeographicMapCellPosition_Access;
      allbinaryLayer : AllBinaryLayer_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      tiledLayerUtil : TiledLayerUtil_Access;
      x : Integer;
      y : Integer;
   begin
        begin
            velocityProperties := This.getVehicleProperties.getVelocityProperties;
            velocityXScaled := Long_Long_Integer (velocityProperties.getVelocityXBasicDecimalP.getScaled);
            velocityYScaled := Long_Long_Integer (velocityProperties.getVelocityYBasicDecimalP.getScaled);
            This.getUnitWaypointBehavior.move_Case;
            if ((velocityXScaled) /= (0)) or else ((velocityYScaled) /= (0)) then
                This.getUnitWaypointBehavior.setMoving (True);
                geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
                geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
                This.layerPartialCellPositionsUtil.getAllDXY (geographicMapInterface, This'Unchecked_Access, Integer (velocityXScaled), Integer (velocityYScaled), UnitLayer_Package.getPartialpositionlist);
                cellPosition := GeographicMapCellPosition_Access (DropCellPositionHistory_Package.getInstance.getCellPositionWithDrop (UnitLayer_Package.getPartialpositionlist));
                if (cellPosition) = (This.cellPositionFactory.NONE) then
                    tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
                    tiledLayerUtil := TiledLayerUtil_Package.getInstance;
                    x := (This.x) + (Integer (velocityXScaled));
                    y := (This.y) + (Integer (velocityYScaled));
                    x := tiledLayerUtil.keepOnMapX (tiledLayer, x, This.getWidth);
                    y := tiledLayerUtil.keepOnMapY (tiledLayer, y, This.getHeight);
                    This.setPosition (x, y, This.z);
                else
                    allbinaryLayer := DropCellPositionHistory_Package.getInstance.getLayerInterface (cellPosition);
                    This.getUnitWaypointBehavior.setMovingFromStopped (False);
                    This.getUnitWaypointBehavior.addBuildingChase (allbinaryLayer, cellPosition);
                end if;
            end if;
            if This.getUnitWaypointBehavior.isMoving then
                TrackingEventHandler_Package.getInstance.fireEvent (This.getTrackingEvent);
            else
                This.getUnitWaypointBehavior.setMovingFromStopped (False);
            end if;
            if (This.getUnitWaypointBehavior.isMovingFromStopped) and then (This.isVisible) then
                SecondaryPlayerQueueFactory_Package.getInstance.add (This.moveSoundInterface);
            end if;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("move"), e);
        end;
   end move_Case;

   procedure allStop (This : in out UnitLayer) is
      velocityProperties : VelocityProperties_Access;
   begin
        velocityProperties := This.getVehicleProperties.getVelocityProperties;
        velocityProperties.getVelocityXBasicDecimalP.setint (0);
        velocityProperties.getVelocityYBasicDecimalP.setint (0);
   end allStop;

   procedure paint (This : in out UnitLayer; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        if This.isVisible then
            AdvancedRTSGameLayer (This).paint (graphics);
            viewPosition := This.getViewPosition;
            viewX := viewPosition.getX;
            viewY := viewPosition.getY;
            This.decalAnimation.paintXY (graphics, viewX, viewY);
            This.rangeAnimation.paintXY (graphics, viewX, viewY);
            This.sensorRangeAnimation.paintXY (graphics, viewX, viewY);
            This.damageFloatersPaintableInterface.paint (graphics);
            This.healthBar.paint (graphics);
            This.captionAnimationHelper.paintXY (graphics, viewX, viewY);
            This.pathAnimation.paintXY (graphics, viewX, viewY);
            This.resourceAnimation.paintXY (graphics, viewX, viewY);
        end if;
   end paint;

   --  throws Exception
   procedure onBuildingEvent (This : in out UnitLayer; event : RTSLayerEvent_Access) is
      buildingLayer : BuildingLayer_Access;
   begin
        buildingLayer := BuildingLayer_Access (event.getRtsLayer);
        This.getUnitWaypointBehavior.moveAwayFromBuilding (buildingLayer);
   end onBuildingEvent;

   function getVehicleProperties (This : in out UnitLayer) return VehicleProperties_Access is
   begin
        return This.vehicleProperties;
   end getVehicleProperties;

   --  throws Exception
   procedure damage (This : in out UnitLayer; damage : Integer; damageType : Integer) is
   begin
        AdvancedRTSGameLayer (This).damage (damage, damageType);
        This.damageFloaters.add (damage);
        if (damage) > (0) then
            This.getHealthInterface.damage (damage);
        end if;
   end damage;

   --  throws Exception
   function getDamage (This : in out UnitLayer; damageType : Integer) return Integer is
   begin
        return 0;
   end getDamage;

   --  throws Exception
   procedure setDestroyed (This : in out UnitLayer; destroyed : Boolean) is
      damage : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("setDestroyed"));
        AdvancedRTSGameLayer (This).setDestroyed (destroyed);
        if This.isDestroyed then
            WaypointEventHandlerFactory_Package.getInstance (This.getGroupInterface (0)).removeListener (This.getUnitWaypointBehavior);
            TrackingEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
            BuildingEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
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

   function getLoad (This : in out UnitLayer) return Integer is
   begin
        return This.resourceLoad;
   end getLoad;

   --  throws Exception
   procedure clearResourceAnimation (This : in out UnitLayer) is
   begin
        This.resourceAnimation := IndexedAnimation_Access (NullIndexedAnimationFactory_Package.getFactoryInstance.getInstance (0));
   end clearResourceAnimation;

   --  throws Exception
   procedure setLoad (This : in out UnitLayer; resource : Integer) is
   begin
        if (resource) > (0) then
            This.resourceAnimation := This.initResourceAnimation;
        else
            This.clearResourceAnimation;
        end if;
        This.resourceLoad := resource;
   end setLoad;

   procedure addLoad (This : in out UnitLayer; resource : Integer) is
   begin
        This.resourceLoad := (This.resourceLoad) + (resource);
   end addLoad;

   --  throws Exception
   procedure handleCost (This : in out UnitLayer; ownerLayer : PathFindingLayerInterface_Access) is
   begin
        if (This.getLoad) > (0) then
            This.CAPITAL_EVENT.setValue (This.getLoad);
            CapitalEventHandlerFactory_Package.getInstance (ownerLayer.getGroupInterface (0)).fireEvent (This.CAPITAL_EVENT);
            This.setLoad (0);
        end if;
   end handleCost;

   function createHudPaintable (This : in out UnitLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : RTSLayerHudPaintable_Access;
   begin
        rtsLayerHudPaintable := RTSLayerHudPaintable_Package.getInstance;
        rtsLayerHudPaintable.setBasicColorP (This.allBinaryGameLayerManagerP.getForegroundBasicColor);
        rtsLayerHudPaintable.setRtsLayer (This'Unchecked_Access);
        return rtsLayerHudPaintable;
   end createHudPaintable;

   function getHudPaintable (This : in out UnitLayer) return SelectionHudPaintable_Access is
      rtsLayerHudPaintable : RTSLayerHudPaintable_Access;
   begin
        rtsLayerHudPaintable := RTSLayerHudPaintable_Package.getInstance;
        return rtsLayerHudPaintable;
   end getHudPaintable;

   function getType (This : in out UnitLayer) return Integer is
   begin
        return UnitLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 1;
   end getStaticType;

   function getUnitWaypointBehavior (This : in out UnitLayer) return UnitWaypointBehavior_Access is
   begin
        return UnitWaypointBehavior_Access (This.getWaypointBehavior);
   end getUnitWaypointBehavior;

   function getTrackingEvent (This : in out UnitLayer) return TrackingEvent_Access is
   begin
        return This.trackingEvent;
   end getTrackingEvent;

   function getCaptionAnimationHelper (This : in out UnitLayer) return CaptionAnimationHelperBase_Access is
   begin
        return This.captionAnimationHelper;
   end getCaptionAnimationHelper;

   function isSelfUpgradeable (This : in out UnitLayer) return Boolean is
   begin
        return False;
   end isSelfUpgradeable;

   function getMaxResourceLoad (This : in out UnitLayer) return Short_Integer is
   begin
        return This.maxResourceLoad;
   end getMaxResourceLoad;

   function getPartialpositionlist return BasicArrayList_Access is
   begin
        return UnitLayer_Package.partialPositionList;
   end getPartialpositionlist;

   procedure getSensorGeographicMapCellPositionList (This : in out UnitLayer) is
      Java_Result : constant BasicArrayList_Access := UnitLayer'Class (This).getSensorGeographicMapCellPositionList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSensorGeographicMapCellPositionList;

   procedure getCurrentGeographicMapCellPosition (This : in out UnitLayer) is
      Java_Result : constant GeographicMapCellPosition_Access := UnitLayer'Class (This).getCurrentGeographicMapCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrentGeographicMapCellPosition;

   procedure turnTo (This : in out UnitLayer; dx : Integer; dy : Integer; targetAngle : Integer) is
      Java_Result : constant Boolean := UnitLayer'Class (This).turnTo (dx, dy, targetAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end turnTo;

   procedure getVehicleProperties (This : in out UnitLayer) is
      Java_Result : constant VehicleProperties_Access := UnitLayer'Class (This).getVehicleProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVehicleProperties;

   procedure getDamage (This : in out UnitLayer; damageType : Integer) is
      Java_Result : constant Integer := UnitLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

   procedure getLoad (This : in out UnitLayer) is
      Java_Result : constant Integer := UnitLayer'Class (This).getLoad;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLoad;

   procedure createHudPaintable (This : in out UnitLayer) is
      Java_Result : constant SelectionHudPaintable_Access := UnitLayer'Class (This).createHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHudPaintable;

   procedure getHudPaintable (This : in out UnitLayer) is
      Java_Result : constant SelectionHudPaintable_Access := UnitLayer'Class (This).getHudPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHudPaintable;

   procedure getType (This : in out UnitLayer) is
      Java_Result : constant Integer := UnitLayer'Class (This).getType;
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

   procedure getUnitWaypointBehavior (This : in out UnitLayer) is
      Java_Result : constant UnitWaypointBehavior_Access := UnitLayer'Class (This).getUnitWaypointBehavior;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUnitWaypointBehavior;

   procedure getTrackingEvent (This : in out UnitLayer) is
      Java_Result : constant TrackingEvent_Access := UnitLayer'Class (This).getTrackingEvent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

   procedure getCaptionAnimationHelper (This : in out UnitLayer) is
      Java_Result : constant CaptionAnimationHelperBase_Access := UnitLayer'Class (This).getCaptionAnimationHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCaptionAnimationHelper;

   procedure isSelfUpgradeable (This : in out UnitLayer) is
      Java_Result : constant Boolean := UnitLayer'Class (This).isSelfUpgradeable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSelfUpgradeable;

   procedure getMaxResourceLoad (This : in out UnitLayer) is
      Java_Result : constant Short_Integer := UnitLayer'Class (This).getMaxResourceLoad;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxResourceLoad;

   procedure getPartialpositionlist is
      Java_Result : constant BasicArrayList_Access := getPartialpositionlist;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPartialpositionlist;

begin
   null;
   partialPositionList := BasicArrayListS_Package.Create (4);
   SENSOR_RANGE_MULTIPLIER := 6;
   MOVE := To_Unbounded_String ("Moving");

end org.allbinary.game.layer.unit.UnitLayer_Package;



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


with org.allbinary.game.input.RTSPlayerGameInput_Package; use org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package; use org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
with org.allbinary.game.layer.RTSGameStrings_Package; use org.allbinary.game.layer.RTSGameStrings_Package;
with org.allbinary.game.layer.capital.Capital_Package; use org.allbinary.game.layer.capital.Capital_Package;
with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package; use org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
with org.allbinary.media.audio.BuildingSound_Package; use org.allbinary.media.audio.BuildingSound_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package; use org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;

package body org.allbinary.game.input.form.BuildingRTSFormInput_Package is

   package RTSPlayerGameInput_Package renames Standard.org.allbinary.game.input.RTSPlayerGameInput_Package;
   package DemoLockedWithCostLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;
   package GeographicMapCellPositionAreaBase_Package renames Standard.org.allbinary.game.layer.GeographicMapCellPositionAreaBase_Package;
   package RTSGameStrings_Package renames Standard.org.allbinary.game.layer.RTSGameStrings_Package;
   package Capital_Package renames Standard.org.allbinary.game.layer.capital.Capital_Package;
   package LayerInterfaceFactoryImageItem_Package renames Standard.org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
   package BuildingSound_Package renames Standard.org.allbinary.media.audio.BuildingSound_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package LockedFeatureNotificationUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package RaceTrackGeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;
   procedure Initialize_Fields (This : in out BuildingRTSFormInput'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
      
      This.dropCellPositionHistory := DropCellPositionHistory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BuildingRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      basicColorFactory : BasicColorFactory_Access;
   begin
        RTSFormInput_Package.Initialize (This, groupInterface);
        Initialize_Fields (This);
        This.isUnitProducer := isUnitProducer;
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.buildOnPathGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.BUILD_ON_PATH, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.spotTakenGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.SPOT_TAKEN, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.selectBuildSpotGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.SELECT_BUILD_SPOT, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.roadCollisionGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.ROAD_COLLISION, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.noMoneyGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NO_MONEY, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.buildingCollisionGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.BUILDING_COLLISION, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.structureToCloseCollisionGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.STRUCTURE_TO_CLOSE, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.buildingGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.BUILDING, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.mapEdgeGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.MAP_EDGE, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) return BuildingRTSFormInput_Access is
      This : constant BuildingRTSFormInput_Access := new BuildingRTSFormInput;
   begin
      BuildingRTSFormInput_Package.Initialize (This.all, groupInterface, isUnitProducer);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out BuildingRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.buildOnPathGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.spotTakenGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.selectBuildSpotGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.roadCollisionGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.noMoneyGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.buildingCollisionGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.structureToCloseCollisionGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.buildingGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.mapEdgeGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processGameSpecific (This : in out BuildingRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        RTSFormInput (This).process (layerManager);
        BuildingRTSFormInput'Class (This).buildFromMotionInput (rtsPlayerLayerInterface, layerManager, item, itemIndex);
   end processGameSpecific;

   function isPositionBlocked (This : in out BuildingRTSFormInput) return Boolean is
   begin
        return This.dropCellPositionHistory.isCellPositionWithDrop (BuildingRTSFormInput'Class (This).getSelectedGeographicCellPosition);
   end isPositionBlocked;

   function isDemoLocked (This : in out BuildingRTSFormInput; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Boolean is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      factoryItem : LayerInterfaceFactoryImageItem_Access;
      layerInterfaceFactoryInterface : DemoLockedWithCostLayerInterfaceFactoryInterface_Access;
   begin
        factoryItem := LayerInterfaceFactoryImageItem_Access (item);
        layerInterfaceFactoryInterface := DemoLockedWithCostLayerInterfaceFactoryInterface_Access (factoryItem.getLayerInterfaceFactoryInterface);
        if (LockedUtil_Package.getInstance.isLocked) and then (layerInterfaceFactoryInterface.isDemoLocked) then
            return True;
        else
            return False;
        end if;
   end isDemoLocked;

   --  throws Exception
   procedure buildFromMotionInput (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; itemIndex : Integer) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      commonStrings : CommonStrings_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCellType : GeographicMapCellType_Access;
      raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory_Access;
      rtsLayer : RTSLayer_Access;
      cellPoint : GPoint_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (commonStrings.START, BuildingRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("buildFromMotionInput"));
        if (layerManager) = (null) then
            Java_Throw (Java_New_Exception ("RuntimeException"));
        end if;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (layerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        if BuildingRTSFormInput'Class (This).isDemoLocked (item) then
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            LockedFeatureNotificationUtil_Package.getInstance.fireWithColor (geographicMapInterface.getForegroundBasicColor);
            return;
        end if;
        geographicMapCellPosition := BuildingRTSFormInput'Class (This).getSelectedGeographicCellPosition;
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            if not (BuildingRTSFormInput'Class (This).isPositionBlocked) then
                geographicMapCellType := geographicMapInterface.getCellTypeAt (geographicMapCellPosition);
                raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (geographicMapInterface.getGeographicMapCellTypeFactory);
                if not (raceTrackGeographicMapCellTypeFactory.isPath (geographicMapCellType)) then
                    if (This.newUnconstructedRTSLayerInterfaceArray (itemIndex)) = (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
                        This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := BuildingRTSFormInput'Class (This).getInstance (layerManager, item, geographicMapCellPosition);
                    else
                        rtsLayer := RTSLayer_Access (This.newUnconstructedRTSLayerInterfaceArray (itemIndex));
                        cellPoint := geographicMapCellPosition.getPoint;
                        rtsLayer.setPosition (cellPoint.getX, cellPoint.getY, cellPoint.getZ);
                        rtsLayer.geographicMapCellPositionAreaBase.update (geographicMapInterface);
                    end if;
                    rtsLayer := RTSLayer_Access (This.newUnconstructedRTSLayerInterfaceArray (itemIndex));
                    BuildingRTSFormInput'Class (This).attemptBuild (rtsPlayerLayerInterface, layerManager, rtsLayer, itemIndex);
                else
                    rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
                    if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                        GameNotificationEventHandler_Package.getInstance.fireEvent (This.buildOnPathGameNotificationEvent);
                    end if;
                end if;
            else
                rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                    GameNotificationEventHandler_Package.getInstance.fireEvent (This.spotTakenGameNotificationEvent);
                end if;
            end if;
        else
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.selectBuildSpotGameNotificationEvent);
            end if;
        end if;
   end buildFromMotionInput;

   --  throws Exception
   function attemptBuild (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer) return Boolean is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      layerInterface : constant RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      occupyList : BasicArrayList_Access;
      geographicMapCellType : GeographicMapCellType_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory_Access;
      index : Integer;
      cost : Integer;
      capital : Capital_Access;
      stringBuffer : StringMaker_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Layer: ")).append (StringUtil_Package.getInstance.toString (layerInterface)).toString, BuildingRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("attemptBuild"));
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        if not (BuildingRTSFormInput'Class (This).isBuildAttemptValid (rtsPlayerLayerInterface, layerInterface)) then
            return False;
        end if;
        geographicMapCellType := null;
        for index in reverse 0 .. (occupyList.size) - (1) loop
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (layerManager);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            geographicMapCellType := geographicMapInterface.getCellTypeAt (GeographicMapCellPosition_Access (occupyList.get (index)));
            raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (geographicMapInterface.getGeographicMapCellTypeFactory);
            if raceTrackGeographicMapCellTypeFactory.isPath (geographicMapCellType) then
                rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                    GameNotificationEventHandler_Package.getInstance.fireEvent (This.roadCollisionGameNotificationEvent);
                end if;
                return False;
            end if;
        end loop;
        cost := layerInterface.getCost;
        capital := rtsPlayerLayerInterface.getCapital;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Trying to Build: "));
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" for: $"));
        stringBuffer.appendint (cost);
        stringBuffer.append (To_Unbounded_String (" with "));
        stringBuffer.appendint (Integer (capital.getTotalMoney));
        This.logUtil.putF (stringBuffer.toString, BuildingRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("attemptBuild"));
        if (cost) <= (capital.getTotalMoney) then
            layerInterface.construct (rtsPlayerLayerInterface);
            This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := CollidableDestroyableDamageableLayer_Package.getNullInstance;
            capital.removeMoney (cost);
            BuildingRTSFormInput'Class (This).add (rtsPlayerLayerInterface, layerManager, layerInterface);
            return True;
        else
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.noMoneyGameNotificationEvent);
            end if;
            return False;
        end if;
   end attemptBuild;

   --  throws Exception
   function isBuildAttemptValid (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerInterface : constant RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      occupyList : BasicArrayList_Access;
   begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        if This.dropCellPositionHistory.anyCellPositionWithDrop (occupyList) then
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.buildingCollisionGameNotificationEvent);
            end if;
            return False;
        end if;
        if (This.isUnitProducer) and then (This.dropCellPositionHistory.anyCellPositionWithDrop (geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList)) then
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.structureToCloseCollisionGameNotificationEvent);
            end if;
            return False;
        else
            if BuildingRTSFormInput'Class (This).isSurroundingCellsOffMap (layerInterface) then
                rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                    GameNotificationEventHandler_Package.getInstance.fireEvent (This.mapEdgeGameNotificationEvent);
                end if;
                return False;
            end if;
        end if;
        return True;
   end isBuildAttemptValid;

   --  throws Exception
   procedure add (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      layerInterface : constant RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      occupyList : BasicArrayList_Access;
      rtsPlayerGameInput : RTSPlayerGameInput_Access;
   begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        This.dropCellPositionHistory.addAll (occupyList, layerInterface);
        rtsPlayerGameInput := RTSPlayerGameInput_Access (rtsPlayerLayerInterface.getPlayerGameInput);
        rtsPlayerGameInput.setSelectedRTSLayer (layerInterface, BuildingRTSFormInput'Class (This).getSelectedGeographicCellPosition);
        layerManager.append (layerInterface);
        rtsPlayerLayerInterface.add (BuildingSound_Package.getInstance);
        if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
            GameNotificationEventHandler_Package.getInstance.fireEvent (This.buildingGameNotificationEvent);
        end if;
   end add;

   function isSurroundingCellsOffMap (This : in out BuildingRTSFormInput; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) return Boolean is
      layerInterface : constant RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      occupyList : BasicArrayList_Access;
      surroundList : BasicArrayList_Access;
      occupySize : Integer;
      surroundSize : Integer;
      stringBuffer : StringMaker_Access;
      isSurroundOffMap : Boolean;
   begin
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList;
        occupySize := occupyList.size;
        surroundSize := surroundList.size;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("occupySize: "));
        stringBuffer.appendint (occupySize);
        stringBuffer.append (To_Unbounded_String (" surroundSize: "));
        stringBuffer.appendint (surroundSize);
        stringBuffer.append (To_Unbounded_String (" surroundList: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (surroundList));
        This.logUtil.putF (stringBuffer.toString, BuildingRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("isSurroundingCellsOffMap"));
        isSurroundOffMap := False;
        if ((occupySize) = (1)) and then ((surroundSize) /= (8)) then
            isSurroundOffMap := True;
        elsif ((occupySize) = (4)) and then ((surroundSize) /= (12)) then
            isSurroundOffMap := True;
        end if;
        if ((occupySize) = (0)) or else (isSurroundOffMap) then
            return True;
        else
            return False;
        end if;
   end isSurroundingCellsOffMap;

   procedure isDemoLocked (This : in out BuildingRTSFormInput; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      Java_Result : constant Boolean := BuildingRTSFormInput'Class (This).isDemoLocked (item_Param => item_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDemoLocked;

   procedure attemptBuild (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class; itemIndex : Integer) is
      Java_Result : constant Boolean := BuildingRTSFormInput'Class (This).attemptBuild (rtsPlayerLayerInterface_Param => rtsPlayerLayerInterface_Param, layerManager_Param => layerManager_Param, layerInterface_Param => layerInterface_Param, itemIndex => itemIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end attemptBuild;

   procedure isBuildAttemptValid (This : in out BuildingRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant Boolean := BuildingRTSFormInput'Class (This).isBuildAttemptValid (rtsPlayerLayerInterface_Param => rtsPlayerLayerInterface_Param, layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBuildAttemptValid;

   procedure isSurroundingCellsOffMap (This : in out BuildingRTSFormInput; layerInterface_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant Boolean := BuildingRTSFormInput'Class (This).isSurroundingCellsOffMap (layerInterface_Param => layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSurroundingCellsOffMap;

end org.allbinary.game.input.form.BuildingRTSFormInput_Package;



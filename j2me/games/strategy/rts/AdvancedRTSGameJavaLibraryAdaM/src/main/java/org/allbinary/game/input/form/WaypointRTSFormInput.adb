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


package body org.allbinary.game.input.form.WaypointRTSFormInput_Package is

   procedure Initialize_Fields (This : in out WaypointRTSFormInput'Class) is
   begin
      null;
      This.WAYPOINT_EVENT := RTSLayerEvent_Package.Create (NullRTSLayer_Package.NULL_RTS_LAYER);
      
      
      
      
      
      
      
      This.stickyAssociatedRtsLayer := NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      basicColorFactory : BasicColorFactory_Access;
   begin
        RTSFormInput_Package.Initialize (This, groupInterface);
        Initialize_Fields (This);
        This.isPrimaryWaypointCreator := isPrimaryWaypointCreator;
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.dragToSpotGameNotificationEvent := GameNotificationEvent_Package.Create (WaypointRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.DRAG_TO_SPOT, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.spotTakenGameNotificationEvent := GameNotificationEvent_Package.Create (WaypointRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.SPOT_TAKEN, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.buildingCollisionGameNotificationEvent := GameNotificationEvent_Package.Create (WaypointRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.BUILDING_COLLISION, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.roadCollisionGameNotificationEvent := GameNotificationEvent_Package.Create (WaypointRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.ROAD_COLLISION, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.newWaypointGameNotificationEvent := GameNotificationEvent_Package.Create (WaypointRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NEW_WAYPOINT, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.noMoneyGameNotificationEvent := GameNotificationEvent_Package.Create (WaypointRTSFormInput_Access'(This'Unchecked_Access), RTSGameStrings_Package.getInstance.NO_MONEY, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean) return WaypointRTSFormInput_Access is
      This : constant WaypointRTSFormInput_Access := new WaypointRTSFormInput;
   begin
      WaypointRTSFormInput_Package.Initialize (This.all, groupInterface, isPrimaryWaypointCreator);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out WaypointRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.dragToSpotGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.spotTakenGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.buildingCollisionGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.roadCollisionGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.newWaypointGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.noMoneyGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processAtPoint (This : in out WaypointRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; point_Param : access GPoint'Class) is
      associatedRtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      point : GPoint_Access := GPoint_Access (point_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      x : Integer;
      y : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        RTSFormInput (This).process (layerManager);
        if (This.isStickyItemSelected) or else ((associatedRtsLayer) = (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
            if (This.isStickyItemSelected) and then ((associatedRtsLayer) = (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
                geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (layerManager);
                geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
                allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
                x := (point.getX) + (allBinaryTiledLayer.getXP);
                y := (point.getY) + (allBinaryTiledLayer.getYP);
                geographicMapCellPosition := geographicMapInterface.getCellPositionAtXY (x, y);
                This.processCellPosition (rtsPlayerLayerInterface, layerManager, geographicMapCellPosition);
            else
                if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                    GameNotificationEventHandler_Package.getInstance.fireEvent (This.dragToSpotGameNotificationEvent);
                end if;
            end if;
        else
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.spotTakenGameNotificationEvent);
            end if;
        end if;
   end processAtPoint;

   --  throws Exception
   procedure processCellPosition (This : in out WaypointRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      itemIndex : Integer;
      cellPoint : GPoint_Access;
      rtsLayer : RTSLayer_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        itemIndex := This.getSelectedStickyItemIndex;
        if (This.newUnconstructedRTSLayerInterfaceArray (itemIndex)) = (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := This.getInstance (layerManager, This.getSelectedStickyItem, geographicMapCellPosition);
        else
            cellPoint := geographicMapCellPosition.getPoint;
            rtsLayer := RTSLayer_Access (This.newUnconstructedRTSLayerInterfaceArray (itemIndex));
            rtsLayer.setPosition (cellPoint.getX, cellPoint.getY, rtsLayer.getZP);
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (rtsLayer.allBinaryGameLayerManagerP);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            rtsLayer.geographicMapCellPositionAreaBase.update (geographicMapInterface);
        end if;
        This.attemptBuild (rtsPlayerLayerInterface, layerManager, RTSLayer_Access (This.newUnconstructedRTSLayerInterfaceArray (itemIndex)), itemIndex);
   end processCellPosition;

   --  throws Exception
   procedure processStickyGameSpecific (This : in out WaypointRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; item_Param : access ABCustomItem'Class; index : Integer) is
      associatedRtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Set Sticking Item: ") & Java_Image (item), WaypointRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("processSticky"));
        This.setSelectedStickyItem (item);
        This.setSelectedStickyItemIndex (index);
        This.setStickyItemSelected (True);
        This.stickyAssociatedRtsLayer := RTSLayer_Access (associatedRtsLayer);
        This.getHashtable.put (Layer_Package.ID, associatedRtsLayer);
   end processStickyGameSpecific;

   --  throws Exception
   function attemptBuild (This : in out WaypointRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer'Class; itemIndex : Integer) return Boolean is
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      layerInterface : RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      list : BasicArrayList_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory_Access;
      geographicMapCellType : GeographicMapCellType_Access;
      index : Integer;
      cost : Integer;
      capital : Capital_Access;
      stringBuffer : StringMaker_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      waypointLayer : WaypointLayer_Access;
      rtsPlayerGameInput : RTSPlayerGameInput_Access;
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
      waypointAvancedRTSGameLayer : AdvancedRTSGameLayer_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Layer: ") & Java_Image (layerInterface), WaypointRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("attemptBuild"));
        if (layerInterface) = (null) then
            This.logUtil.put (To_Unbounded_String ("Layer was null"), WaypointRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("attemptBuild"), Java_New_Exception ("Exception"));
            return False;
        end if;
        geographicMapCellPositionArea := layerInterface.geographicMapCellPositionAreaBase;
        list := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList;
        if (DropCellPositionHistory_Package.getInstance.anyCellPositionWithDrop (list)) or else (WaypointCellPositionHistory_Package.getInstance.anyCellPositionWithDrop (list)) then
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.buildingCollisionGameNotificationEvent);
            end if;
            return False;
        end if;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (layerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (geographicMapInterface.getGeographicMapCellTypeFactory);
        geographicMapCellType := null;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            geographicMapCellType := geographicMapInterface.getCellTypeAt (GeographicMapCellPosition_Access (list.get (index)));
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
        This.logUtil.putF (stringBuffer.toString, WaypointRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("attemptBuild"));
        if (cost) <= (capital.getTotalMoney) then
            layerInterface.construct (rtsPlayerLayerInterface);
            This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := CollidableDestroyableDamageableLayer_Package.getNullInstance;
            capital.removeMoney (cost);
            WaypointCellPositionHistory_Package.getInstance.addList (list, layerInterface);
            geographicMapCellPosition := geographicMapInterface.getCellPositionAtXY (layerInterface.getXP, layerInterface.getYP);
            waypointLayer := WaypointLayer_Access (layerInterface);
            This.addWayPoint (waypointLayer);
            rtsPlayerGameInput := RTSPlayerGameInput_Access (rtsPlayerLayerInterface.getPlayerGameInput);
            rtsPlayerGameInput.setSelectedRTSLayer (layerInterface, geographicMapCellPosition);
            advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
            advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers.addWaypoint (layerInterface);
            layerManager.append (layerInterface);
            waypointAvancedRTSGameLayer := AdvancedRTSGameLayer_Access (waypointLayer);
            rtsPlayerLayerInterface.add (waypointAvancedRTSGameLayer.getWaypointBehavior.getWaypoint.getSound);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.newWaypointGameNotificationEvent);
            end if;
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
   procedure addWayPoint (This : in out WaypointRTSFormInput; layerInterface_Param : access WaypointLayer'Class) is
      layerInterface : WaypointLayer_Access := WaypointLayer_Access (layerInterface_Param);
      stickyAssociatedAdvandedRtsLayer : AdvancedRTSGameLayer_Access;
      list : BasicArrayList_Access;
   begin
        stickyAssociatedAdvandedRtsLayer := AdvancedRTSGameLayer_Access (This.stickyAssociatedRtsLayer);
        list := stickyAssociatedAdvandedRtsLayer.getWaypointBehavior.getOwnedWaypointList;
        RTSLayerUtil_Package.getInstance.destroyAndClear (list);
        list.add (layerInterface);
        if This.isPrimaryWaypointCreator then
            PrimaryWaypointHelper_Package.getInstance.setWaypointLayer (layerInterface);
        end if;
        This.WAYPOINT_EVENT.setRtsLayer (layerInterface);
        WaypointEventHandlerFactory_Package.getInstance (layerInterface.getGroupInterface (0)).fireEvent (This.WAYPOINT_EVENT);
   end addWayPoint;

   procedure attemptBuild (This : in out WaypointRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer'Class; itemIndex : Integer) is
      Java_Result : constant Boolean := WaypointRTSFormInput'Class (This).attemptBuild (rtsPlayerLayerInterface_Param, layerManager_Param, layerInterface_Param, itemIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end attemptBuild;

end org.allbinary.game.input.form.WaypointRTSFormInput_Package;



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


package body org.allbinary.game.input.form.UnitRTSFormInput_Package is

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
        This.noMoneyGameNotificationEvent := GameNotificationEvent_Package.Create (This'Unchecked_Access, RTSGameStrings_Package.getInstance.NO_MONEY, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.newUnitGameNotificationEvent := GameNotificationEvent_Package.Create (This'Unchecked_Access, RTSGameStrings_Package.getInstance.NEW_UNIT, smallIntegerSingletonFactory.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
        This.getHashtable.put (WorkWaypoint_Package.ID, smallIntegerSingletonFactory.getAt (50));
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access) return UnitRTSFormInput_Access is
      This : constant UnitRTSFormInput_Access := new UnitRTSFormInput;
   begin
      Initialize (This.all, groupInterface);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out UnitRTSFormInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.noMoneyGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.newUnitGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processGameSpecific (This : in out UnitRTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; itemIndex : Integer) is
      associatedRtsLayer2 : RTSLayer_Access;
      geographicMapCellPositionArea : GeographicMapCellPositionAreaBase_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      cellPoint : GPoint_Access;
      rtsLayer : RTSLayer_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        RTSFormInput (This).process (layerManager);
        associatedRtsLayer2 := RTSLayer_Access (associatedRtsLayer);
        geographicMapCellPositionArea := associatedRtsLayer2.geographicMapCellPositionAreaBase;
        geographicMapCellPosition := geographicMapCellPositionArea.getNextSurroundingGeographicMapCellPosition;
        This.getHashtable.put (Layer_Package.ID, associatedRtsLayer);
        This.getHashtable.put (UnitRTSFormInput_Package.DECAL_ID, (AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface)).getDecalBasicColor);
        if (This.newUnconstructedRTSLayerInterfaceArray (itemIndex)) = (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            This.newUnconstructedRTSLayerInterfaceArray (itemIndex) := This.getInstance (layerManager, item, geographicMapCellPosition);
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
        This.attemptBuild (associatedRtsLayer2, rtsPlayerLayerInterface, layerManager, RTSLayer_Access (rtsLayer), itemIndex);
   end processGameSpecific;

   --  throws Exception
   procedure attemptBuild (This : in out UnitRTSFormInput; associatedRtsLayer : RTSLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; layerInterface : RTSLayer_Access; itemIndex : Integer) is
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
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("attemptBuild"));
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



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


package body org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package is

   procedure Initialize_Fields (This : in out SelectedRTSLayersPlayerGameInput'Class) is
   begin
      null;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      
      This.isSingleKeyProcessing := (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS)) or else (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_PRESS));
      This.selectedRTSLayersList := BasicArrayListD_Package.Create;
      This.preSelectedRTSLayersList := BasicArrayListD_Package.Create;
      This.paintSelectedRTSLayersList := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SelectedRTSLayersPlayerGameInput'Class; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; list : BasicArrayList_Access; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access) is
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      basicColorFactory : BasicColorFactory_Access;
   begin
        PlayerGameInput_Package.Initialize (This, list, BasicArrayListD_Package.Create, playerInputId);
        Initialize_Fields (This);
        This.initInputProcessors;
        This.rtsPlayerLayerInterface := rtsPlayerLayerInterface;
        This.list := list;
        This.selectRTSLayerVisitorInterface := selectRTSLayerVisitorFactoryInterface.create (This'Unchecked_Access);
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.upgradeGameNotificationEvent := GameNotificationEvent_Package.Create (This'Unchecked_Access, RTSGameStrings_Package.getInstance.UPGRADE, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.noMoneyGameNotificationEvent := GameNotificationEvent_Package.Create (This'Unchecked_Access, RTSGameStrings_Package.getInstance.NO_MONEY, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
        This.downgradeGameNotificationEvent := GameNotificationEvent_Package.Create (This'Unchecked_Access, RTSGameStrings_Package.getInstance.DOWNGRADE, smallIntegerSingletonFactory.getAt (2), basicColorFactory.PINK, BooleanFactory_Package.getInstance.FALSE);
   end Initialize;

   function Create (towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; list : BasicArrayList_Access; playerInputId : Integer; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access) return SelectedRTSLayersPlayerGameInput_Access is
      This : constant SelectedRTSLayersPlayerGameInput_Access := new SelectedRTSLayersPlayerGameInput;
   begin
      Initialize (This.all, towerInfoPaintable, rtsPlayerLayerInterface, list, playerInputId, selectRTSLayerVisitorFactoryInterface);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out SelectedRTSLayersPlayerGameInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.upgradeGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.noMoneyGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
        This.downgradeGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   function isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer : RTSLayer_Access) return Boolean is
   begin
        if This.selectedRTSLayersList.contains (rtsLayer) then
            return True;
        else
            return False;
        end if;
   end isSelected;

   --  throws Exception
   procedure upgrade (This : in out SelectedRTSLayersPlayerGameInput) is
      anyChanged : Boolean;
      rtsLayer : RTSLayer_Access;
      capital : Capital_Access;
      upgradeCost : Integer;
      index : Integer;
      rtsPlayerGameInput : RTSPlayerGameInput_Access;
   begin
        anyChanged := False;
        for index in reverse 0 .. (This.selectedRTSLayersList.size) - (1) loop
            rtsLayer := RTSLayer_Access (This.selectedRTSLayersList.get (index));
            if rtsLayer.isUpgradeable then
                capital := This.rtsPlayerLayerInterface.getCapital;
                upgradeCost := rtsLayer.getUpgradeCost;
                if (upgradeCost) <= (capital.getTotalMoney) then
                    anyChanged := True;
                    This.rtsPlayerLayerInterface.add (UpgradeSound_Package.getInstance);
                    rtsLayer.upgrade;
                    capital.removeMoney (upgradeCost);
                    if not (This.rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                        GameNotificationEventHandler_Package.getInstance.fireEvent (This.upgradeGameNotificationEvent);
                    end if;
                else
                    This.rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
                    if not (This.rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                        GameNotificationEventHandler_Package.getInstance.fireEvent (This.noMoneyGameNotificationEvent);
                    end if;
                end if;
            end if;
        end loop;
        if anyChanged then
            rtsPlayerGameInput := (RTSPlayerGameInput_Access (This.rtsPlayerLayerInterface.getPlayerGameInput));
            rtsPlayerGameInput.updatePaintable;
        end if;
   end upgrade;

   --  throws Exception
   procedure downgrade (This : in out SelectedRTSLayersPlayerGameInput) is
      anyChanged : Boolean;
      rtsLayer : RTSLayer_Access;
      downgradeCost : Integer;
      capital : Capital_Access;
      index : Integer;
      rtsPlayerGameInput : RTSPlayerGameInput_Access;
   begin
        anyChanged := False;
        index := This.selectedRTSLayersList.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            rtsLayer := RTSLayer_Access (This.selectedRTSLayersList.get (index));
            if rtsLayer.isDowngradeable then
                anyChanged := True;
                This.rtsPlayerLayerInterface.add (DowngradeSound_Package.getInstance);
                downgradeCost := rtsLayer.getDowngradeCost;
                rtsLayer.downgrade;
                capital := This.rtsPlayerLayerInterface.getCapital;
                capital.addMoney (downgradeCost);
                if not (This.rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                    GameNotificationEventHandler_Package.getInstance.fireEvent (This.downgradeGameNotificationEvent);
                end if;
            end if;
        end loop;
        if anyChanged then
            rtsPlayerGameInput := (RTSPlayerGameInput_Access (This.rtsPlayerLayerInterface.getPlayerGameInput));
            rtsPlayerGameInput.updatePaintable;
        end if;
   end downgrade;

   procedure initInputProcessors (This : in out SelectedRTSLayersPlayerGameInput) is
   begin
        This.inputProcessorArray (Canvas_Package.KEY_NUM1) := SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.KEY_NUM3) := SelectedRTSLayersPlayerDowngradeGameInputProcessor_Package.Create (This'Unchecked_Access);
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end initInputProcessors;

   --  throws Exception
   procedure processInputKey (This : in out SelectedRTSLayersPlayerGameInput; key : Integer) is
   begin
        if (This.selectedRTSLayersList) /= (null) then
            This.inputProcessorArray (key).processEvent (AllBinaryGameLayerManager_Package.getNullInstance, GameKeyEvent_Package.NONE);
        end if;
   end processInputKey;

   --  throws Exception
   procedure processInput (This : in out SelectedRTSLayersPlayerGameInput; layerManager : AllBinaryLayerManager_Access) is
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            size := This.list.size;
            key := 0;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (This.list.get (index));
                key := gameKeyEvent.getKey;
                This.processInputKey (key);
            end loop;
            if This.isSingleKeyProcessing then
                This.clear;
            else
                This.update;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.gameInputStrings.PROCESS_INPUT, e);
                end;
        end;
   end processInput;

   function getSelectedBasicArrayList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access is
   begin
        return This.selectedRTSLayersList;
   end getSelectedBasicArrayList;

   procedure addSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer : RTSLayer_Access) is
   begin
        This.paintSelectedRTSLayersList := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
        if (selectedLayer) = (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            This.deselectAll;
            This.selectedRTSLayersList.clear;
        else
            if not (This.selectedRTSLayersList.contains (selectedLayer)) then
                This.selectedRTSLayersList.add (selectedLayer);
            end if;
        end if;
        This.paintSelectedRTSLayersList := This.selectedRTSLayersList;
   end addSelectedRTSLayer;

   procedure setSelectedRTSLayer (This : in out SelectedRTSLayersPlayerGameInput; selectedLayer : CollidableDestroyableDamageableLayer_Access) is
      stringBuffer : StringMaker_Access;
      tempList : BasicArrayList_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Selected Layer: "));
        if (selectedLayer) /= (null) then
            stringBuffer.append (selectedLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("setSelectedRTSLayer"));
        This.paintSelectedRTSLayersList := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
        This.selectRTSLayerVisitorInterface.visit (selectedLayer);
        This.deselectAll;
        if (This.selectedRTSLayersList.size) > (0) then
            This.getPreSelectedRTSLayersList.clear;
            tempList := This.getPreSelectedRTSLayersList;
            This.preSelectedRTSLayersList := This.selectedRTSLayersList;
            This.selectedRTSLayersList := tempList;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Preselected: ")).append (This.preSelectedRTSLayersList.toString).toString, This'Unchecked_Access, To_Unbounded_String ("setSelectedRTSLayer"));
        end if;
        if (selectedLayer) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            This.selectedRTSLayersList.add (selectedLayer);
        end if;
        This.paintSelectedRTSLayersList := This.selectedRTSLayersList;
   end setSelectedRTSLayer;

   function getLastSelectedRtsLayer (This : in out SelectedRTSLayersPlayerGameInput) return CollidableDestroyableDamageableLayer_Access is
   begin
        if This.isAnyRTSLayerSelected then
            return CollidableDestroyableDamageableLayer_Access (This.selectedRTSLayersList.get ((This.selectedRTSLayersList.size) - (1)));
        else
            return CollidableDestroyableDamageableLayer_Package.getNullInstance;
        end if;
   end getLastSelectedRtsLayer;

   procedure selectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput) is
      stringBuffer : StringMaker_Access;
      rtsLayer : RTSLayer_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Select all Preselected: "));
        stringBuffer.append (This.preSelectedRTSLayersList.toString);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selectAllPreselected"));
        for index in reverse 0 .. (This.preSelectedRTSLayersList.size) - (1) loop
            rtsLayer := RTSLayer_Access (This.preSelectedRTSLayersList.get (index));
            rtsLayer.select_Id;
        end loop;
   end selectAllPreselected;

   procedure deselectAllPreselected (This : in out SelectedRTSLayersPlayerGameInput) is
      stringBuffer : StringMaker_Access;
      rtsLayer : RTSLayer_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Deselect all Preselected: "));
        stringBuffer.append (This.preSelectedRTSLayersList.toString);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("deselectAllPreselected"));
        for index in reverse 0 .. (This.preSelectedRTSLayersList.size) - (1) loop
            rtsLayer := RTSLayer_Access (This.preSelectedRTSLayersList.get (index));
            rtsLayer.deselect;
        end loop;
        This.preSelectedRTSLayersList.clear;
   end deselectAllPreselected;

   procedure deselectAll (This : in out SelectedRTSLayersPlayerGameInput) is
      rtsLayer : RTSLayer_Access;
      index : Integer;
   begin
        for index in reverse 0 .. (This.selectedRTSLayersList.size) - (1) loop
            rtsLayer := RTSLayer_Access (This.selectedRTSLayersList.get (index));
            rtsLayer.deselect;
        end loop;
   end deselectAll;

   function isAnyRTSLayerSelected (This : in out SelectedRTSLayersPlayerGameInput) return Boolean is
   begin
        if (This.selectedRTSLayersList.size) = (0) then
            return False;
        end if;
        return True;
   end isAnyRTSLayerSelected;

   function getPaintSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access is
   begin
        return This.paintSelectedRTSLayersList;
   end getPaintSelectedRTSLayersList;

   function getPreSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) return BasicArrayList_Access is
   begin
        return This.preSelectedRTSLayersList;
   end getPreSelectedRTSLayersList;

   procedure isSelected (This : in out SelectedRTSLayersPlayerGameInput; rtsLayer : RTSLayer_Access) is
      Java_Result : constant Boolean := SelectedRTSLayersPlayerGameInput'Class (This).isSelected (rtsLayer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSelected;

   procedure getSelectedBasicArrayList (This : in out SelectedRTSLayersPlayerGameInput) is
      Java_Result : constant BasicArrayList_Access := SelectedRTSLayersPlayerGameInput'Class (This).getSelectedBasicArrayList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedBasicArrayList;

   procedure getLastSelectedRtsLayer (This : in out SelectedRTSLayersPlayerGameInput) is
      Java_Result : constant CollidableDestroyableDamageableLayer_Access := SelectedRTSLayersPlayerGameInput'Class (This).getLastSelectedRtsLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastSelectedRtsLayer;

   procedure isAnyRTSLayerSelected (This : in out SelectedRTSLayersPlayerGameInput) is
      Java_Result : constant Boolean := SelectedRTSLayersPlayerGameInput'Class (This).isAnyRTSLayerSelected;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAnyRTSLayerSelected;

   procedure getPaintSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) is
      Java_Result : constant BasicArrayList_Access := SelectedRTSLayersPlayerGameInput'Class (This).getPaintSelectedRTSLayersList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaintSelectedRTSLayersList;

   procedure getPreSelectedRTSLayersList (This : in out SelectedRTSLayersPlayerGameInput) is
      Java_Result : constant BasicArrayList_Access := SelectedRTSLayersPlayerGameInput'Class (This).getPreSelectedRTSLayersList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPreSelectedRTSLayersList;

end org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;



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


package body org.allbinary.game.input.RTSPlayerGameInput_Package is

   procedure Initialize_Fields (This : in out RTSPlayerGameInput'Class) is
   begin
      null;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.removeInputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      
      This.isSingleKeyProcessing := (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS)) or else (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_PRESS));
      
      This.motionGestureInputList := BasicArrayListD_Package.Create;
      
      
      
      
      
      This.selectedRtsFormInput := NullRTSFormInputFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSPlayerGameInput'Class; gameCanvas : AllBinaryGameCanvas_Access; inputList : BasicArrayList_Access; playerInputId : Integer; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerPositionFinderInterface : LayerPositionFinderInterface_Access; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access) is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        PlayerGameInput_Package.Initialize (This, inputList, BasicArrayListD_Package.Create, playerInputId);
        Initialize_Fields (This);
        This.initInputProcessors;
        This.gameCanvas := gameCanvas;
        This.inputList := inputList;
        This.towerInfoPaintable := towerInfoPaintable;
        This.rtsPlayerLayerInterface := rtsPlayerLayerInterface;
        This.selectedRTSLayerPlayerGameInput := SelectedRTSLayersPlayerGameInput_Package.Create (This.getRTSLayerInfoPaintable, This.getRtsPlayerLayerInterface, This.inputList, playerInputId, selectRTSLayerVisitorFactoryInterface);
        if (This.rtsPlayerLayerInterface) /= (NullRTSLayer_Package.NULL_RTS_LAYER) then
            This.setSelectedRtsFormInput (This.rtsPlayerLayerInterface.getRTSFormInput);
        end if;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.gameCanvas.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.scrollPlayerGameInput := ScrollMapPlayerGameInput_Package.Create (geographicMapInterface, This.inputList, playerInputId);
        This.layerPositionFinderInterface := layerPositionFinderInterface;
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access; inputList : BasicArrayList_Access; playerInputId : Integer; towerInfoPaintable : RTSLayerInfoPaintable_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerPositionFinderInterface : LayerPositionFinderInterface_Access; selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface_Access) return RTSPlayerGameInput_Access is
      This : constant RTSPlayerGameInput_Access := new RTSPlayerGameInput;
   begin
      Initialize (This.all, gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out RTSPlayerGameInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
   begin
        This.selectedRTSLayerPlayerGameInput.setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        if (This.selectedRtsFormInput) /= (NullRTSFormInputFactory_Package.getInstance) then
            This.selectedRtsFormInput.setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        end if;
   end setAllBinaryGameLayerManager;

   procedure onDisplayChangeEvent (This : in out RTSPlayerGameInput; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("onDisplayChangeEvent"));
            This.getRTSLayerInfoPaintable.update;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("onDisplayChangeEvent"), e);
        end;
   end onDisplayChangeEvent;

   --  throws Exception
   procedure left (This : in out RTSPlayerGameInput) is
   begin
        This.rtsPlayerLayerInterface.getCurrentScrollSelectionForm.processInputKey (Canvas_Package.LEFT);
   end left;

   --  throws Exception
   procedure right (This : in out RTSPlayerGameInput) is
   begin
        This.rtsPlayerLayerInterface.getCurrentScrollSelectionForm.processInputKey (Canvas_Package.RIGHT);
   end right;

   procedure initInputProcessors (This : in out RTSPlayerGameInput) is
   begin
        This.inputProcessorArray (Canvas_Package.LEFT) := RTSPlayerLeftGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.KEY_NUM0) := This.inputProcessorArray (Canvas_Package.LEFT);
        This.inputProcessorArray (Canvas_Package.RIGHT) := RTSPlayerRightGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.inputProcessorArray (Canvas_Package.KEY_POUND) := This.inputProcessorArray (Canvas_Package.RIGHT);
        This.removeInputProcessorArray (Canvas_Package.KEY_NUM1) := RTSPlayerFireGameInputProcessor_Package.Create (This'Unchecked_Access);
        This.removeInputProcessorArray (Canvas_Package.KEY_NUM3) := This.removeInputProcessorArray (Canvas_Package.KEY_NUM1);
        This.removeInputProcessorArray (Canvas_Package.KEY_NUM3) := This.removeInputProcessorArray (Canvas_Package.KEY_NUM1);
        This.removeInputProcessorArray (Canvas_Package.LEFT) := This.removeInputProcessorArray (Canvas_Package.KEY_NUM1);
        This.removeInputProcessorArray (Canvas_Package.RIGHT) := This.removeInputProcessorArray (Canvas_Package.KEY_NUM1);
        This.removeInputProcessorArray (Canvas_Package.KEY_NUM0) := This.removeInputProcessorArray (Canvas_Package.KEY_NUM1);
        This.removeInputProcessorArray (Canvas_Package.KEY_POUND) := This.removeInputProcessorArray (Canvas_Package.KEY_NUM1);
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
        GameInputProcessorUtil_Package.init (This.removeInputProcessorArray);
   end initInputProcessors;

   --  throws Exception
   procedure processInput (This : in out RTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access) is
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            This.processMotionInput (layerManager);
            size := This.inputList.size;
            key := 0;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (This.inputList.get (index));
                key := gameKeyEvent.getKey;
                This.getScrollPlayerGameInput.processInputKey (key);
                This.getSelectedBuildingPlayerGameInput.processInputKey (key);
                This.inputProcessorArray (key).processEvent (layerManager, gameKeyEvent);
                This.removeInputProcessorArray (key).processEvent (layerManager, gameKeyEvent);
            end loop;
            if This.isIsSingleKeyProcessing then
                This.clear;
            else
                This.update;
            end if;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.gameInputStrings.PROCESS_INPUT, e);
        end;
   end processInput;

   --  throws Exception
   procedure processMotionInput (This : in out RTSPlayerGameInput; layerManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processMotionInput;

   --  throws Exception
   procedure select_Id (This : in out RTSPlayerGameInput; motionGestureEvent : MotionGestureEvent_Access) is
      point : GPoint_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      x : Integer;
      y : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      commonLabels : CommonLabels_Access;
      layer : AllBinaryLayer_Access;
      foundRTSLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        point := motionGestureEvent.getCurrentPoint;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.gameCanvas.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        x := (point.getX) + (allBinaryTiledLayer.getXP);
        y := (point.getY) + (allBinaryTiledLayer.getYP);
        geographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow (x, y);
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            SecondaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
            layer := This.layerPositionFinderInterface.getLayerInterface (geographicMapCellPosition);
            if (layer) = (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER) then
                layer := CollidableDestroyableDamageableLayer_Package.getNullInstance;
            else
                geographicMapCellPosition := geographicMapInterface.getCellPositionAtXY (layer.getXP, layer.getYP);
            end if;
            foundRTSLayer := CollidableDestroyableDamageableLayer_Access (layer);
            This.setSelectedRTSLayer (foundRTSLayer, geographicMapCellPosition);
        else
            commonLabels := CommonLabels_Package.getInstance;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Off Of Map -")).append (commonLabels.WIDTH_LABEL).appendint (Integer (allBinaryTiledLayer.getWidth)).append (commonLabels.HEIGHT_LABEL).appendint (Integer (allBinaryTiledLayer.getHeight)).toString, This'Unchecked_Access, To_Unbounded_String ("select"));
        end if;
   end select_Id;

   --  throws Exception
   procedure setSelectedRTSLayer (This : in out RTSPlayerGameInput; rtsLayer : CollidableDestroyableDamageableLayer_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        This.getSelectedBuildingPlayerGameInput.setSelectedRTSLayer (rtsLayer);
   end setSelectedRTSLayer;

   procedure paint (This : in out RTSPlayerGameInput; graphics : Graphics_Access) is
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      list : BasicArrayList_Access;
      width : Integer;
      height : Integer;
      point : GPoint_Access;
      rtsLayer : RTSLayer_Access;
      index : Integer;
   begin
        geographicMapCellPosition := This.getSelectedRtsFormInput.getSelectedGeographicCellPosition;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.gameCanvas.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        graphics.setColor (BasicColorFactory_Package.getInstance.GREEN.intValue);
        list := This.getSelectedBuildingPlayerGameInput.getPaintSelectedRTSLayersList;
        width := 0;
        height := 0;
        if (list.size) > (0) then
            for index in reverse 0 .. (list.size) - (1) loop
                rtsLayer := RTSLayer_Access (list.get (index));
                width := rtsLayer.getWidth;
                height := rtsLayer.getHeight;
                graphics.drawRect ((rtsLayer.getXP) - (allBinaryTiledLayer.getXP), (rtsLayer.getYP) - (allBinaryTiledLayer.getYP), width, height);
            end loop;
        elsif (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            point := geographicMapCellPosition.getPoint;
            width := allBinaryTiledLayer.getCellWidth;
            height := allBinaryTiledLayer.getCellHeight;
            graphics.drawRect ((point.getX) - (allBinaryTiledLayer.getXP), (point.getY) - (allBinaryTiledLayer.getYP), width, height);
        end if;
   end paint;

   procedure updatePaintable (This : in out RTSPlayerGameInput) is
   begin
        null;
   end updatePaintable;

   function getSelectedBuildingPlayerGameInput (This : in out RTSPlayerGameInput) return SelectedRTSLayersPlayerGameInput_Access is
   begin
        return This.selectedRTSLayerPlayerGameInput;
   end getSelectedBuildingPlayerGameInput;

   function getSelectedRtsFormInput (This : in out RTSPlayerGameInput) return RTSFormInput_Access is
   begin
        return This.selectedRtsFormInput;
   end getSelectedRtsFormInput;

   procedure setSelectedRtsFormInput (This : in out RTSPlayerGameInput; selectedRtsFormInput : RTSFormInput_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("RTSFormInput: ")).append (StringUtil_Package.getInstance.toString (selectedRtsFormInput)).toString, This'Unchecked_Access, To_Unbounded_String ("setSelectedRtsFormInput"));
        This.selectedRtsFormInput := selectedRtsFormInput;
   end setSelectedRtsFormInput;

   function getRtsPlayerLayerInterface (This : in out RTSPlayerGameInput) return RTSPlayerLayerInterface_Access is
   begin
        return This.rtsPlayerLayerInterface;
   end getRtsPlayerLayerInterface;

   function getRTSLayerInfoPaintable (This : in out RTSPlayerGameInput) return RTSLayerInfoPaintable_Access is
   begin
        return This.towerInfoPaintable;
   end getRTSLayerInfoPaintable;

   function getMotionGestureInputList (This : in out RTSPlayerGameInput) return BasicArrayList_Access is
   begin
        return This.motionGestureInputList;
   end getMotionGestureInputList;

   function getGameCanvas (This : in out RTSPlayerGameInput) return AllBinaryGameCanvas_Access is
   begin
        return This.gameCanvas;
   end getGameCanvas;

   function isIsSingleKeyProcessing (This : in out RTSPlayerGameInput) return Boolean is
   begin
        return This.isSingleKeyProcessing;
   end isIsSingleKeyProcessing;

   function getScrollPlayerGameInput (This : in out RTSPlayerGameInput) return ScrollMapPlayerGameInput_Access is
   begin
        return This.scrollPlayerGameInput;
   end getScrollPlayerGameInput;

   procedure getSelectedBuildingPlayerGameInput (This : in out RTSPlayerGameInput) is
      Java_Result : constant SelectedRTSLayersPlayerGameInput_Access := RTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedBuildingPlayerGameInput;

   procedure getSelectedRtsFormInput (This : in out RTSPlayerGameInput) is
      Java_Result : constant RTSFormInput_Access := RTSPlayerGameInput'Class (This).getSelectedRtsFormInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedRtsFormInput;

   procedure getRtsPlayerLayerInterface (This : in out RTSPlayerGameInput) is
      Java_Result : constant RTSPlayerLayerInterface_Access := RTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRtsPlayerLayerInterface;

   procedure getRTSLayerInfoPaintable (This : in out RTSPlayerGameInput) is
      Java_Result : constant RTSLayerInfoPaintable_Access := RTSPlayerGameInput'Class (This).getRTSLayerInfoPaintable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRTSLayerInfoPaintable;

   procedure getMotionGestureInputList (This : in out RTSPlayerGameInput) is
      Java_Result : constant BasicArrayList_Access := RTSPlayerGameInput'Class (This).getMotionGestureInputList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMotionGestureInputList;

   procedure getGameCanvas (This : in out RTSPlayerGameInput) is
      Java_Result : constant AllBinaryGameCanvas_Access := RTSPlayerGameInput'Class (This).getGameCanvas;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameCanvas;

   procedure isIsSingleKeyProcessing (This : in out RTSPlayerGameInput) is
      Java_Result : constant Boolean := RTSPlayerGameInput'Class (This).isIsSingleKeyProcessing;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isIsSingleKeyProcessing;

   procedure getScrollPlayerGameInput (This : in out RTSPlayerGameInput) is
      Java_Result : constant ScrollMapPlayerGameInput_Access := RTSPlayerGameInput'Class (This).getScrollPlayerGameInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScrollPlayerGameInput;

end org.allbinary.game.input.RTSPlayerGameInput_Package;



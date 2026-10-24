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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.form.NullRTSFormInputFactory_Package; use org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.NullRTSLayer_Package; use org.allbinary.game.layer.NullRTSLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.RTSPlayerLeftGameInputProcessor_Package; use org.allbinary.game.input.RTSPlayerLeftGameInputProcessor_Package;
with org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package; use org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package;
with org.allbinary.game.input.RTSPlayerFireGameInputProcessor_Package; use org.allbinary.game.input.RTSPlayerFireGameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessorUtil_Package; use org.allbinary.game.input.GameInputProcessorUtil_Package;

package body org.allbinary.game.input.RTSPlayerGameInput_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package NullRTSFormInputFactory_Package renames Standard.org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package NullRTSLayer_Package renames Standard.org.allbinary.game.layer.NullRTSLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out RTSPlayerGameInput'Class) is
   begin
      null;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.removeInputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      
      This.isSingleKeyProcessing := (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS)) or else (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_PRESS));
      
      This.motionGestureInputList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      
      
      
      
      
      This.selectedRtsFormInput := NullRTSFormInputFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSPlayerGameInput'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; inputList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerPositionFinderInterface_Param : access LayerPositionFinderInterface_Package.LayerPositionFinderInterface'Class; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class) is
      gameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (gameCanvas_Param);
      inputList : constant BasicArrayList_Access := BasicArrayList_Access (inputList_Param);
      towerInfoPaintable : constant RTSLayerInfoPaintable_Access := RTSLayerInfoPaintable_Access (towerInfoPaintable_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerPositionFinderInterface : constant LayerPositionFinderInterface_Access := LayerPositionFinderInterface_Access (layerPositionFinderInterface_Param);
      selectRTSLayerVisitorFactoryInterface : constant SelectRTSLayerVisitorFactoryInterface_Access := SelectRTSLayerVisitorFactoryInterface_Access (selectRTSLayerVisitorFactoryInterface_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        PlayerGameInput_Package.Initialize (This, inputList, BasicArrayListD_Package.Create, playerInputId);
        Initialize_Fields (This);
        RTSPlayerGameInput'Class (This).initInputProcessors;
        This.gameCanvas := gameCanvas;
        This.inputList := inputList;
        This.towerInfoPaintable := towerInfoPaintable;
        This.rtsPlayerLayerInterface := rtsPlayerLayerInterface;
        This.selectedRTSLayerPlayerGameInput := SelectedRTSLayersPlayerGameInput_Package.Create (RTSPlayerGameInput'Class (This).getRTSLayerInfoPaintable, RTSPlayerGameInput'Class (This).getRtsPlayerLayerInterface, This.inputList, playerInputId, selectRTSLayerVisitorFactoryInterface);
        if (Java_Object_Access (This.rtsPlayerLayerInterface)) /= (Java_Object_Access (NullRTSLayer_Package.NULL_RTS_LAYER)) then
            RTSPlayerGameInput'Class (This).setSelectedRtsFormInput (This.rtsPlayerLayerInterface.getRTSFormInput);
        end if;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.gameCanvas.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.scrollPlayerGameInput := ScrollMapPlayerGameInput_Package.Create (geographicMapInterface, This.inputList, playerInputId);
        This.layerPositionFinderInterface := layerPositionFinderInterface;
   end Initialize;

   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; inputList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; towerInfoPaintable_Param : access RTSLayerInfoPaintable_Package.RTSLayerInfoPaintable'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerPositionFinderInterface_Param : access LayerPositionFinderInterface_Package.LayerPositionFinderInterface'Class; selectRTSLayerVisitorFactoryInterface_Param : access SelectRTSLayerVisitorFactoryInterface_Package.SelectRTSLayerVisitorFactoryInterface'Class) return RTSPlayerGameInput_Access is
      This : constant RTSPlayerGameInput_Access := new RTSPlayerGameInput;
   begin
      RTSPlayerGameInput_Package.Initialize (This.all, gameCanvas_Param, inputList_Param, playerInputId, towerInfoPaintable_Param, rtsPlayerLayerInterface_Param, layerPositionFinderInterface_Param, selectRTSLayerVisitorFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out RTSPlayerGameInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        This.selectedRTSLayerPlayerGameInput.setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        if (This.selectedRtsFormInput) /= (NullRTSFormInputFactory_Package.getInstance) then
            This.selectedRtsFormInput.setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        end if;
   end setAllBinaryGameLayerManager;

   procedure onDisplayChangeEvent (This : in out RTSPlayerGameInput; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, RTSPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("onDisplayChangeEvent"));
            RTSPlayerGameInput'Class (This).getRTSLayerInfoPaintable.update;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, RTSPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("onDisplayChangeEvent"), e);
                end;
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
        This.inputProcessorArray (Canvas_Package.LEFT) := GameInputProcessor_Access (RTSPlayerLeftGameInputProcessor_Package.Create (RTSPlayerGameInput_Access'(This'Unchecked_Access)));
        This.inputProcessorArray (Canvas_Package.KEY_NUM0) := This.inputProcessorArray (Canvas_Package.LEFT);
        This.inputProcessorArray (Canvas_Package.RIGHT) := GameInputProcessor_Access (RTSPlayerRightGameInputProcessor_Package.Create (RTSPlayerGameInput_Access'(This'Unchecked_Access)));
        This.inputProcessorArray (Canvas_Package.KEY_POUND) := This.inputProcessorArray (Canvas_Package.RIGHT);
        This.removeInputProcessorArray (Canvas_Package.KEY_NUM1) := GameInputProcessor_Access (RTSPlayerFireGameInputProcessor_Package.Create (RTSPlayerGameInput_Access'(This'Unchecked_Access)));
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
   procedure processInput (This : in out RTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            RTSPlayerGameInput'Class (This).processMotionInput (layerManager);
            size := This.inputList.size;
            key := 0;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (This.inputList.get (index));
                key := gameKeyEvent.getKey;
                RTSPlayerGameInput'Class (This).getScrollPlayerGameInput.processInputKey (key);
                RTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.processInputKey (key);
                This.inputProcessorArray (key).processEvent (layerManager, gameKeyEvent);
                This.removeInputProcessorArray (key).processEvent (layerManager, gameKeyEvent);
            end loop;
            if RTSPlayerGameInput'Class (This).isIsSingleKeyProcessing then
                RTSPlayerGameInput'Class (This).clear;
            else
                RTSPlayerGameInput'Class (This).update;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, RTSPlayerGameInput_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_INPUT, e);
                end;
        end;
   end processInput;

   --  throws Exception
   procedure processMotionInput (This : in out RTSPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
   begin
        null;
   end processMotionInput;

   --  throws Exception
   procedure select_Id (This : in out RTSPlayerGameInput; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
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
            RTSPlayerGameInput'Class (This).setSelectedRTSLayer (foundRTSLayer, geographicMapCellPosition);
        else
            commonLabels := CommonLabels_Package.getInstance;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Off Of Map -")).append (commonLabels.WIDTH_LABEL).appendint (Integer (allBinaryTiledLayer.getWidth)).append (commonLabels.HEIGHT_LABEL).appendint (Integer (allBinaryTiledLayer.getHeight)).toString, RTSPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("select"));
        end if;
   end select_Id;

   --  throws Exception
   procedure setSelectedRTSLayer (This : in out RTSPlayerGameInput; rtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      rtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        RTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.setSelectedRTSLayer (rtsLayer);
   end setSelectedRTSLayer;

   procedure paint (This : in out RTSPlayerGameInput; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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
        geographicMapCellPosition := RTSPlayerGameInput'Class (This).getSelectedRtsFormInput.getSelectedGeographicCellPosition;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.gameCanvas.getLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        graphics.setColor (BasicColorFactory_Package.getInstance.GREEN.intValue);
        list := RTSPlayerGameInput'Class (This).getSelectedBuildingPlayerGameInput.getPaintSelectedRTSLayersList;
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

   procedure setSelectedRtsFormInput (This : in out RTSPlayerGameInput; selectedRtsFormInput_Param : access RTSFormInput_Package.RTSFormInput'Class) is
      selectedRtsFormInput : constant RTSFormInput_Access := RTSFormInput_Access (selectedRtsFormInput_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("RTSFormInput: ")).append (StringUtil_Package.getInstance.toString (selectedRtsFormInput)).toString, RTSPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedRtsFormInput"));
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

end org.allbinary.game.input.RTSPlayerGameInput_Package;



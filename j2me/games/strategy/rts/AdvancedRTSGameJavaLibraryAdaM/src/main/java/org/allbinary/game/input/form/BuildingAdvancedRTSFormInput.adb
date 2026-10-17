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


package body org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package is

   procedure Initialize_Fields (This : in out BuildingAdvancedRTSFormInput'Class) is
   begin
      null;
      
      This.BUILD_BUILDING_RTS_LAYER_EVENT := RTSLayerEvent_Package.Create (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
   end Initialize_Fields;


   procedure Initialize (This : in out BuildingAdvancedRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) is
      basicColorFactory : BasicColorFactory_Access;
   begin
        BuildingRTSFormInput_Package.Initialize (This, groupInterface, isUnitProducer);
        Initialize_Fields (This);
        basicColorFactory := BasicColorFactory_Package.getInstance;
        This.atLeastOneHouseGameNotificationEvent := GameNotificationEvent_Package.Create (BuildingAdvancedRTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("Build At Least One House First"), SmallIntegerSingletonFactory_Package.getInstance.getAt (2), basicColorFactory.WHITE, BooleanFactory_Package.getInstance.FALSE);
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access; isUnitProducer : Boolean) return BuildingAdvancedRTSFormInput_Access is
      This : constant BuildingAdvancedRTSFormInput_Access := new BuildingAdvancedRTSFormInput;
   begin
      BuildingAdvancedRTSFormInput_Package.Initialize (This.all, groupInterface, isUnitProducer);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out BuildingAdvancedRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
   begin
        BuildingRTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        This.atLeastOneHouseGameNotificationEvent.setBasicColorP (geographicMapInterface.getForegroundBasicColor);
   end setAllBinaryGameLayerManager;

   function isPositionBlocked (This : in out BuildingAdvancedRTSFormInput) return Boolean is
   begin
        if (DropCellPositionHistory_Package.getInstance.isCellPositionWithDrop (This.getSelectedGeographicCellPosition)) or else (WaypointCellPositionHistory_Package.getInstance.isCellPositionWithDrop (This.getSelectedGeographicCellPosition)) then
            return True;
        else
            return False;
        end if;
   end isPositionBlocked;

   --  throws Exception
   function isBuildAttemptValid (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer'Class) return Boolean is
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerInterface : RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
      advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface_Access;
      advancedPlayerOwnedRTSLayers : AdvancedPlayerOwnedRTSLayers_Access;
      totalHouses : Integer;
   begin
        advancedRTSPlayerLayerInterface := AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface);
        advancedPlayerOwnedRTSLayers := advancedRTSPlayerLayerInterface.getAdvancedPlayerOwnedRTSLayers;
        totalHouses := advancedPlayerOwnedRTSLayers.getHouseList.size;
        if ((totalHouses) < (1)) and then ((layerInterface.getName.indexOf (To_Unbounded_String (" House"))) < (0)) then
            rtsPlayerLayerInterface.add (ErrorSound_Package.getInstance);
            if not (rtsPlayerLayerInterface.implmentsArtificialIntelligenceCompositeInterface) then
                GameNotificationEventHandler_Package.getInstance.fireEvent (This.atLeastOneHouseGameNotificationEvent);
            end if;
            return False;
        end if;
        return BuildingRTSFormInput (This).isBuildAttemptValid (rtsPlayerLayerInterface, layerInterface);
   end isBuildAttemptValid;

   --  throws Exception
   procedure add (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager'Class; layerInterface_Param : access RTSLayer'Class) is
      rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      layerInterface : RTSLayer_Access := RTSLayer_Access (layerInterface_Param);
   begin
        This.BUILD_BUILDING_RTS_LAYER_EVENT.setRtsLayer (layerInterface);
        BuildingEventHandler_Package.getInstance.fireEvent (This.BUILD_BUILDING_RTS_LAYER_EVENT);
        if (AdvancedRTSPlayerLayerInterface_Access (rtsPlayerLayerInterface)).isLocalPlayer then
            LocalPlayerBuildingEventHandler_Package.getInstance.fireEvent (This.BUILD_BUILDING_RTS_LAYER_EVENT);
        end if;
        BuildingRTSFormInput (This).add (rtsPlayerLayerInterface, layerManager, layerInterface);
   end add;

   procedure isBuildAttemptValid (This : in out BuildingAdvancedRTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface'Class; layerInterface_Param : access RTSLayer'Class) is
      Java_Result : constant Boolean := BuildingAdvancedRTSFormInput'Class (This).isBuildAttemptValid (rtsPlayerLayerInterface_Param, layerInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBuildAttemptValid;

end org.allbinary.game.input.form.BuildingAdvancedRTSFormInput_Package;



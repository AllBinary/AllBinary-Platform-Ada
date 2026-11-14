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


with org.allbinary.game.layer.AdvancedRTSGameLayer_Package; use org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.layer.AdvancedRTSProperties_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.AllBinaryVibrationME_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.game.GameType_Package;
with org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.configuration.feature.TouchFeature_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;
with org.allbinary.graph.V_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package is

   package AdvancedRTSGameLayer_Package renames Standard.org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
   package WaypointLayer_Package renames Standard.org.allbinary.game.layer.waypoint.WaypointLayer_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype DropCellPositionHistory_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access;
   function "=" (Left, Right : DropCellPositionHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype DropCellPositionHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References.DropCellPositionHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package_References."=";
   subtype RaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access;
   function "=" (Left, Right : RaceTrackGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   subtype RaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References."=";
   procedure Initialize_Fields (This : in out CustomMapGenerator'Class) is
   begin
      null;
      
      
      
      This.dropCellPositionHistory := DropCellPositionHistory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomMapGenerator'Class; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) is
      raceTrackGeographicMap : constant RaceTrackGeographicMap_Access := RaceTrackGeographicMap_Access (raceTrackGeographicMap_Param);
      mapArray : Integer_Array_Access_Array_Access;
      size2 : Integer;
   begin
      CustomMapGeneratorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.raceTrackGeographicMap := raceTrackGeographicMap;
        This.geographicMapCellTypeFactory := This.raceTrackGeographicMap.getGeographicMapCellTypeFactory;
        mapArray := raceTrackGeographicMap.getRaceTrackData.getMapArray;
        size2 := mapArray (0)'Length;
        This.customMapArray := new Integer_Array_Access_Array'(0 .. (mapArray'Length) - 1 => new Integer_Array'(0 .. (size2) - 1 => 0));
        if ((mapArray'Length) /= (This.customMapArray'Length)) or else ((mapArray (0)'Length) /= (This.customMapArray (0)'Length)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Array Incorrect")));
        end if;
   end Initialize;

   function Create (raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGenerator_Access is
      This : constant CustomMapGenerator_Access := new CustomMapGenerator;
   begin
      CustomMapGenerator_Package.Initialize (This.all, raceTrackGeographicMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure copyMapIntoCustomMap (This : in out CustomMapGenerator) is
      mapArray : Integer_Array_Access_Array_Access;
      startIndex2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        mapArray := This.raceTrackGeographicMap.getRaceTrackData.getMapArray;
        startIndex2 := (mapArray (0)'Length) - (1);
        for index in reverse 0 .. (mapArray'Length) - (1) loop
            for index2 in reverse 0 .. startIndex2 loop
                This.customMapArray (index) (index2) := CustomMapGenerator'Class (This).getCustomType (index2, index, mapArray (index) (index2));
            end loop;
        end loop;
   end copyMapIntoCustomMap;

   --  throws Exception
   function getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer) return Integer is
      emptyType : Integer;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      cellPosition : CellPosition_Access;
      layer : AllBinaryLayer_Access;
      rtsLayer : AdvancedRTSGameLayer_Access;
   begin
        emptyType := This.geographicMapCellTypeFactory.getEmptyType;
        geographicMapCellPositionFactory := This.raceTrackGeographicMap.getGeographicMapCellPositionFactory;
        cellPosition := geographicMapCellPositionFactory.getAt (column, row);
        if This.dropCellPositionHistory.isCellPositionWithDrop (cellPosition) then
            layer := This.dropCellPositionHistory.getLayerInterface (cellPosition);
            if (Java_Object_Access (layer)) = (Java_Object_Access (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER)) then
                return emptyType;
            end if;
            rtsLayer := AdvancedRTSGameLayer_Access (layer);
            if not (((rtsLayer.getType) = (WaypointLayer_Package.getStaticType))) then
                return emptyType;
            end if;
        end if;
        return currentType;
   end getCustomType;

   function getCustomMapArray (This : in out CustomMapGenerator) return Integer_Array_Access_Array_Access is
   begin
        return This.customMapArray;
   end getCustomMapArray;

   procedure getCustomType (This : in out CustomMapGenerator; column : Integer; row : Integer; currentType : Integer) is
      Java_Result : constant Integer := CustomMapGenerator'Class (This).getCustomType (column => column, row => row, currentType => currentType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomType;

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;



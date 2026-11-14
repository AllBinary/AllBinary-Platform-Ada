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


with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package; use org.allbinary.game.layer.waypoint.WaypointLayer_Package;
with org.allbinary.game.layer.waypoint.WaypointLayer_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.game.layer.AdvancedRTSGameLayer_Package;
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
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;

package body org.allbinary.game.input.form.PrimaryWaypointHelper_Package is

   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PathFindingLayerInterface_Package_References."=";
   subtype WaypointLayer_Access is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access;
   function "=" (Left, Right : WaypointLayer_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayer_Package_References."=";
   subtype WaypointLayer_Access_Array is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array;
   function "=" (Left, Right : WaypointLayer_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayer_Package_References."=";
   subtype WaypointLayer_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array_Access;
   function "=" (Left, Right : WaypointLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayer_Package_References."=";
   subtype WaypointLayer_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayer_Package_References."=";
   subtype WaypointLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.WaypointLayer_Package_References.WaypointLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.WaypointLayer_Package_References."=";
   procedure Initialize_Fields (This : in out PrimaryWaypointHelper'Class) is
   begin
      null;
      This.waypointLayer := PathFindingLayerInterface_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
   end Initialize_Fields;


   function getInstance return PrimaryWaypointHelper_Access is
   begin
        return PrimaryWaypointHelper_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PrimaryWaypointHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PrimaryWaypointHelper_Access is
      This : constant PrimaryWaypointHelper_Access := new PrimaryWaypointHelper;
   begin
      PrimaryWaypointHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function getWaypointLayer (This : in out PrimaryWaypointHelper) return PathFindingLayerInterface_Access is
   begin
        return This.waypointLayer;
   end getWaypointLayer;

   procedure setWaypointLayer (This : in out PrimaryWaypointHelper; waypointLayer_Param : access WaypointLayer_Package.WaypointLayer'Class) is
      waypointLayer : constant WaypointLayer_Access := WaypointLayer_Access (waypointLayer_Param);
   begin
        This.waypointLayer := PathFindingLayerInterface_Access (waypointLayer);
   end setWaypointLayer;

begin
   null;
   instance := PrimaryWaypointHelper_Package.Create;

end org.allbinary.game.input.form.PrimaryWaypointHelper_Package;



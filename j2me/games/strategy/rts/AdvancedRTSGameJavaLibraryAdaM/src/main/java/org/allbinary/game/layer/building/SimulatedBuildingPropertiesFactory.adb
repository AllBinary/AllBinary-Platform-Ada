-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.game.combat.damage.DamageFloaters_Package; use org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package_References;
with org.allbinary.game.tracking.TrackingEvent_Package; use org.allbinary.game.tracking.TrackingEvent_Package;
with org.allbinary.game.tracking.TrackingEvent_Package_References;
with org.allbinary.game.tracking.TrackingEventHandler_Package; use org.allbinary.game.tracking.TrackingEventHandler_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package_References;
with org.allbinary.util.ABHashMap_Package;
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
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
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
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package;
with org.allbinary.math.FrameUtil_Package;
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
with org.allbinary.animation.IndexedAnimation_Package;
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
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.graphics.ScreenCapture_Package;
with org.allbinary.animation.transition.shake.ShakeAnimationListener_Package;
with org.allbinary.animation.transition.shake.ShakeEvent_Package;
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

package body org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package is

   package TrackingEventHandler_Package renames Standard.org.allbinary.game.tracking.TrackingEventHandler_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype DamageFloaters_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access;
   function "=" (Left, Right : DamageFloaters_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype DamageFloaters_Access_Array_Access_Array_Access is org.allbinary.game.combat.damage.DamageFloaters_Package_References.DamageFloaters_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DamageFloaters_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.damage.DamageFloaters_Package_References."=";
   subtype TrackingEvent_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access;
   function "=" (Left, Right : TrackingEvent_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype TrackingEvent_Access_Array_Access_Array_Access is org.allbinary.game.tracking.TrackingEvent_Package_References.TrackingEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackingEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.TrackingEvent_Package_References."=";
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype BuildingLayer_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access;
   function "=" (Left, Right : BuildingLayer_Access) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array;
   function "=" (Left, Right : BuildingLayer_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access;
   function "=" (Left, Right : BuildingLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array_Access_Array is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access_Array;
   function "=" (Left, Right : BuildingLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   subtype BuildingLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.building.BuildingLayer_Package_References.BuildingLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BuildingLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.building.BuildingLayer_Package_References."=";
   procedure Initialize_Fields (This : in out SimulatedBuildingPropertiesFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SimulatedBuildingPropertiesFactory'Class) is
   begin
      BuildingPropertiesFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SimulatedBuildingPropertiesFactory_Access is
      This : constant SimulatedBuildingPropertiesFactory_Access := new SimulatedBuildingPropertiesFactory;
   begin
      SimulatedBuildingPropertiesFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SimulatedBuildingPropertiesFactory_Access is
   begin
        return SimulatedBuildingPropertiesFactory_Package.instanceC;
   end getInstance;

   function getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Integer is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return 0;
   end getEfficiencyPerLevel;

   function getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return DamageFloaters_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
      damageFloaters : DamageFloaters_Access;
   begin
        damageFloaters := DamageFloaters_Package.getInstance;
        This.damageFloatersPaintableInterface := Paintable_Access (damageFloaters);
        return damageFloaters;
   end getDamageFloaters;

   --  throws Exception
   function getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return Paintable_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return NullPaintable_Package.getInstance;
   end getHealthBar;

   function getHashtable (This : in out SimulatedBuildingPropertiesFactory) return ABHashtable_Access is
   begin
        return ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);
   end getHashtable;

   function getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) return TrackingEvent_Access is
      buildingLayer : constant BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
   begin
        return TrackingEvent_Package.Create (TrackingEventHandler_Package.getInstance);
   end getTrackingEvent;

   procedure getEfficiencyPerLevel (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant Integer := SimulatedBuildingPropertiesFactory'Class (This).getEfficiencyPerLevel (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEfficiencyPerLevel;

   procedure getDamageFloaters (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant DamageFloaters_Access := SimulatedBuildingPropertiesFactory'Class (This).getDamageFloaters (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageFloaters;

   procedure getHealthBar (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant Paintable_Access := SimulatedBuildingPropertiesFactory'Class (This).getHealthBar (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHealthBar;

   procedure getTrackingEvent (This : in out SimulatedBuildingPropertiesFactory; buildingLayer_Param : access BuildingLayer_Package.BuildingLayer'Class) is
      Java_Result : constant TrackingEvent_Access := SimulatedBuildingPropertiesFactory'Class (This).getTrackingEvent (buildingLayer_Param => buildingLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTrackingEvent;

begin
   null;
   instanceC := SimulatedBuildingPropertiesFactory_Package.Create;

end org.allbinary.game.layer.building.SimulatedBuildingPropertiesFactory_Package;



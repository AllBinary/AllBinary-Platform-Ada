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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;
with org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.game.layer.NullPathFindingLayer_Package; use org.allbinary.game.layer.NullPathFindingLayer_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.layer.building.ProductivityNumberStringHud_Package; use org.allbinary.game.layer.building.ProductivityNumberStringHud_Package;
with org.allbinary.game.layer.building.EfficiencyNumberStringHud_Package; use org.allbinary.game.layer.building.EfficiencyNumberStringHud_Package;
with org.allbinary.game.layer.building.HealthNumberStringHud_Package; use org.allbinary.game.layer.building.HealthNumberStringHud_Package;
with org.allbinary.game.layer.building.MaxHealthNumberStringHud_Package; use org.allbinary.game.layer.building.MaxHealthNumberStringHud_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package; use org.allbinary.game.layer.building.BuildingLayer_Package;
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
with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.layer.building.BuildingLayer_Package;
with org.allbinary.game.layer.building.BuildingPropertiesFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.combat.damage.DamageFloaters_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with org.allbinary.game.layer.building.EfficiencyNumberStringHud_Package;
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
with org.allbinary.game.layer.building.HealthNumberStringHud_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;
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
with org.allbinary.game.layer.building.MaxHealthNumberStringHud_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.media.audio.PlayerQueue_Package;
with org.allbinary.game.PlayerType_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.logic.math.PrimitiveLongSingleton_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.game.layer.building.ProductivityNumberStringHud_Package;
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

package body org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package NumberStringHudFactory_Package renames Standard.org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package NullPathFindingLayer_Package renames Standard.org.allbinary.game.layer.NullPathFindingLayer_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   procedure Initialize_Fields (This : in out BuildingInfoHudPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.HEALTH := To_Unbounded_String ("Health:");
      
      
      
      
      This.rtsLayer := PathFindingLayerInterface_Access (NullPathFindingLayer_Package.NULL_PATH_FINDING_LAYER);
      This.currentHealth := 0;
   end Initialize_Fields;


   function getInstance return BuildingInfoHudPaintable_Access is
   begin
        return BuildingInfoHudPaintable_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BuildingInfoHudPaintable'Class) is
      numberStringHudFactory : NumberStringHudFactory_Access;
      productivityHud : NumberStringHud_Access;
      efficiencyHud : NumberStringHud_Access;
      healthHud : NumberStringHud_Access;
      maxHealthHud : NumberStringHud_Access;
      index : Integer;
      basicHudFactory : BasicHudFactory_Access;
      basicColor : BasicColor_Access;
      textX : Integer;
      y : Integer;
      firstIndex : Integer;
      secondIndex : Integer;
      HEALTH : Unbounded_String;
      thirdIndex : Integer;
      totalLength : Integer;
      fourthIndex : Integer;
      commonStrings : CommonStrings_Access;
   begin
      SelectionHudPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        numberStringHudFactory := NumberStringHudFactory_Package.getInstance;
        productivityHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        efficiencyHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        healthHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        maxHealthHud := NumberStringHud_Access (numberStringHudFactory.NULL_NUMBER_STRING_HUD);
        begin
            index := 0;
            basicHudFactory := BasicHudFactory_Package.getInstance;
            basicColor := BuildingInfoHudPaintable'Class (This).getBasicColorP;
            textX := This.textX;
            y := This.y;
            firstIndex := index;
            --  Java nested class ProductivityNumberStringHud: move it to its own package
            productivityHud := NumberStringHud_Access (ProductivityNumberStringHud_Package.Create);
            index := index + 1;
            secondIndex := index;
            --  Java nested class EfficiencyNumberStringHud: move it to its own package
            efficiencyHud := NumberStringHud_Access (EfficiencyNumberStringHud_Package.Create);
            index := index + 1;
            HEALTH := This.HEALTH;
            thirdIndex := index;
            --  Java nested class HealthNumberStringHud: move it to its own package
            totalLength := (Ada.Strings.Unbounded.Length (HEALTH)) + (1);
            healthHud := NumberStringHud_Access (HealthNumberStringHud_Package.Create);
            fourthIndex := index;
            --  Java nested class MaxHealthNumberStringHud: move it to its own package
            maxHealthHud := NumberStringHud_Access (MaxHealthNumberStringHud_Package.Create);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, BuildingInfoHudPaintable_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
        This.productivityHud := productivityHud;
        This.efficiencyHud := efficiencyHud;
        This.healthHud := healthHud;
        This.maxHealthHud := maxHealthHud;
   end Initialize;

   function Create return BuildingInfoHudPaintable_Access is
      This : constant BuildingInfoHudPaintable_Access := new BuildingInfoHudPaintable;
   begin
      BuildingInfoHudPaintable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out BuildingInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      totalLength : Integer;
   begin
        font := graphics.getFont;
        totalLength := (Ada.Strings.Unbounded.Length (This.HEALTH)) + (MathUtil_Package.getInstance.getTotalDigits (This.currentHealth));
        This.maxHealthHud.setX ((This.textX) + (MyFontProcessor_Package.defaultStringWidth (font, totalLength)));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure setBasicColorP (This : in out BuildingInfoHudPaintable; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).setBasicColorP (basicColor);
        This.productivityHud.setBasicColorP (basicColor);
        This.efficiencyHud.setBasicColorP (basicColor);
        This.healthHud.setBasicColorP (basicColor);
        This.maxHealthHud.setBasicColorP (basicColor);
   end setBasicColorP;

   procedure paint (This : in out BuildingInfoHudPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        SelectionHudPaintable_Package.SelectionHudPaintable (This).paint (graphics);
        This.myFontProcessor.process (graphics);
        This.productivityHud.paint (graphics);
        This.efficiencyHud.paint (graphics);
        This.healthHud.paint (graphics);
        This.maxHealthHud.paint (graphics);
        BuildingInfoHudPaintable'Class (This).getAnimationInterface.paintXY (graphics, This.imageX, This.y);
   end paint;

   procedure updateSelectionInfo (This : in out BuildingInfoHudPaintable) is
      buildingLayer : BuildingLayer_Access;
   begin
        buildingLayer := BuildingLayer_Access (This.rtsLayer);
        BuildingInfoHudPaintable'Class (This).setName (buildingLayer.getName);
        BuildingInfoHudPaintable'Class (This).setAnimationInterface (buildingLayer.getVerticleBuildAnimationInterface);
        This.productivityHud.set (buildingLayer.getProductivity);
        This.efficiencyHud.set ((buildingLayer.getEfficiency) / (100));
        This.currentHealth := buildingLayer.getHealthInterface.getHealth;
        This.healthHud.set (This.currentHealth);
        This.myFontProcessor := This.updateMyFontProcessor;
        This.maxHealthHud.set (buildingLayer.getHealthInterface.getMaxHealth);
   end updateSelectionInfo;

   procedure setRtsLayer (This : in out BuildingInfoHudPaintable; rtsLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      rtsLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (rtsLayer_Param);
   begin
        This.rtsLayer := rtsLayer;
   end setRtsLayer;

begin
   null;
   instance := BuildingInfoHudPaintable_Package.Create;

end org.allbinary.game.layer.building.BuildingInfoHudPaintable_Package;



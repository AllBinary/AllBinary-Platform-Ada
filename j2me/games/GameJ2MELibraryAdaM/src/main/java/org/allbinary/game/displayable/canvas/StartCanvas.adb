--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.IndexedAnimationBehavior_Package; use org.allbinary.animation.IndexedAnimationBehavior_Package;
with org.allbinary.animation.special.SpecialAnimation_Package; use org.allbinary.animation.special.SpecialAnimation_Package;
with org.allbinary.animation.special.SpecialAnimation_Package_References;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package_References;
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.canvas.BaseGameStatistics_Package_References;
with org.allbinary.canvas.CustomGameMenuUtil_Package; use org.allbinary.canvas.CustomGameMenuUtil_Package;
with org.allbinary.canvas.FullScreenUtil_Package; use org.allbinary.canvas.FullScreenUtil_Package;
with org.allbinary.canvas.FullScreenUtil_Package_References;
with org.allbinary.canvas.GameStatisticsFactory_Package; use org.allbinary.canvas.GameStatisticsFactory_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package; use org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References;
with org.allbinary.game.init.GameInitializationUtil_Package; use org.allbinary.game.init.GameInitializationUtil_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameInputStrings_Package_References;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package_References;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package; use org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.score.HighScoreCommands_Package; use org.allbinary.game.score.HighScoreCommands_Package;
with org.allbinary.game.score.HighScores_Package; use org.allbinary.game.score.HighScores_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package_References;
with org.allbinary.game.score.HighScoresHelper_Package; use org.allbinary.game.score.HighScoresHelper_Package;
with org.allbinary.game.score.HighScoresHelper_Package_References;
with org.allbinary.game.score.HighScoresPaintable_Package; use org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.score.HighScoresPaintable_Package_References;
with org.allbinary.game.score.NullHighScoresSingletonFactory_Package; use org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.game.state.GameStateFactory_Package_References;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.ResizableListenerHandler_Package; use org.allbinary.graphics.ResizableListenerHandler_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.form.FormType_Package; use org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
with org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package; use org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.graphics.opengles.OpenGLThreadUtil_Package; use org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package_References;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package_References;
with org.allbinary.graphics.paint.StatePaintable_Package; use org.allbinary.graphics.paint.StatePaintable_Package;
with org.allbinary.graphics.paint.StatePaintable_Package_References;
with org.allbinary.graphics.paint.StatePaintableFactory_Package; use org.allbinary.graphics.paint.StatePaintableFactory_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package; use org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package; use org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package; use org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.audio.AllBinaryMediaManager_Package; use org.allbinary.media.audio.AllBinaryMediaManager_Package;
with org.allbinary.media.audio.EarlySoundsFactory_Package; use org.allbinary.media.audio.EarlySoundsFactory_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package; use org.allbinary.game.displayable.canvas.FormUtil_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package_References;
with org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References;
with org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package; use org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package_References;
with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
with org.allbinary.game.midlet.GameMidlet_Package;
with org.allbinary.game.midlet.GameMidletStateFactory_Package;
with org.allbinary.game.GameStrings_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.score.HighScoreCommandsBaseFactory_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessor_Package;
with org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface_Package;
with org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;

package body org.allbinary.game.displayable.canvas.StartCanvas_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package IndexedAnimationBehavior_Package renames Standard.org.allbinary.animation.IndexedAnimationBehavior_Package;
   package CustomGameMenuUtil_Package renames Standard.org.allbinary.canvas.CustomGameMenuUtil_Package;
   package GameStatisticsFactory_Package renames Standard.org.allbinary.canvas.GameStatisticsFactory_Package;
   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package GameInitializationUtil_Package renames Standard.org.allbinary.game.init.GameInitializationUtil_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package DemoGameMidlet_Package renames Standard.org.allbinary.game.midlet.DemoGameMidlet_Package;
   package HighScoreCommands_Package renames Standard.org.allbinary.game.score.HighScoreCommands_Package;
   package HighScores_Package renames Standard.org.allbinary.game.score.HighScores_Package;
   package NullHighScoresSingletonFactory_Package renames Standard.org.allbinary.game.score.NullHighScoresSingletonFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package ResizableListenerHandler_Package renames Standard.org.allbinary.graphics.ResizableListenerHandler_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package DisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package FormType_Package renames Standard.org.allbinary.graphics.form.FormType_Package;
   package FormTypeFactory_Package renames Standard.org.allbinary.graphics.form.FormTypeFactory_Package;
   package CurrentDisplayableFactory_Package renames Standard.org.allbinary.graphics.opengles.CurrentDisplayableFactory_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package OpenGLThreadUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLThreadUtil_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package StatePaintableFactory_Package renames Standard.org.allbinary.graphics.paint.StatePaintableFactory_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package InApplicationPurchaseFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
   package LockableFeature_Package renames Standard.org.allbinary.logic.system.security.licensing.LockableFeature_Package;
   package LockableFeatureFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package AllBinaryMediaManager_Package renames Standard.org.allbinary.media.audio.AllBinaryMediaManager_Package;
   package EarlySoundsFactory_Package renames Standard.org.allbinary.media.audio.EarlySoundsFactory_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
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
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   function "=" (Left, Right : Item_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   function "=" (Left, Right : Item_Access_Array) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   function "=" (Left, Right : Item_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   function "=" (Left, Right : Item_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Item_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype SpecialAnimation_Access is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access;
   function "=" (Left, Right : SpecialAnimation_Access) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array;
   function "=" (Left, Right : SpecialAnimation_Access_Array) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array_Access is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array_Access;
   function "=" (Left, Right : SpecialAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array_Access_Array is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype GameAdStateFactory_Access is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access;
   function "=" (Left, Right : GameAdStateFactory_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array;
   function "=" (Left, Right : GameAdStateFactory_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameAdStateFactory_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array_Access_Array is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameAdStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype GameAdStateFactory_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.GameAdStateFactory_Package_References.GameAdStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameAdStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.GameAdStateFactory_Package_References."=";
   subtype BaseGameStatistics_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access;
   function "=" (Left, Right : BaseGameStatistics_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array;
   function "=" (Left, Right : BaseGameStatistics_Access_Array) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access_Array is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype BaseGameStatistics_Access_Array_Access_Array_Access is org.allbinary.canvas.BaseGameStatistics_Package_References.BaseGameStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseGameStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.BaseGameStatistics_Package_References."=";
   subtype FullScreenUtil_Access is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access;
   function "=" (Left, Right : FullScreenUtil_Access) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array;
   function "=" (Left, Right : FullScreenUtil_Access_Array) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array_Access is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array_Access;
   function "=" (Left, Right : FullScreenUtil_Access_Array_Access) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array_Access_Array is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FullScreenUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype FullScreenUtil_Access_Array_Access_Array_Access is org.allbinary.canvas.FullScreenUtil_Package_References.FullScreenUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FullScreenUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.FullScreenUtil_Package_References."=";
   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   function "=" (Left, Right : Features_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   function "=" (Left, Right : Features_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   function "=" (Left, Right : Features_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype GameInputStrings_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access;
   function "=" (Left, Right : GameInputStrings_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array;
   function "=" (Left, Right : GameInputStrings_Access_Array) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   function "=" (Left, Right : GameKey_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameKey_Package_References."=";
   subtype GameKeyEventFactory_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype GameKeyEventFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventFactory_Package_References.GameKeyEventFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventFactory_Package_References."=";
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputToGameKeyMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype HighScoresFactoryInterface_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresFactoryInterface_Package_References.HighScoresFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresFactoryInterface_Package_References."=";
   subtype HighScoresHelper_Access is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access;
   function "=" (Left, Right : HighScoresHelper_Access) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array;
   function "=" (Left, Right : HighScoresHelper_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array_Access is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelper_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array_Access_Array is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresHelper_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresHelper_Package_References.HighScoresHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresHelper_Package_References."=";
   subtype HighScoresPaintable_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access;
   function "=" (Left, Right : HighScoresPaintable_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array;
   function "=" (Left, Right : HighScoresPaintable_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access_Array is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype HighScoresPaintable_Access_Array_Access_Array_Access is org.allbinary.game.score.HighScoresPaintable_Package_References.HighScoresPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HighScoresPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.HighScoresPaintable_Package_References."=";
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   function "=" (Left, Right : GameState_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   function "=" (Left, Right : GameState_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   function "=" (Left, Right : GameState_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameState_Package_References."=";
   subtype GameStateFactory_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access;
   function "=" (Left, Right : GameStateFactory_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype GameStateFactory_Access_Array_Access_Array_Access is org.allbinary.game.state.GameStateFactory_Package_References.GameStateFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStateFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.state.GameStateFactory_Package_References."=";
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   function "=" (Left, Right : BasicColorFactory_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorFactory_Package_References."=";
   subtype MyCommandsFactory_Access is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access;
   function "=" (Left, Right : MyCommandsFactory_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array;
   function "=" (Left, Right : MyCommandsFactory_Access_Array) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array_Access is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array_Access;
   function "=" (Left, Right : MyCommandsFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array_Access_Array is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MyCommandsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCommandsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype OpenGLFeatureFactory_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access;
   function "=" (Left, Right : OpenGLFeatureFactory_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype OpenGLFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References.OpenGLFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package_References."=";
   subtype InitUpdatePaintable_Access is org.allbinary.graphics.paint.InitUpdatePaintable_Package_References.InitUpdatePaintable_Access;
   function "=" (Left, Right : InitUpdatePaintable_Access) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintable_Package_References."=";
   subtype InitUpdatePaintable_Access_Array is org.allbinary.graphics.paint.InitUpdatePaintable_Package_References.InitUpdatePaintable_Access_Array;
   function "=" (Left, Right : InitUpdatePaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintable_Package_References."=";
   subtype InitUpdatePaintable_Access_Array_Access is org.allbinary.graphics.paint.InitUpdatePaintable_Package_References.InitUpdatePaintable_Access_Array_Access;
   function "=" (Left, Right : InitUpdatePaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintable_Package_References."=";
   subtype InitUpdatePaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.InitUpdatePaintable_Package_References.InitUpdatePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : InitUpdatePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintable_Package_References."=";
   subtype InitUpdatePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.InitUpdatePaintable_Package_References.InitUpdatePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitUpdatePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintable_Package_References."=";
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
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   function "=" (Left, Right : PaintableInterface_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype StatePaintable_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access;
   function "=" (Left, Right : StatePaintable_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array;
   function "=" (Left, Right : StatePaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access;
   function "=" (Left, Right : StatePaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : StatePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype StatePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.StatePaintable_Package_References.StatePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StatePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StatePaintable_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
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
   subtype FormUtil_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access;
   function "=" (Left, Right : FormUtil_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array;
   function "=" (Left, Right : FormUtil_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access;
   function "=" (Left, Right : FormUtil_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FormUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype FormUtil_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.FormUtil_Package_References.FormUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.FormUtil_Package_References."=";
   subtype BasicMenuInputProcessor_Access is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access;
   function "=" (Left, Right : BasicMenuInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array_Access;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype BasicMenuInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References.BasicMenuInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicMenuInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package_References."=";
   subtype GameRunnable_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access;
   function "=" (Left, Right : GameRunnable_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array;
   function "=" (Left, Right : GameRunnable_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access;
   function "=" (Left, Right : GameRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : GameRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   subtype GameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameRunnable_Package_References.GameRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameRunnable_Package_References."=";
   procedure Initialize_Fields (This : in out StartCanvas'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
      This.myCommandsFactory := MyCommandsFactory_Package.getInstance;
      This.gameAdStateFactory := GameAdStateFactory_Package.getInstance;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      This.formUtil := FormUtil_Package.getInstance;
      This.basicGameDemoPaintable := StatePaintableFactory_Package.getInstance;
      This.specialAnimationInterface := SpecialAnimation_Package.getInstance;
      This.paintedSpecialAnimationInterface := SpecialAnimation_Package.getInstance;
      This.fullScreenUtil := FullScreenUtil_Package.getInstance;
      This.highScoresHelper := HighScoresHelper_Package.Create;
      This.realHighScoresPaintable := HighScoresPaintable_Package.Create;
      This.highScoresPaintable := NullPaintable_Package.getInstance;
      This.state := 0;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (6000);
      
      This.menuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuForm := ScrollSelectionForm_Package.getNullScrollSelectionForm;
      
      This.initialized := False;
      This.defaultPaintableInterface := NullPaintable_Package.getInstance;
      This.paintableInterface := PaintableInterface_Access (NullPaintable_Package.getInstance);
      
      This.tempWait := NullWaitGameRunnable_Package.getInstance.WAIT;
      This.inputToGameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping;
      This.gameRunnable := NullWaitGameRunnable_Package.getInstance;
      This.progressPaintable := PaintableInterface_Access (ProgressCanvasFactory_Package.getLazyInstance);
      This.isSingleKeyRepeatableProcessing := This.features.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS);
      This.NONE := GameKey_Access (GameKeyFactory_Package.getInstance.NONE);
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.SET_STATE := To_Unbounded_String ("setState");
      This.baseGameStatistics := GameStatisticsFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StartCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; paintable_Param : access Paintable_Package.Paintable'Class; overlayPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; isContinue : Boolean) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      paintable : constant Paintable_Access := Paintable_Access (paintable_Param);
      overlayPaintable : constant InitUpdatePaintable_Access := InitUpdatePaintable_Access (overlayPaintable_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
   begin
        RunnableCanvas_Package.Initialize (This, commandListener, CurrentDisplayableFactory_Package.getInstance.DEFAULT_CHILD_NAME_LIST, True);
        Initialize_Fields (This);
        StartCanvas'Class (This).setWait (NullWaitGameRunnable_Package.getInstance.WAIT);
        This.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil_Package.getInstance.initDemo (abeClientInformation, StartCanvas_Access'(This'Unchecked_Access), gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler_Package.getInstance.fireEvent (False);
        This.overlayPaintable := overlayPaintable;
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        StartCanvas'Class (This).setDefaultPaintableInterface (paintable);
        StartCanvas'Class (This).setPaintableInterface (StartCanvas'Class (This).getDefaultPaintableInterface);
        if isContinue then
            StartCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CONTINUE_COMMAND);
        end if;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            StartCanvas'Class (This).mediaInit;
        end if;
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (StartCanvas_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; paintable_Param : access Paintable_Package.Paintable'Class; overlayPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; isContinue : Boolean) return StartCanvas_Access is
      This : constant StartCanvas_Access := new StartCanvas;
   begin
      StartCanvas_Package.Initialize (This.all, abeClientInformation_Param, commandListener_Param, highScoresFactoryInterface_Param, paintable_Param, overlayPaintable_Param, gameInitializationInterfaceFactoryInterface_Param, isContinue);
      return This;
   end Create;

   procedure onEvent (This : in out StartCanvas; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, StartCanvas_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onDisplayChangeEvent (This : in out StartCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
      formType : FormType_Access;
      rectangle : Rectangle_Access;
   begin
        begin
            scrollSelectionForm := StartCanvas'Class (This).getMenuForm;
            if (scrollSelectionForm) /= (null) then
                formType := FormTypeFactory_Package.getInstance.getFormType;
                rectangle := This.formUtil.createFormRectangle;
                scrollSelectionForm.init (rectangle, formType);
            end if;
            This.overlayPaintable.init;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, StartCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
   end onDisplayChangeEvent;

   function getCustomCommands (This : in out StartCanvas) return Java_Object_Access_Array_Access is
      gameCommandsFactory : GameCommandsFactory_Access;
      commandList : BasicArrayList_Access;
      inApplicationPurchaseFactory : InApplicationPurchaseFactory_Access;
      list : BasicArrayList_Access;
      isOverScan : Boolean;
      commandArray : Java_Object_Access_Array_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if J2MEUtil_Package.isHTML then
            commandArray := new Java_Object_Access_Array'(gameCommandsFactory.START_COMMAND, HighScoreCommands_Package.getInstance.DISPLAY, GameInputMappingCanvas_Package.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT);
            return commandArray;
        else
            commandList := BasicArrayList_Access (BasicArrayListD_Package.Create);
            commandList.add (gameCommandsFactory.START_COMMAND);
            inApplicationPurchaseFactory := InApplicationPurchaseFactory_Package.getInstance;
            if inApplicationPurchaseFactory.isEnabled then
                list := LockableFeatureFactory_Package.getInstance.getList;
                if ((list.size) > (0)) and then (not (inApplicationPurchaseFactory.isPurchased (LockableFeature_Access (list.get (0))))) then
                    commandList.add (gameCommandsFactory.BUY_COMMAND);
                end if;
            end if;
            commandList.add (HighScoreCommands_Package.getInstance.DISPLAY);
            begin
                isOverScan := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance.isOverScan;
                if SWTUtil_Package.isSWT then
                    commandList.add (GameInputMappingCanvas_Package.DISPLAY);
                elsif not (isOverScan) then
                    commandList.add (gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add (gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add (GameInputMappingCanvas_Package.DISPLAY);
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                null;
                    end;
            end;
            commandList.add (gameCommandsFactory.DISPLAY_ABOUT);
            commandArray := commandList.toArray;
            return commandArray;
        end if;
   end getCustomCommands;

   procedure initCommands (This : in out StartCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      commandArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        StartCanvas'Class (This).removeAllCommands;
        commandArray := StartCanvas'Class (This).getCustomCommands;
        size := commandArray'Length;
        for index in 0 .. (size) - 1 loop
            StartCanvas'Class (This).addCommand (Command_Access (commandArray (index)));
        end loop;
        CustomGameMenuUtil_Package.add (StartCanvas_Access'(This'Unchecked_Access));
        StartCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure initPostPaint (This : in out StartCanvas) is
   begin
        null;
   end initPostPaint;

   --  throws Exception
   procedure mediaInit (This : in out StartCanvas) is
   begin
        AllBinaryMediaManager_Package.init (EarlySoundsFactory_Package.getInstance);
   end mediaInit;

   procedure itemStateChanged (This : in out StartCanvas; item_Param : access Item_Package.Item'Class) is
      item : constant Item_Access := Item_Access (item_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, StartCanvas_Access'(This'Unchecked_Access));
   end itemStateChanged;

   --  throws Exception
   procedure initMenu (This : in out StartCanvas) is
   begin
        StartCanvas'Class (This).close;
        StartCanvas'Class (This).open;
   end initMenu;

   procedure open (This : in out StartCanvas) is
   begin
        BasicMotionGesturesHandler_Package.getInstance.addListenerInterface (StartCanvas'Class (This).getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.addListener (StartCanvas'Class (This).getMenuInputProcessor);
   end open;

   procedure close (This : in out StartCanvas) is
   begin
        BasicMotionGesturesHandler_Package.getInstance.removeListener (StartCanvas'Class (This).getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.removeListener (StartCanvas'Class (This).getMenuInputProcessor);
   end close;

   function getSourceId (This : in out StartCanvas) return Integer is
   begin
        return StartCanvas_Package.id;
   end getSourceId;

   procedure keyPressed (This : in out StartCanvas; keyCode : Integer) is
   begin
        StartCanvas'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out StartCanvas; keyCode : Integer) is
   begin
        StartCanvas'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out StartCanvas; keyCode : Integer) is
   begin
        StartCanvas'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out StartCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        StartCanvas'Class (This).addGameKeyEvent (keyCode, False);
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out StartCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        StartCanvas'Class (This).removeGameKeyEvent (keyCode, False);
   end keyReleasedByDevice;

   procedure keyRepeatedByDevice (This : in out StartCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        if This.isSingleKeyRepeatableProcessing then
            StartCanvas'Class (This).addGameKeyEvent (keyCode, True);
        end if;
   end keyRepeatedByDevice;

   procedure addGameKeyEvent (This : in out StartCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (StartCanvas_Access'(This'Unchecked_Access), keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (StartCanvas_Access'(This'Unchecked_Access), gameKey);
                DownGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, StartCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), StartCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end addGameKeyEvent;

   procedure removeGameKeyEvent (This : in out StartCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (StartCanvas_Access'(This'Unchecked_Access), keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (StartCanvas_Access'(This'Unchecked_Access), gameKey);
                UpGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, StartCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.REMOVE_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), StartCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.REMOVE_KEY_EVENT, e);
                end;
        end;
   end removeGameKeyEvent;

   procedure pause (This : in out StartCanvas) is
   begin
        StartCanvas'Class (This).close;
        StartCanvas'Class (This).setPaused (True);
   end pause;

   procedure unPause (This : in out StartCanvas) is
   begin
        StartCanvas'Class (This).open;
        StartCanvas'Class (This).setPaused (False);
   end unPause;

   function isPausable (This : in out StartCanvas) return Boolean is
   begin
        if (CurrentDisplayableFactory_Package.getInstance.getUsedRunnable) = (NullWaitGameRunnable_Package.getInstance) then
            return True;
        else
            return False;
        end if;
   end isPausable;

   function isGameOver (This : in out StartCanvas) return Boolean is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.NOT_IMPLEMENTED).append (To_Unbounded_String (" since not a game")).toString, StartCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("isGameOver"));
        return False;
   end isGameOver;

   --  throws Exception
   procedure setLoadStateHashtable (This : in out StartCanvas; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to continue a demo lol - only continue a game canvas not the demo"), StartCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setLoadStateHashtable"));
   end setLoadStateHashtable;

   --  throws Exception
   function getLoadStateHashtable (This : in out StartCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to continue a demo lol - only continue a game canvas not the demo"), StartCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("getLoadStateHashtable"));
        return ABHashtable_Access (This.stdUtil.NULL_TABLE);
   end getLoadStateHashtable;

   --  throws Exception
   function getCurrentStateHashtable (This : in out StartCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to save the AI lol"), StartCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("getCurrentStateHashtable"));
        return ABHashtable_Access (This.stdUtil.NULL_TABLE);
   end getCurrentStateHashtable;

   procedure setHighScoreSubmitted (This : in out StartCanvas; isNotUsed : Boolean) is
   begin
        null;
   end setHighScoreSubmitted;

   procedure paint (This : in out StartCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintableInterface.paint (graphics);
        This.paintedSpecialAnimationInterface.paintXY (graphics, 0, 0);
        This.highScoresPaintable.paint (graphics);
        StartCanvas'Class (This).getBasicGameDemoPaintable.paint (graphics);
        This.overlayPaintable.paint (graphics);
        This.progressPaintable.paint (graphics);
   end paint;

   procedure paintThreed (This : in out StartCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintableInterface.paintThreed (graphics);
        This.paintedSpecialAnimationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

   procedure processGameOver (This : in out StartCanvas) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Not Implemented since not a game"), StartCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setGameOver"));
   end processGameOver;

   procedure demoStateChange (This : in out StartCanvas) is
      newState : Integer;
      highScores : HighScores_Access;
   begin
        newState := (This.state) + (1);
        if (newState) > (2) then
            newState := 0;
        elsif (newState) = (2) then
            if not (This.highScoresHelper.isAnyHighScores) then
                newState := 0;
            else
                highScores := This.highScoresHelper.getNextHighScores;
                if (highScores) = (NullHighScoresSingletonFactory_Package.getInstance) then
                    newState := 0;
                else
                    StartCanvas'Class (This).getRealHighScoresPaintable.setHighScores (highScores);
                end if;
            end if;
        end if;
        StartCanvas'Class (This).setState (newState);
        StartCanvas'Class (This).updateDemoState;
   end demoStateChange;

   procedure updateDemoState (This : in out StartCanvas) is
      gameAdState : GameAdState_Access;
   begin
        PreLogUtil_Package.put (SmallIntegerSingletonFactory_Package.getInstance.createInstance (This.state).toString, StartCanvas_Access'(This'Unchecked_Access), This.SET_STATE);
        StartCanvas'Class (This).getBasicGameDemoPaintable.setState (This.state);
        if (This.state) = (0) then
            This.highScoresPaintable := NullPaintable_Package.getInstance;
            This.paintedSpecialAnimationInterface := StartCanvas'Class (This).getSpecialAnimationInterface;
            StartCanvas'Class (This).getSpecialAnimationInterface.reset;
        elsif (This.state) = (1) then
            This.paintedSpecialAnimationInterface := SpecialAnimation_Package.getInstance;
        elsif (This.state) = (2) then
            This.highScoresPaintable := StartCanvas'Class (This).getRealHighScoresPaintable;
        end if;
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.processPageAdState;
   end updateDemoState;

   --  throws Exception
   function getNextRandom (This : in out StartCanvas) return Integer is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return 0;
   end getNextRandom;

   --  throws Exception
   function createGameLayerManager (This : in out StartCanvas; randomValue : Integer) return AllBinaryGameLayerManager_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end createGameLayerManager;

   --  throws Exception
   function createRunnable (This : in out StartCanvas; randomLevel : Integer) return GameCanvasRunnableInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end createRunnable;

   --  throws Exception
   procedure createCanvas (This : in out StartCanvas) is
      randomLevel : Integer;
   begin
        This.highScoresPaintable := NullPaintable_Package.getInstance;
        randomLevel := StartCanvas'Class (This).getNextRandom;
   end createCanvas;

   --  throws Exception
   procedure start (This : in out StartCanvas) is
   begin
        null;
   end start;

   procedure preDemoProcess (This : in out StartCanvas) is
   begin
        This.overlayPaintable.update;
   end preDemoProcess;

   --  throws Exception
   procedure process (This : in out StartCanvas) is
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
      demoGameMidlet : DemoGameMidlet_Access;
   begin
        StartCanvas'Class (This).getMenuInputProcessor.processInputList;
        StartCanvas'Class (This).preDemoProcess;
        if (This.state) = (0) then
            indexedAnimationBehavior := IndexedAnimationBehavior_Access (StartCanvas'Class (This).getSpecialAnimationInterface.getAnimationBehavior);
            if (indexedAnimationBehavior.loopIndex) < (1) then
                This.timeDelayHelper.setStartTimeTNT;
            end if;
            demoGameMidlet := DemoGameMidlet_Access (StartCanvas'Class (This).getCustomCommandListener);
        end if;
   end process;

   --  throws Exception
   procedure startDemoGame (This : in out StartCanvas) is
   begin
        null;
   end startDemoGame;

   --  throws Exception
   procedure processGame (This : in out StartCanvas) is
   begin
        This.gameRunnable.run;
        This.specialAnimationInterface.nextFrame;
        StartCanvas'Class (This).process;
   end processGame;

   procedure run (This : in out StartCanvas) is
      progressCanvas : ProgressCanvas_Access;
   begin
        This.logUtil.putF (This.commonStrings.START_RUNNABLE, StartCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        begin
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Demo Thread"));
            StartCanvas'Class (This).setCurrentThread;
            StartCanvas'Class (This).setRunning (True);
            if This.features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
                progressCanvas.end_Id;
            else
                progressCanvas.addNormalPortion (50, To_Unbounded_String ("Demo Thread Running"));
            end if;
            This.fullScreenUtil.initOnRun (StartCanvas_Access'(This'Unchecked_Access), StartCanvas'Class (This).getCustomCommandListener);
            StartCanvas'Class (This).initMenu;
            StartCanvas'Class (This).initPostPaint;
            StartCanvas'Class (This).updateDemoState;
            if This.features.isDefault (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
                OpenGLThreadUtil_Package.getInstance.onResume;
            end if;
            if (This.features.isDefault (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or else (J2MEUtil_Package.isHTML) then
                null;
            else
                while StartCanvas'Class (This).isRunning loop
                    This.loopTimeHelper.setStartTimeTNT;
                    StartCanvas'Class (This).processGame;
                    StartCanvas'Class (This).processLoopSleep;
                end loop;
                StartCanvas'Class (This).end_Id;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, StartCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
        This.logUtil.putF (This.commonStrings.END_RUNNABLE, StartCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end run;

   procedure setRunning (This : in out StartCanvas; running : Boolean) is
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        RunnableCanvas_Package.RunnableCanvas (This).setRunning (running);
        begin
            if (((This.features.isDefault (This.openGLFeatureFactory.OPENGL)) or else (J2MEUtil_Package.isHTML))) and then (not (running)) then
                currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
                currentDisplayableFactory.clearRunnable;
                StartCanvas'Class (This).end_Id;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, StartCanvas_Access'(This'Unchecked_Access), This.SET_RUNNING, e);
                end;
        end;
   end setRunning;

   --  throws Exception
   procedure end_Id (This : in out StartCanvas) is
      progressCanvas : ProgressCanvas_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        This.baseGameStatistics.add (StringMaker_Package.Create.append (StartCanvas_Package.BOT_GAME_STATS).append (This.baseGameStatistics.toString).append (CommonSeps_Package.getInstance.NEW_LINE).toString);
        This.baseGameStatistics.init;
        if This.features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
            progressCanvas.start;
        end if;
        This.logUtil.putF (To_Unbounded_String ("Demo End"), StartCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        StartCanvas'Class (This).close;
        DisplayChangeEventHandler_Package.getInstance.removeListener (StartCanvas_Access'(This'Unchecked_Access));
   end end_Id;

   procedure setGameState (This : in out StartCanvas; gameState_Param : access GameState_Package.GameState'Class) is
      gameState : constant GameState_Access := GameState_Access (gameState_Param);
   begin
        null;
   end setGameState;

   function getGameState (This : in out StartCanvas) return GameState_Access is
   begin
        return GameState_Access (This.gameStateFactory.PLAYING_GAME_STATE);
   end getGameState;

   function getState (This : in out StartCanvas) return Integer is
   begin
        return This.state;
   end getState;

   procedure setState (This : in out StartCanvas; state : Integer) is
   begin
        This.state := state;
   end setState;

   function isHighScoreSubmitted (This : in out StartCanvas) return Boolean is
   begin
        This.logUtil.putF (To_Unbounded_String ("Wow the AI got a high score!"), StartCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("isHighScoreSubmitted"));
        return False;
   end isHighScoreSubmitted;

   function getRealHighScoresPaintable (This : in out StartCanvas) return HighScoresPaintable_Access is
   begin
        return This.realHighScoresPaintable;
   end getRealHighScoresPaintable;

   procedure setSpecialAnimationInterface (This : in out StartCanvas; specialAnimationInterface_Param : access SpecialAnimation_Package.SpecialAnimation'Class) is
      specialAnimationInterface : constant SpecialAnimation_Access := SpecialAnimation_Access (specialAnimationInterface_Param);
   begin
        specialAnimationInterface.setFrame (0);
        This.specialAnimationInterface := specialAnimationInterface;
   end setSpecialAnimationInterface;

   function getSpecialAnimationInterface (This : in out StartCanvas) return SpecialAnimation_Access is
   begin
        return This.specialAnimationInterface;
   end getSpecialAnimationInterface;

   procedure setPaintableInterface (This : in out StartCanvas; paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class) is
      paintableInterface : constant PaintableInterface_Access := PaintableInterface_Access (paintableInterface_Param);
   begin
        This.paintableInterface := paintableInterface;
   end setPaintableInterface;

   function getPaintableInterface (This : in out StartCanvas) return PaintableInterface_Access is
   begin
        return This.paintableInterface;
   end getPaintableInterface;

   procedure setDefaultPaintableInterface (This : in out StartCanvas; defaultPaintableInterface_Param : access Paintable_Package.Paintable'Class) is
      defaultPaintableInterface : constant Paintable_Access := Paintable_Access (defaultPaintableInterface_Param);
   begin
        This.defaultPaintableInterface := defaultPaintableInterface;
   end setDefaultPaintableInterface;

   function getDefaultPaintableInterface (This : in out StartCanvas) return Paintable_Access is
   begin
        return This.defaultPaintableInterface;
   end getDefaultPaintableInterface;

   function getHighScoresFactoryInterface (This : in out StartCanvas) return HighScoresFactoryInterface_Access is
   begin
        return This.highScoresFactoryInterface;
   end getHighScoresFactoryInterface;

   procedure setMenuInputProcessor (This : in out StartCanvas; menuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class) is
      menuInputProcessor : constant BasicMenuInputProcessor_Access := BasicMenuInputProcessor_Access (menuInputProcessor_Param);
   begin
        This.menuInputProcessor := menuInputProcessor;
   end setMenuInputProcessor;

   function getMenuInputProcessor (This : in out StartCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.menuInputProcessor;
   end getMenuInputProcessor;

   function getMenuForm (This : in out StartCanvas) return ScrollSelectionForm_Access is
   begin
        return This.menuForm;
   end getMenuForm;

   procedure setMenuForm (This : in out StartCanvas; menuForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      menuForm : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (menuForm_Param);
   begin
        This.menuForm := menuForm;
   end setMenuForm;

   function isInitialized (This : in out StartCanvas) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   function getOverlayPaintable (This : in out StartCanvas) return Paintable_Access is
   begin
        return Paintable_Access (This.overlayPaintable);
   end getOverlayPaintable;

   procedure setBasicGameDemoPaintable (This : in out StartCanvas; basicGameDemoPaintable_Param : access StatePaintable_Package.StatePaintable'Class) is
      basicGameDemoPaintable : constant StatePaintable_Access := StatePaintable_Access (basicGameDemoPaintable_Param);
   begin
        This.basicGameDemoPaintable := basicGameDemoPaintable;
   end setBasicGameDemoPaintable;

   function getBasicGameDemoPaintable (This : in out StartCanvas) return StatePaintable_Access is
   begin
        return This.basicGameDemoPaintable;
   end getBasicGameDemoPaintable;

   procedure setTempWait (This : in out StartCanvas; tempWait : Integer) is
   begin
        This.tempWait := tempWait;
   end setTempWait;

   function getTempWait (This : in out StartCanvas) return Integer is
   begin
        return This.tempWait;
   end getTempWait;

   function isSingleThread (This : in out StartCanvas) return Boolean is
   begin
        return (OpenGLFeatureUtil_Package.getInstance.isAnyThreed) or else (SWTUtil_Package.isSWT);
   end isSingleThread;

   function isRunningInAnotherThread (This : in out StartCanvas) return Boolean is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if features.isDefault (openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
            return True;
        else
            return StartCanvas'Class (This).isRunning;
        end if;
   end isRunningInAnotherThread;

   function getGameInitializationInterfaceFactoryInterface (This : in out StartCanvas) return BasicBuildGameInitializerFactory_Access is
   begin
        return This.gameInitializationInterfaceFactoryInterface;
   end getGameInitializationInterfaceFactoryInterface;

   procedure createGameLayerManager (This : in out StartCanvas; randomValue : Integer) is
      Java_Result : constant AllBinaryGameLayerManager_Access := StartCanvas'Class (This).createGameLayerManager (randomValue => randomValue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createGameLayerManager;

   procedure createRunnable (This : in out StartCanvas; randomLevel : Integer) is
      Java_Result : constant GameCanvasRunnableInterface_Access := StartCanvas'Class (This).createRunnable (randomLevel => randomLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRunnable;

begin
   null;
   
   BOT_GAME_STATS := To_Unbounded_String ("Bot Game Statistics: ");

end org.allbinary.game.displayable.canvas.StartCanvas_Package;



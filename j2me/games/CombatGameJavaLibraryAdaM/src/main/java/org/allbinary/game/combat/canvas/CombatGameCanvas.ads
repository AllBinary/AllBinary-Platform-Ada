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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package; use org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package; use org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.drop.DropLayerProcessor_Package; use org.allbinary.game.layer.drop.DropLayerProcessor_Package;
with org.allbinary.game.layer.identification.GroupLayerManagerListener_Package; use org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.layer.BasicLayerProcessor_Package; use org.allbinary.layer.BasicLayerProcessor_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.game.combat.canvas.CombatGameCanvas_Package is

   package DestroyedLayerProcessor_Package renames Standard.org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
   package DestroyEventCircularStaticPool_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
   package DestroyedEventHandler_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package BasicBuildGameInitializerFactory_Package renames Standard.org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package DropLayerProcessor_Package renames Standard.org.allbinary.game.layer.drop.DropLayerProcessor_Package;
   package GroupLayerManagerListener_Package renames Standard.org.allbinary.game.layer.identification.GroupLayerManagerListener_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package BasicLayerProcessor_Package renames Standard.org.allbinary.layer.BasicLayerProcessor_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type CombatGameCanvas is tagged;
   type CombatGameCanvas_Access is access all CombatGameCanvas'Class;
   type CombatGameCanvas_Access_Array is array (Natural range <>) of CombatGameCanvas_Access;
   type CombatGameCanvas_Access_Array_Access is access all CombatGameCanvas_Access_Array;

   type CombatGameCanvas is new AllBinaryGameCanvas with null record;
   basicLayerProcessor : BasicLayerProcessor_Access_Array_Access;

   procedure Initialize (This : in out CombatGameCanvas'Class; cmdListener_Param : access CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory'Class; buffered : Boolean);
   function Create (cmdListener_Param : access CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory'Class; buffered : Boolean) return CombatGameCanvas_Access;
   procedure CombatGameCanvas_init (This : in out CombatGameCanvas);
   procedure initApp (This : in out CombatGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface'Class);
   procedure initConfigurablePortion (This : in out CombatGameCanvas; portion : Integer);
   procedure processPlayingGame (This : in out CombatGameCanvas);
   procedure cleanupGame (This : in out CombatGameCanvas);
   procedure cleanupManager (This : in out CombatGameCanvas);

end org.allbinary.game.combat.canvas.CombatGameCanvas_Package;



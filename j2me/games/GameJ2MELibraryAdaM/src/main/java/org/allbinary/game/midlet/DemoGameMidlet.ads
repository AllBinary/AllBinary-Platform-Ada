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
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package; use org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.midlet.GameMidlet_Package; use org.allbinary.game.midlet.GameMidlet_Package;
with org.allbinary.game.midlet.DemoRunnable_Package; use org.allbinary.game.midlet.DemoRunnable_Package;
with org.allbinary.game.midlet.CreateGameRunnable_Package; use org.allbinary.game.midlet.CreateGameRunnable_Package;

package org.allbinary.game.midlet.DemoGameMidlet_Package is

   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
   package PrimaryThreadPool_Package renames Standard.org.allbinary.thread.PrimaryThreadPool_Package;
   package NullGameCanvasRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type DemoGameMidlet is tagged;
   type DemoGameMidlet_Access is access all DemoGameMidlet'Class;
   type DemoGameMidlet_Access_Array is array (Natural range <>) of DemoGameMidlet_Access;
   type DemoGameMidlet_Access_Array_Access is access all DemoGameMidlet_Access_Array;

   type DemoGameMidlet is new GameMidlet with null record;

   procedure Initialize (This : in out DemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory'Class) return DemoGameMidlet_Access;
   function isContinue (This : in out DemoGameMidlet) return Boolean;
   function getHighestLevel (This : in out DemoGameMidlet) return Integer;
   function createDemoGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access;
   function createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class) return GameCanvasRunnableInterface_Access;
   procedure createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class);
   function createGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access;
   procedure demoSetup (This : in out DemoGameMidlet);
   procedure postDemoSetup (This : in out DemoGameMidlet);
   procedure setDemo (This : in out DemoGameMidlet);
   procedure createGame (This : in out DemoGameMidlet);
   function isReady (This : in out DemoGameMidlet) return Boolean;

end org.allbinary.game.midlet.DemoGameMidlet_Package;



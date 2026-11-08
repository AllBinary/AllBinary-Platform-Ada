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

limited with org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package;
package org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References is
   type PreGameSelectionGameInputProcessor_Access is access all org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package.PreGameSelectionGameInputProcessor'Class;
   type PreGameSelectionGameInputProcessor_Access_Array is array (Natural range <>) of PreGameSelectionGameInputProcessor_Access;
   type PreGameSelectionGameInputProcessor_Access_Array_Access is access all PreGameSelectionGameInputProcessor_Access_Array;
   type PreGameSelectionGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of PreGameSelectionGameInputProcessor_Access_Array_Access;
   type PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access is access all PreGameSelectionGameInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References;

with org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
limited with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
limited with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;

package org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package PreGameSelectorPaintable_Package renames Standard.org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   use type PreGameSelectorPaintable_Access;
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   use type PreGameSelectorPaintable_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   use type PreGameSelectorPaintable_Access_Array_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   use type GameState_Access;
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   use type GameState_Access_Array;
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   use type GameState_Access_Array_Access;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   use type GameState_Access_Array_Access_Array;
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   use type GameState_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PreGameSelectionGameInputProcessor_Access is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access;
   function "=" (Left, Right : PreGameSelectionGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References."=";
   subtype PreGameSelectionGameInputProcessor_Access_Array is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array;
   function "=" (Left, Right : PreGameSelectionGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References."=";
   subtype PreGameSelectionGameInputProcessor_Access_Array_Access is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectionGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References."=";
   subtype PreGameSelectionGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameSelectionGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References."=";
   subtype PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References."=";

   type PreGameSelectionGameInputProcessor is new Processor and GameInputProcessorInterface and PlayerGameInputCompositeInterface with record
      logUtil : LogUtil_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      preGameSelectorPaintable : PreGameSelectorPaintable_Access;
      inputTimeHelper : TimeDelayHelper_Access;
      nextGameState : GameState_Access;
      playerGameInput : PlayerGameInput_Access;
      lockedIndex : Integer;
      abRunnable : ABRunnable_Access;
   end record;

   procedure Initialize (This : in out PreGameSelectionGameInputProcessor'Class; gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; preGameSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; nextGameState_Param : access GameState_Package.GameState'Class; lockedIndex : Integer);
   function Create (gameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; preGameSelectorPaintable_Param : access PreGameSelectorPaintable_Package.PreGameSelectorPaintable'Class; nextGameState_Param : access GameState_Package.GameState'Class; lockedIndex : Integer) return PreGameSelectionGameInputProcessor_Access;
   procedure process (This : in out PreGameSelectionGameInputProcessor);
   procedure onInput (This : in out PreGameSelectionGameInputProcessor; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getPreGameSelectorPaintable (This : in out PreGameSelectionGameInputProcessor) return PreGameSelectorPaintable_Access;
   procedure processInput (This : in out PreGameSelectionGameInputProcessor; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure initInputProcessors (This : in out PreGameSelectionGameInputProcessor);
   function getName (This : in out PreGameSelectionGameInputProcessor) return Unbounded_String;
   function getPlayerGameInput (This : in out PreGameSelectionGameInputProcessor) return PlayerGameInput_Access;

end org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package;

limited with org.allbinary.game.input.PreGameSelectionRunnable_Package;
package org.allbinary.game.input.PreGameSelectionRunnable_Package_References is
   type PreGameSelectionRunnable_Access is access all org.allbinary.game.input.PreGameSelectionRunnable_Package.PreGameSelectionRunnable'Class;
   type PreGameSelectionRunnable_Access_Array is array (Natural range <>) of PreGameSelectionRunnable_Access;
   type PreGameSelectionRunnable_Access_Array_Access is access all PreGameSelectionRunnable_Access_Array;
   type PreGameSelectionRunnable_Access_Array_Access_Array is array (Natural range <>) of PreGameSelectionRunnable_Access_Array_Access;
   type PreGameSelectionRunnable_Access_Array_Access_Array_Access is access all PreGameSelectionRunnable_Access_Array_Access_Array;
end org.allbinary.game.input.PreGameSelectionRunnable_Package_References;

with org.allbinary.game.input.PreGameSelectionRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
limited with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
with org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References;
limited with org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameState_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.input.GameInputProcessorInterface_Package; use org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
limited with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package_References;
limited with org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package;
with org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References;

package org.allbinary.game.input.PreGameSelectionRunnable_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package PreGameSelectorPaintable_Package renames Standard.org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access;
   use type PreGameSelectorPaintable_Access;
   subtype PreGameSelectorPaintable_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array;
   use type PreGameSelectorPaintable_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array;
   use type PreGameSelectorPaintable_Access_Array_Access_Array;
   subtype PreGameSelectorPaintable_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package_References.PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   use type PreGameSelectorPaintable_Access_Array_Access_Array_Access;
   subtype GameState_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access;
   use type GameState_Access;
   subtype GameState_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array;
   use type GameState_Access_Array;
   subtype GameState_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access;
   use type GameState_Access_Array_Access;
   subtype GameState_Access_Array_Access_Array is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array;
   use type GameState_Access_Array_Access_Array;
   subtype GameState_Access_Array_Access_Array_Access is org.allbinary.game.state.GameState_Package_References.GameState_Access_Array_Access_Array_Access;
   use type GameState_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   use type PlayerGameInput_Access;
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   use type PlayerGameInput_Access_Array;
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access;
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   use type PlayerGameInput_Access_Array_Access_Array;
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   use type PlayerGameInput_Access_Array_Access_Array_Access;
   subtype PreGameSelectionGameInputProcessor_Access is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access;
   use type PreGameSelectionGameInputProcessor_Access;
   subtype PreGameSelectionGameInputProcessor_Access_Array is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array;
   use type PreGameSelectionGameInputProcessor_Access_Array;
   subtype PreGameSelectionGameInputProcessor_Access_Array_Access is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array_Access;
   use type PreGameSelectionGameInputProcessor_Access_Array_Access;
   subtype PreGameSelectionGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array_Access_Array;
   use type PreGameSelectionGameInputProcessor_Access_Array_Access_Array;
   subtype PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.PreGameSelectionGameInputProcessor_Package_References.PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access;
   use type PreGameSelectionGameInputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PreGameSelectionRunnable_Access is org.allbinary.game.input.PreGameSelectionRunnable_Package_References.PreGameSelectionRunnable_Access;
   function "=" (Left, Right : PreGameSelectionRunnable_Access) return Boolean renames org.allbinary.game.input.PreGameSelectionRunnable_Package_References."=";
   subtype PreGameSelectionRunnable_Access_Array is org.allbinary.game.input.PreGameSelectionRunnable_Package_References.PreGameSelectionRunnable_Access_Array;
   function "=" (Left, Right : PreGameSelectionRunnable_Access_Array) return Boolean renames org.allbinary.game.input.PreGameSelectionRunnable_Package_References."=";
   subtype PreGameSelectionRunnable_Access_Array_Access is org.allbinary.game.input.PreGameSelectionRunnable_Package_References.PreGameSelectionRunnable_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectionRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.input.PreGameSelectionRunnable_Package_References."=";
   subtype PreGameSelectionRunnable_Access_Array_Access_Array is org.allbinary.game.input.PreGameSelectionRunnable_Package_References.PreGameSelectionRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : PreGameSelectionRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PreGameSelectionRunnable_Package_References."=";
   subtype PreGameSelectionRunnable_Access_Array_Access_Array_Access is org.allbinary.game.input.PreGameSelectionRunnable_Package_References.PreGameSelectionRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PreGameSelectionRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PreGameSelectionRunnable_Package_References."=";

   type PreGameSelectionRunnable is new ABRunnable with record
      inputProcessor : PreGameSelectionGameInputProcessor_Access;
   end record;

   procedure Initialize (This : in out PreGameSelectionRunnable'Class; inputProcessor_Param : access PreGameSelectionGameInputProcessor_Package.PreGameSelectionGameInputProcessor'Class);
   function Create (inputProcessor_Param : access PreGameSelectionGameInputProcessor_Package.PreGameSelectionGameInputProcessor'Class) return PreGameSelectionRunnable_Access;
   procedure run (This : in out PreGameSelectionRunnable);

end org.allbinary.game.input.PreGameSelectionRunnable_Package;



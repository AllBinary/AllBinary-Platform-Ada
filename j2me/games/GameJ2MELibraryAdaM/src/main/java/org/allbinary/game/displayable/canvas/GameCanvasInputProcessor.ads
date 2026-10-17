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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.InputProcessor_Package; use org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownKeyEventHandler_Package; use org.allbinary.game.input.event.DownKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;

package org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package InputProcessor_Package renames Standard.org.allbinary.game.input.InputProcessor_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package DownKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownKeyEventHandler_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type GameCanvasInputProcessor is tagged;
   type GameCanvasInputProcessor_Access is access all GameCanvasInputProcessor'Class;
   type GameCanvasInputProcessor_Access_Array is array (Natural range <>) of GameCanvasInputProcessor_Access;
   type GameCanvasInputProcessor_Access_Array_Access is access all GameCanvasInputProcessor_Access_Array;

   type GameCanvasInputProcessor is new InputProcessor with record
      logUtil : LogUtil_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      downKeyEventHandler : DownKeyEventHandler_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      NONE : GameKey_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
   end record;

   procedure Initialize (This : in out GameCanvasInputProcessor'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class);
   function Create (allBinaryGameCanvas_Param : access AllBinaryGameCanvas'Class) return GameCanvasInputProcessor_Access;
   procedure keyPressedByDevice (This : in out GameCanvasInputProcessor; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out GameCanvasInputProcessor; canvas_Param : access Canvas'Class; keyCode : Integer; deviceId : Integer);
   procedure removeGameKeyEvent (This : in out GameCanvasInputProcessor; canvas_Param : access Canvas'Class; keyCode : Integer; deviceId : Integer; repeated : Boolean);

end org.allbinary.game.displayable.canvas.GameCanvasInputProcessor_Package;



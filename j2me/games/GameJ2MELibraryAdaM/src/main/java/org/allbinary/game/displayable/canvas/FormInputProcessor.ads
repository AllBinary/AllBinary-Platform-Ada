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
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.InputProcessor_Package; use org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.PlatformKeyFactory_Package; use org.allbinary.game.input.PlatformKeyFactory_Package;
with org.allbinary.game.input.event.DownKeyEventHandler_Package; use org.allbinary.game.input.event.DownKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.displayable.canvas.FormInputProcessor_Package is

   package GameKey_Package renames org.allbinary.game.input.GameKey_Package;
   package GameKeyEventSourceInterface_Package renames org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyFactory_Package renames org.allbinary.game.input.GameKeyFactory_Package;
   package Input_Package renames org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames org.allbinary.game.input.InputFactory_Package;
   package InputProcessor_Package renames org.allbinary.game.input.InputProcessor_Package;
   package PlatformKeyFactory_Package renames org.allbinary.game.input.PlatformKeyFactory_Package;
   package DownKeyEventHandler_Package renames org.allbinary.game.input.event.DownKeyEventHandler_Package;
   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package UpGameKeyEventHandler_Package renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type FormInputProcessor is tagged;
   type FormInputProcessor_Access is access all FormInputProcessor'Class;
   type FormInputProcessor_Access_Array is array (Natural range <>) of FormInputProcessor_Access;
   type FormInputProcessor_Access_Array_Access is access all FormInputProcessor_Access_Array;

   type FormInputProcessor is new InputProcessor with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      downKeyEventHandler : DownKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      inputFactory : InputFactory_Access;
      platformKeyFactory : PlatformKeyFactory_Access;
      allBinaryGameCanvas : AllBinaryGameCanvas_Access;
   end record;

   procedure Initialize (This : in out FormInputProcessor'Class; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   function Create (allBinaryGameCanvas : AllBinaryGameCanvas_Access) return FormInputProcessor_Access;
   procedure keyPressedByDevice (This : in out FormInputProcessor; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out FormInputProcessor; canvas : Canvas_Access; keyCode : Integer; deviceId : Integer);

end org.allbinary.game.displayable.canvas.FormInputProcessor_Package;



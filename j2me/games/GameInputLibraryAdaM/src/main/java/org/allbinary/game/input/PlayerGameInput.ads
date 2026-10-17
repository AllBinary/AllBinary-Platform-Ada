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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;

package org.allbinary.game.input.PlayerGameInput_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventListenerInterface_Package renames Standard.org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PlayerGameInput is tagged;
   type PlayerGameInput_Access is access all PlayerGameInput'Class;
   type PlayerGameInput_Access_Array is array (Natural range <>) of PlayerGameInput_Access;
   type PlayerGameInput_Access_Array_Access is access all PlayerGameInput_Access_Array;

   type PlayerGameInput is new GameInput and GameKeyEventListenerInterface with record
      gameInputStrings : GameInputStrings_Access;
      playerInputId : Integer;
   end record;

   procedure Initialize (This : in out PlayerGameInput'Class; gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access; playerInputId : Integer);
   function Create (gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access; playerInputId : Integer) return PlayerGameInput_Access;
   procedure onPressGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure onDownGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure onDownKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure onDownKey (This : in out PlayerGameInput; gameKeyEvent : Integer);
   procedure onUpGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access);
   procedure onUpKeyEvent (This : in out PlayerGameInput; gameKeyEvent : Integer);
   procedure onEvent (This : in out PlayerGameInput; eventObject : AllBinaryEventObject_Access);
   function getPlayerInputId (This : in out PlayerGameInput) return Integer;

end org.allbinary.game.input.PlayerGameInput_Package;



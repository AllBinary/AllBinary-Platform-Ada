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
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.input.motion.button.TouchButtonInput_Package is

   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type TouchButtonInput is tagged;
   type TouchButtonInput_Access is access all TouchButtonInput'Class;
   type TouchButtonInput_Access_Array is array (Natural range <>) of TouchButtonInput_Access;
   type TouchButtonInput_Access_Array_Access is access all TouchButtonInput_Access_Array;
   type TouchButtonInput_Access_Array_Access_Array is array (Natural range <>) of TouchButtonInput_Access_Array_Access;
   type TouchButtonInput_Access_Array_Access_Array_Access is access all TouchButtonInput_Access_Array_Access_Array;

   type TouchButtonInput is new Input and GameKeyEventSourceInterface with record
      logUtil : LogUtil_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      TOUCH_BUTTON_SOURCE_ID : Integer;
      gameKeyEvent : GameKeyEvent_Access;
   end record;

   procedure Initialize (This : in out TouchButtonInput'Class; id : Integer; name : Unbounded_String);
   function Create (id : Integer; name : Unbounded_String) return TouchButtonInput_Access;
   procedure update (This : in out TouchButtonInput; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   function getSourceId (This : in out TouchButtonInput) return Integer;
   function getGameKeyEvent (This : in out TouchButtonInput) return GameKeyEvent_Access;

end org.allbinary.input.motion.button.TouchButtonInput_Package;



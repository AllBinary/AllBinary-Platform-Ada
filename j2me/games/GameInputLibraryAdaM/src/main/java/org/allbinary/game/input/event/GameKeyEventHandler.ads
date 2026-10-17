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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.event.PressGameKeyEventHandler_Package; use org.allbinary.game.input.event.PressGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;

package org.allbinary.game.input.event.GameKeyEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameKeyEventHandler is tagged;
   type GameKeyEventHandler_Access is access all GameKeyEventHandler'Class;
   type GameKeyEventHandler_Access_Array is array (Natural range <>) of GameKeyEventHandler_Access;
   type GameKeyEventHandler_Access_Array_Access is access all GameKeyEventHandler_Access_Array;

   type GameKeyEventHandler is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      pressGameKeyEventHandler : PressGameKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
   end record;
   instance : GameKeyEventHandler_Access;

   procedure Initialize (This : in out GameKeyEventHandler'Class);
   function Create return GameKeyEventHandler_Access;
   function getInstance return GameKeyEventHandler_Access;
   procedure removeAllListeners (This : in out GameKeyEventHandler);
   procedure addListenerForPlayer (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class; playerInputId : Integer);
   procedure addListener (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out GameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.GameKeyEventHandler_Package;



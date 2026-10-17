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
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package; use org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.game.input.event.DownKeyEventHandlerBase_Package; use org.allbinary.game.input.event.DownKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.DownKeyEventHandler_Package is

   package LocalPlayerInputIdFactory_Package renames Standard.org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type DownKeyEventHandler is tagged;
   type DownKeyEventHandler_Access is access all DownKeyEventHandler'Class;
   type DownKeyEventHandler_Access_Array is array (Natural range <>) of DownKeyEventHandler_Access;
   type DownKeyEventHandler_Access_Array_Access is access all DownKeyEventHandler_Access_Array;

   type DownKeyEventHandler is new DownKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : DownKeyEventHandler_Access;
   instanceArray : DownKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out DownKeyEventHandler'Class);
   function Create return DownKeyEventHandler_Access;
   function getInstance return DownKeyEventHandler_Access;
   procedure getInstance;
   function getInstanceForDevice (This : in out DownKeyEventHandler; deviceId : Integer) return DownKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out DownKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer) return DownKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out DownKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out DownKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out DownKeyEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure removeListener (This : in out DownKeyEventHandler; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.input.event.DownKeyEventHandler_Package;



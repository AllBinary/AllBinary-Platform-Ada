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
with org.allbinary.game.input.event.UpKeyEventHandlerBase_Package; use org.allbinary.game.input.event.UpKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.UpKeyEventHandler_Package is

   package LocalPlayerInputIdFactory_Package renames org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;

   type UpKeyEventHandler is tagged;
   type UpKeyEventHandler_Access is access all UpKeyEventHandler'Class;
   type UpKeyEventHandler_Access_Array is array (Natural range <>) of UpKeyEventHandler_Access;
   type UpKeyEventHandler_Access_Array_Access is access all UpKeyEventHandler_Access_Array;

   type UpKeyEventHandler is new UpKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : UpKeyEventHandler_Access;
   instanceArray : UpKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out UpKeyEventHandler'Class);
   function Create return UpKeyEventHandler_Access;
   function getInstance return UpKeyEventHandler_Access;
   procedure getInstance;
   function getInstanceForDevice (This : in out UpKeyEventHandler; deviceId : Integer) return UpKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out UpKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out UpKeyEventHandler; playerInputId : Integer) return UpKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out UpKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out UpKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out UpKeyEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure removeListener (This : in out UpKeyEventHandler; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.input.event.UpKeyEventHandler_Package;



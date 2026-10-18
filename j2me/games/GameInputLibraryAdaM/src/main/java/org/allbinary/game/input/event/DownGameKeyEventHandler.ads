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
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package; use org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.DownGameKeyEventHandler_Package is

   package LocalPlayerInputIdFactory_Package renames Standard.org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type DownGameKeyEventHandler is tagged;
   type DownGameKeyEventHandler_Access is access all DownGameKeyEventHandler'Class;
   type DownGameKeyEventHandler_Access_Array is array (Natural range <>) of DownGameKeyEventHandler_Access;
   type DownGameKeyEventHandler_Access_Array_Access is access all DownGameKeyEventHandler_Access_Array;
   type DownGameKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of DownGameKeyEventHandler_Access_Array_Access;
   type DownGameKeyEventHandler_Access_Array_Access_Array_Access is access all DownGameKeyEventHandler_Access_Array_Access_Array;

   type DownGameKeyEventHandler is new DownGameKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : DownGameKeyEventHandler_Access;
   instanceArray : DownGameKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out DownGameKeyEventHandler'Class);
   function Create return DownGameKeyEventHandler_Access;
   function getInstance return DownGameKeyEventHandler_Access;
   function getInstanceForDevice (This : in out DownGameKeyEventHandler; deviceId : Integer) return DownGameKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out DownGameKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out DownGameKeyEventHandler; playerInputId : Integer) return DownGameKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out DownGameKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out DownGameKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out DownGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out DownGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.DownGameKeyEventHandler_Package;



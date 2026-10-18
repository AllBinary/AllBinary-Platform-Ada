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
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package; use org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;

package org.allbinary.game.input.event.UpGameKeyEventHandler_Package is

   package LocalPlayerInputIdFactory_Package renames Standard.org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type UpGameKeyEventHandler is tagged;
   type UpGameKeyEventHandler_Access is access all UpGameKeyEventHandler'Class;
   type UpGameKeyEventHandler_Access_Array is array (Natural range <>) of UpGameKeyEventHandler_Access;
   type UpGameKeyEventHandler_Access_Array_Access is access all UpGameKeyEventHandler_Access_Array;
   type UpGameKeyEventHandler_Access_Array_Access_Array is array (Natural range <>) of UpGameKeyEventHandler_Access_Array_Access;
   type UpGameKeyEventHandler_Access_Array_Access_Array_Access is access all UpGameKeyEventHandler_Access_Array_Access_Array;

   type UpGameKeyEventHandler is new UpGameKeyEventHandlerBase with record
      playerInputIdFactory : LocalPlayerInputIdFactory_Access;
   end record;
   instance : UpGameKeyEventHandler_Access;
   instanceArray : UpGameKeyEventHandlerBase_Access_Array_Access;

   procedure Initialize (This : in out UpGameKeyEventHandler'Class);
   function Create return UpGameKeyEventHandler_Access;
   function getInstance return UpGameKeyEventHandler_Access;
   function getInstanceForDevice (This : in out UpGameKeyEventHandler; deviceId : Integer) return UpGameKeyEventHandlerBase_Access;
   procedure getInstanceForDevice (This : in out UpGameKeyEventHandler; deviceId : Integer);
   function getInstanceForPlayer (This : in out UpGameKeyEventHandler; playerInputId : Integer) return UpGameKeyEventHandlerBase_Access;
   procedure getInstanceForPlayer (This : in out UpGameKeyEventHandler; playerInputId : Integer);
   procedure removeAllListeners (This : in out UpGameKeyEventHandler);
   procedure removeListenerSingleThreaded (This : in out UpGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out UpGameKeyEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.input.event.UpGameKeyEventHandler_Package;



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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.NullEventListener_Package; use org.allbinary.logic.util.event.NullEventListener_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames org.allbinary.logic.util.event.EventListenerInterface_Package;
   package NullEventListener_Package renames org.allbinary.logic.util.event.NullEventListener_Package;
   package BasicEventHandler_Package renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type GameNotificationEventHandler is tagged;
   type GameNotificationEventHandler_Access is access all GameNotificationEventHandler'Class;
   type GameNotificationEventHandler_Access_Array is array (Natural range <>) of GameNotificationEventHandler_Access;
   type GameNotificationEventHandler_Access_Array_Access is access all GameNotificationEventHandler_Access_Array;

   type GameNotificationEventHandler is new BasicEventHandler with record
      enabled : Boolean;
   end record;
   instance : GameNotificationEventHandler_Access;

   procedure Initialize (This : in out GameNotificationEventHandler'Class);
   function Create return GameNotificationEventHandler_Access;
   procedure removeAllListeners (This : in out GameNotificationEventHandler);
   function getInstance return GameNotificationEventHandler_Access;
   procedure getInstance;
   procedure process (This : in out GameNotificationEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;



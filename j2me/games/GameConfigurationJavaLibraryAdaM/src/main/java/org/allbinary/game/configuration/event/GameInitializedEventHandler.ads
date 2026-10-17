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
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package; use org.allbinary.game.configuration.event.GameInitializedEvent_Package;

package org.allbinary.game.configuration.event.GameInitializedEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type GameInitializedEventHandler is tagged;
   type GameInitializedEventHandler_Access is access all GameInitializedEventHandler'Class;
   type GameInitializedEventHandler_Access_Array is array (Natural range <>) of GameInitializedEventHandler_Access;
   type GameInitializedEventHandler_Access_Array_Access is access all GameInitializedEventHandler_Access_Array;

   type GameInitializedEventHandler is new BasicEventHandler with null record;
   gameKeyEventHandler : GameInitializedEventHandler_Access;

   procedure Initialize (This : in out GameInitializedEventHandler'Class);
   function Create return GameInitializedEventHandler_Access;
   function getInstance return GameInitializedEventHandler_Access;
   procedure process (This : in out GameInitializedEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;



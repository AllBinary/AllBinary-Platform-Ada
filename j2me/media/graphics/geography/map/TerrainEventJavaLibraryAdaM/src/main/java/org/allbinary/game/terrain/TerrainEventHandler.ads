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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package; use org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventListenerInterface_Package; use org.allbinary.game.terrain.TerrainEventListenerInterface_Package;

package org.allbinary.game.terrain.TerrainEventHandler_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type TerrainEventHandler is tagged;
   type TerrainEventHandler_Access is access all TerrainEventHandler'Class;
   type TerrainEventHandler_Access_Array is array (Natural range <>) of TerrainEventHandler_Access;
   type TerrainEventHandler_Access_Array_Access is access all TerrainEventHandler_Access_Array;

   type TerrainEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   hashtable : ABHashtable_Access;

   procedure Initialize (This : in out TerrainEventHandler'Class);
   function Create return TerrainEventHandler_Access;
   procedure init;
   function getInstance (anyType : Java_Object_Access) return TerrainEventHandler_Access;
   procedure getInstance (anyType : Java_Object_Access);
   procedure addListener (This : in out TerrainEventHandler; terrainEventListener : TerrainEventListener_Access);
   procedure removeAllListeners (This : in out TerrainEventHandler);
   procedure removeListener (This : in out TerrainEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out TerrainEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure process (This : in out TerrainEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.game.terrain.TerrainEventHandler_Package;



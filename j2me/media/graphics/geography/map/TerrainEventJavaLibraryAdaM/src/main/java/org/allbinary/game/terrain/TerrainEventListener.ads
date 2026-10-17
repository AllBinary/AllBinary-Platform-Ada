--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.terrain.TerrainEventListenerInterface_Package; use org.allbinary.game.terrain.TerrainEventListenerInterface_Package;

package org.allbinary.game.terrain.TerrainEventListener_Package is

   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type TerrainEventListener is tagged;
   type TerrainEventListener_Access is access all TerrainEventListener'Class;
   type TerrainEventListener_Access_Array is array (Natural range <>) of TerrainEventListener_Access;
   type TerrainEventListener_Access_Array_Access is access all TerrainEventListener_Access_Array;

   type TerrainEventListener is new TerrainEventListenerInterface with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out TerrainEventListener'Class);
   function Create return TerrainEventListener_Access;
   procedure onEvent (This : in out TerrainEventListener; eventObject : AllBinaryEventObject_Access);
   procedure onTerrainEvent (This : in out TerrainEventListener; terrainEvent : TerrainEvent_Access);
   function getList (This : in out TerrainEventListener) return BasicArrayList_Access;
   procedure getList (This : in out TerrainEventListener);

end org.allbinary.game.terrain.TerrainEventListener_Package;



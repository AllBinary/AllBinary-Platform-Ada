--  Generated Code Do Not Modify

limited with org.allbinary.game.terrain.TerrainEventListener_Package;
package org.allbinary.game.terrain.TerrainEventListener_Package_References is
   type TerrainEventListener_Access is access all org.allbinary.game.terrain.TerrainEventListener_Package.TerrainEventListener'Class;
   type TerrainEventListener_Access_Array is array (Natural range <>) of TerrainEventListener_Access;
   type TerrainEventListener_Access_Array_Access is access all TerrainEventListener_Access_Array;
   type TerrainEventListener_Access_Array_Access_Array is array (Natural range <>) of TerrainEventListener_Access_Array_Access;
   type TerrainEventListener_Access_Array_Access_Array_Access is access all TerrainEventListener_Access_Array_Access_Array;
end org.allbinary.game.terrain.TerrainEventListener_Package_References;

with org.allbinary.game.terrain.TerrainEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.terrain.TerrainEventListenerInterface_Package; use org.allbinary.game.terrain.TerrainEventListenerInterface_Package;
limited with org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEvent_Package_References;

package org.allbinary.game.terrain.TerrainEventListener_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype TerrainEvent_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access;
   use type TerrainEvent_Access;
   subtype TerrainEvent_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array;
   use type TerrainEvent_Access_Array;
   subtype TerrainEvent_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access;
   use type TerrainEvent_Access_Array_Access;
   subtype TerrainEvent_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array;
   use type TerrainEvent_Access_Array_Access_Array;
   subtype TerrainEvent_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array_Access;
   use type TerrainEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TerrainEventListener_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access;
   function "=" (Left, Right : TerrainEventListener_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";

   type TerrainEventListener is new Java_Object and TerrainEventListenerInterface with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out TerrainEventListener'Class);
   function Create return TerrainEventListener_Access;
   procedure onEvent (This : in out TerrainEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onTerrainEvent (This : in out TerrainEventListener; terrainEvent_Param : access TerrainEvent_Package.TerrainEvent'Class);
   function getList (This : in out TerrainEventListener) return BasicArrayList_Access;

end org.allbinary.game.terrain.TerrainEventListener_Package;



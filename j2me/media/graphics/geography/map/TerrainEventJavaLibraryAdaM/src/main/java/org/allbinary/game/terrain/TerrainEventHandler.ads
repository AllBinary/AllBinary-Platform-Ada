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

limited with org.allbinary.game.terrain.TerrainEventHandler_Package;
package org.allbinary.game.terrain.TerrainEventHandler_Package_References is
   type TerrainEventHandler_Access is access all org.allbinary.game.terrain.TerrainEventHandler_Package.TerrainEventHandler'Class;
   type TerrainEventHandler_Access_Array is array (Natural range <>) of TerrainEventHandler_Access;
   type TerrainEventHandler_Access_Array_Access is access all TerrainEventHandler_Access_Array;
   type TerrainEventHandler_Access_Array_Access_Array is array (Natural range <>) of TerrainEventHandler_Access_Array_Access;
   type TerrainEventHandler_Access_Array_Access_Array_Access is access all TerrainEventHandler_Access_Array_Access_Array;
end org.allbinary.game.terrain.TerrainEventHandler_Package_References;

with org.allbinary.game.terrain.TerrainEventHandler_Package_References;
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
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package_References;

package org.allbinary.game.terrain.TerrainEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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
   subtype TerrainEventListener_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access;
   use type TerrainEventListener_Access;
   subtype TerrainEventListener_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array;
   use type TerrainEventListener_Access_Array;
   subtype TerrainEventListener_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access;
   use type TerrainEventListener_Access_Array_Access;
   subtype TerrainEventListener_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array;
   use type TerrainEventListener_Access_Array_Access_Array;
   subtype TerrainEventListener_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array_Access;
   use type TerrainEventListener_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TerrainEventHandler_Access is org.allbinary.game.terrain.TerrainEventHandler_Package_References.TerrainEventHandler_Access;
   function "=" (Left, Right : TerrainEventHandler_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventHandler_Package_References."=";
   subtype TerrainEventHandler_Access_Array is org.allbinary.game.terrain.TerrainEventHandler_Package_References.TerrainEventHandler_Access_Array;
   function "=" (Left, Right : TerrainEventHandler_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventHandler_Package_References."=";
   subtype TerrainEventHandler_Access_Array_Access is org.allbinary.game.terrain.TerrainEventHandler_Package_References.TerrainEventHandler_Access_Array_Access;
   function "=" (Left, Right : TerrainEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventHandler_Package_References."=";
   subtype TerrainEventHandler_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventHandler_Package_References.TerrainEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventHandler_Package_References."=";
   subtype TerrainEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventHandler_Package_References.TerrainEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventHandler_Package_References."=";

   type TerrainEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   hashtable : ABHashtable_Access;

   procedure Initialize (This : in out TerrainEventHandler'Class);
   function Create return TerrainEventHandler_Access;
   procedure init;
   function getInstance (anyType_Param : access Java_Object'Class) return TerrainEventHandler_Access;
   procedure getInstance (anyType_Param : access Java_Object'Class);
   procedure addListener (This : in out TerrainEventHandler; terrainEventListener_Param : access TerrainEventListener_Package.TerrainEventListener'Class);
   procedure removeAllListeners (This : in out TerrainEventHandler);
   procedure removeListener (This : in out TerrainEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out TerrainEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out TerrainEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   function getInstance (Value : Unbounded_String) return TerrainEventHandler_Access;
   procedure getInstance (Value : Unbounded_String);

end org.allbinary.game.terrain.TerrainEventHandler_Package;



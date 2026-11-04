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

limited with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References is
   type GeographicMapCellPositionEventHandler_Access is access all org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package.GeographicMapCellPositionEventHandler'Class;
   type GeographicMapCellPositionEventHandler_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventHandler_Access;
   type GeographicMapCellPositionEventHandler_Access_Array_Access is access all GeographicMapCellPositionEventHandler_Access_Array;
   type GeographicMapCellPositionEventHandler_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventHandler_Access_Array_Access;
   type GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access is access all GeographicMapCellPositionEventHandler_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References;

with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package MiniMapLayer_Package renames Standard.org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
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
   subtype MiniMapLayer_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access;
   use type MiniMapLayer_Access;
   subtype MiniMapLayer_Access_Array is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array;
   use type MiniMapLayer_Access_Array;
   subtype MiniMapLayer_Access_Array_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access;
   use type MiniMapLayer_Access_Array_Access;
   subtype MiniMapLayer_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access_Array;
   use type MiniMapLayer_Access_Array_Access_Array;
   subtype MiniMapLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.MiniMapLayer_Package_References.MiniMapLayer_Access_Array_Access_Array_Access;
   use type MiniMapLayer_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellPositionEventHandler_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";

   type GeographicMapCellPositionEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : GeographicMapCellPositionEventHandler_Access;

   procedure Initialize (This : in out GeographicMapCellPositionEventHandler'Class);
   function Create return GeographicMapCellPositionEventHandler_Access;
   function getInstance return GeographicMapCellPositionEventHandler_Access;
   procedure addListener (This : in out GeographicMapCellPositionEventHandler; miniMapLayer_Param : access MiniMapLayer_Package.MiniMapLayer'Class);
   procedure removeAllListeners (This : in out GeographicMapCellPositionEventHandler);
   procedure removeListener (This : in out GeographicMapCellPositionEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out GeographicMapCellPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure fireRemoveEvent (This : in out GeographicMapCellPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out GeographicMapCellPositionEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;



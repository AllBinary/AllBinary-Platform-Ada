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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package; use org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;

package org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package MiniMapLayer_Package renames Standard.org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type GeographicMapCellPositionEventHandler is tagged;
   type GeographicMapCellPositionEventHandler_Access is access all GeographicMapCellPositionEventHandler'Class;
   type GeographicMapCellPositionEventHandler_Access_Array is array (Natural range <>) of GeographicMapCellPositionEventHandler_Access;
   type GeographicMapCellPositionEventHandler_Access_Array_Access is access all GeographicMapCellPositionEventHandler_Access_Array;

   type GeographicMapCellPositionEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : GeographicMapCellPositionEventHandler_Access;

   procedure Initialize (This : in out GeographicMapCellPositionEventHandler'Class);
   function Create return GeographicMapCellPositionEventHandler_Access;
   function getInstance return GeographicMapCellPositionEventHandler_Access;
   procedure addListener (This : in out GeographicMapCellPositionEventHandler; miniMapLayer : MiniMapLayer_Access);
   procedure removeAllListeners (This : in out GeographicMapCellPositionEventHandler);
   procedure removeListener (This : in out GeographicMapCellPositionEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out GeographicMapCellPositionEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure fireRemoveEvent (This : in out GeographicMapCellPositionEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure process (This : in out GeographicMapCellPositionEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;



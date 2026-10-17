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
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.layer.event.LayerManagerEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type LayerManagerEventHandler is tagged;
   type LayerManagerEventHandler_Access is access all LayerManagerEventHandler'Class;
   type LayerManagerEventHandler_Access_Array is array (Natural range <>) of LayerManagerEventHandler_Access;
   type LayerManagerEventHandler_Access_Array_Access is access all LayerManagerEventHandler_Access_Array;

   type LayerManagerEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
      CREATE : Unbounded_String;
      DELETE : Unbounded_String;
   end record;
   instance : LayerManagerEventHandler_Access;

   procedure Initialize (This : in out LayerManagerEventHandler'Class);
   function Create return LayerManagerEventHandler_Access;
   function getInstance return LayerManagerEventHandler_Access;
   procedure getInstance;
   procedure addListener (This : in out LayerManagerEventHandler; layerManagerEventListener : LayerManagerEventListener_Access);
   procedure removeAllListeners (This : in out LayerManagerEventHandler);
   procedure removeListener (This : in out LayerManagerEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out LayerManagerEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure fireDeleteEvent (This : in out LayerManagerEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure process (This : in out LayerManagerEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.layer.event.LayerManagerEventHandler_Package;



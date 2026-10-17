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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.view.event.ViewPositionEventHandler_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type ViewPositionEventHandler is tagged;
   type ViewPositionEventHandler_Access is access all ViewPositionEventHandler'Class;
   type ViewPositionEventHandler_Access_Array is array (Natural range <>) of ViewPositionEventHandler_Access;
   type ViewPositionEventHandler_Access_Array_Access is access all ViewPositionEventHandler_Access_Array;

   type ViewPositionEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   SINGLETON : ViewPositionEventHandler_Access;

   procedure Initialize (This : in out ViewPositionEventHandler'Class);
   function Create return ViewPositionEventHandler_Access;
   function getInstance return ViewPositionEventHandler_Access;
   procedure getInstance;
   procedure addListener (This : in out ViewPositionEventHandler; layerInterface : AllBinaryLayer_Access);
   procedure removeAllListeners (This : in out ViewPositionEventHandler);
   procedure removeListener (This : in out ViewPositionEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out ViewPositionEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure process (This : in out ViewPositionEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.view.event.ViewPositionEventHandler_Package;



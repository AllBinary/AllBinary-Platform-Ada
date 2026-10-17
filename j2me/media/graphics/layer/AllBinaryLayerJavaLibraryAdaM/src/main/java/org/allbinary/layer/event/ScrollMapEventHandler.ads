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

package org.allbinary.layer.event.ScrollMapEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type ScrollMapEventHandler is tagged;
   type ScrollMapEventHandler_Access is access all ScrollMapEventHandler'Class;
   type ScrollMapEventHandler_Access_Array is array (Natural range <>) of ScrollMapEventHandler_Access;
   type ScrollMapEventHandler_Access_Array_Access is access all ScrollMapEventHandler_Access_Array;

   type ScrollMapEventHandler is new BasicEventHandler with null record;
   SINGLETON : ScrollMapEventHandler_Access;

   procedure Initialize (This : in out ScrollMapEventHandler'Class);
   function Create return ScrollMapEventHandler_Access;
   function getInstance return ScrollMapEventHandler_Access;
   procedure getInstance;
   procedure process (This : in out ScrollMapEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.layer.event.ScrollMapEventHandler_Package;



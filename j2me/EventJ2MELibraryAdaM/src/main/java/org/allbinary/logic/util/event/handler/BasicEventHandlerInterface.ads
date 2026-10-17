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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;

package org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;

   type BasicEventHandlerInterface is interface;
   type BasicEventHandlerInterface_Access is access all BasicEventHandlerInterface'Class;
   type BasicEventHandlerInterface_Access_Array is array (Natural range <>) of BasicEventHandlerInterface_Access;
   type BasicEventHandlerInterface_Access_Array_Access is access all BasicEventHandlerInterface_Access_Array;
   procedure addListenerInterface (This : in out BasicEventHandlerInterface; eventListenerInterface : EventListenerInterface_Access) is abstract;
   procedure addListeners (This : in out BasicEventHandlerInterface; basicArrayList : BasicArrayList_Access) is abstract;
   procedure fireEvent (This : in out BasicEventHandlerInterface; eventObject : AllBinaryEventObject_Access) is abstract;
   procedure removeAllListeners (This : in out BasicEventHandlerInterface) is abstract;
   procedure removeListener (This : in out BasicEventHandlerInterface; eventListenerInterface : EventListenerInterface_Access) is abstract;

end org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package;



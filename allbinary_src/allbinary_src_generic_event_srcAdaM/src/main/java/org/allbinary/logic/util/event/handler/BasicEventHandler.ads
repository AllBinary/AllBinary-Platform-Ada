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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package; use org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package;

package org.allbinary.logic.util.event.handler.BasicEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicEventHandler is tagged;
   type BasicEventHandler_Access is access all BasicEventHandler'Class;
   type BasicEventHandler_Access_Array is array (Natural range <>) of BasicEventHandler_Access;
   type BasicEventHandler_Access_Array_Access is access all BasicEventHandler_Access_Array;

   type BasicEventHandler is new BasicEventHandlerInterface with record
      logUtil : LogUtil_Access;
      eventListenerInterfaceList : BasicArrayList_Access;
   end record;
   PERFORMANCE_MESSAGE : Unbounded_String;

   procedure Initialize (This : in out BasicEventHandler'Class);
   function Create return BasicEventHandler_Access;
   function toString (This : in out BasicEventHandler) return Unbounded_String;
   procedure removeAllListeners (This : in out BasicEventHandler);
   procedure addListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure addListenerInterface (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure removeListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure removeListener (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure fireEvent (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject'Class);
   procedure process (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class);
   function getEventListenerInterfaceListP (This : in out BasicEventHandler) return BasicArrayList_Access;

end org.allbinary.logic.util.event.handler.BasicEventHandler_Package;



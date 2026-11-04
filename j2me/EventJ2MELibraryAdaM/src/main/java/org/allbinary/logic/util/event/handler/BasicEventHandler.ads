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

limited with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
package org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References is
   type BasicEventHandler_Access is access all org.allbinary.logic.util.event.handler.BasicEventHandler_Package.BasicEventHandler'Class;
   type BasicEventHandler_Access_Array is array (Natural range <>) of BasicEventHandler_Access;
   type BasicEventHandler_Access_Array_Access is access all BasicEventHandler_Access_Array;
   type BasicEventHandler_Access_Array_Access_Array is array (Natural range <>) of BasicEventHandler_Access_Array_Access;
   type BasicEventHandler_Access_Array_Access_Array_Access is access all BasicEventHandler_Access_Array_Access_Array;
end org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References;

with org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
limited with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.util.event.EventStrings_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package; use org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package;

package org.allbinary.logic.util.event.handler.BasicEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype EventStrings_Access is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access;
   use type EventStrings_Access;
   subtype EventStrings_Access_Array is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array;
   use type EventStrings_Access_Array;
   subtype EventStrings_Access_Array_Access is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array_Access;
   use type EventStrings_Access_Array_Access;
   subtype EventStrings_Access_Array_Access_Array is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array_Access_Array;
   use type EventStrings_Access_Array_Access_Array;
   subtype EventStrings_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventStrings_Package_References.EventStrings_Access_Array_Access_Array_Access;
   use type EventStrings_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicEventHandler_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access;
   function "=" (Left, Right : BasicEventHandler_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";
   subtype BasicEventHandler_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array;
   function "=" (Left, Right : BasicEventHandler_Access_Array) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";
   subtype BasicEventHandler_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access;
   function "=" (Left, Right : BasicEventHandler_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";
   subtype BasicEventHandler_Access_Array_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : BasicEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";
   subtype BasicEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";

   type BasicEventHandler is new Java_Object and BasicEventHandlerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      eventStrings : EventStrings_Access;
      eventListenerInterfaceList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicEventHandler'Class);
   function Create return BasicEventHandler_Access;
   procedure removeAllListeners (This : in out BasicEventHandler);
   procedure addListeners (This : in out BasicEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure removeListeners (This : in out BasicEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure addListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure addListenerInterface (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   function getEventListenerInterfaceListP (This : in out BasicEventHandler) return BasicArrayList_Access;
   function toString (This : in out BasicEventHandler) return Unbounded_String;

end org.allbinary.logic.util.event.handler.BasicEventHandler_Package;



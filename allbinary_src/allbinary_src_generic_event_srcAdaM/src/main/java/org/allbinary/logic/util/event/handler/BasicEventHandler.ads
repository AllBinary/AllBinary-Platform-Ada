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

with AllBinary_Java;
limited with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
package org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References is
   type BasicEventHandler_Access is access all org.allbinary.logic.util.event.handler.BasicEventHandler_Package.BasicEventHandler'Class;
   type BasicEventHandler_Access_Array is array (Natural range <>) of BasicEventHandler_Access;
   type BasicEventHandler_Access_Array_Access is access all BasicEventHandler_Access_Array;
   type BasicEventHandler_Access_Array_Access_Array is array (Natural range <>) of BasicEventHandler_Access_Array_Access;
   type BasicEventHandler_Access_Array_Access_Array_Access is access all BasicEventHandler_Access_Array_Access_Array;
   type BasicEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicEventHandler_Access_Array_Access is (if Value /= null and then Value.all in BasicEventHandler_Access_Array_Object'Class then BasicEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type BasicEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicEventHandler_Access_Array_Access_Array_Object'Class then BasicEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package; use org.allbinary.logic.util.event.handler.BasicEventHandlerInterface_Package;

package org.allbinary.logic.util.event.handler.BasicEventHandler_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
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
   function Java_Box (Value : BasicEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.Java_Box;
   function Java_Unbox_BasicEventHandler_Access_Array (Value : access Java_Object'Class) return BasicEventHandler_Access_Array_Access renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.Java_Unbox_BasicEventHandler_Access_Array;
   subtype BasicEventHandler_Access_Array_Access_Array is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : BasicEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";
   subtype BasicEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.BasicEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References."=";
   function Java_Box (Value : BasicEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.Java_Box;
   function Java_Unbox_BasicEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicEventHandler_Access_Array_Access_Array_Access renames org.allbinary.logic.util.event.handler.BasicEventHandler_Package_References.Java_Unbox_BasicEventHandler_Access_Array_Access_Array;

   type BasicEventHandler is new Java_Object and BasicEventHandlerInterface with record
      logUtil : LogUtil_Access;
      eventListenerInterfaceList : BasicArrayList_Access;
   end record;
   PERFORMANCE_MESSAGE : Unbounded_String;

   procedure Initialize (This : in out BasicEventHandler'Class);
   function Create return BasicEventHandler_Access;
   function toString (This : in out BasicEventHandler) return Unbounded_String;
   procedure removeAllListeners (This : in out BasicEventHandler);
   procedure addListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure addListenerInterface (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListenerSingleThreaded (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure removeListener (This : in out BasicEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out BasicEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   function getEventListenerInterfaceListP (This : in out BasicEventHandler) return BasicArrayList_Access;

end org.allbinary.logic.util.event.handler.BasicEventHandler_Package;



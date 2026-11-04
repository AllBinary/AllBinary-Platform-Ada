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

limited with org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
package org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References is
   type VirtualKeyboardEventHandler_Access is access all org.allbinary.input.event.VirtualKeyboardEventHandler_Package.VirtualKeyboardEventHandler'Class;
   type VirtualKeyboardEventHandler_Access_Array is array (Natural range <>) of VirtualKeyboardEventHandler_Access;
   type VirtualKeyboardEventHandler_Access_Array_Access is access all VirtualKeyboardEventHandler_Access_Array;
   type VirtualKeyboardEventHandler_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboardEventHandler_Access_Array_Access;
   type VirtualKeyboardEventHandler_Access_Array_Access_Array_Access is access all VirtualKeyboardEventHandler_Access_Array_Access_Array;
end org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References;

with org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References;
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
limited with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package_References;

package org.allbinary.input.event.VirtualKeyboardEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
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
   subtype VirtualKeyboardEvent_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access;
   use type VirtualKeyboardEvent_Access;
   subtype VirtualKeyboardEvent_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array;
   use type VirtualKeyboardEvent_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array;
   use type VirtualKeyboardEvent_Access_Array_Access_Array;
   subtype VirtualKeyboardEvent_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEvent_Package_References.VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   use type VirtualKeyboardEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VirtualKeyboardEventHandler_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array_Access_Array is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";
   subtype VirtualKeyboardEventHandler_Access_Array_Access_Array_Access is org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References.VirtualKeyboardEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package_References."=";

   type VirtualKeyboardEventHandler is new BasicEventHandler with record
      SHOW_EVENT : VirtualKeyboardEvent_Access;
      HIDE_EVENT : VirtualKeyboardEvent_Access;
   end record;
   gameKeyEventHandler : VirtualKeyboardEventHandler_Access;

   procedure Initialize (This : in out VirtualKeyboardEventHandler'Class);
   function Create return VirtualKeyboardEventHandler_Access;
   function getInstance return VirtualKeyboardEventHandler_Access;
   procedure process (This : in out VirtualKeyboardEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure open (This : in out VirtualKeyboardEventHandler);
   procedure close (This : in out VirtualKeyboardEventHandler);

end org.allbinary.input.event.VirtualKeyboardEventHandler_Package;



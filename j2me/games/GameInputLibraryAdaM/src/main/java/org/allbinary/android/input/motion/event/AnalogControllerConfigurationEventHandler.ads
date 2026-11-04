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

limited with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;
package org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References is
   type AnalogControllerConfigurationEventHandler_Access is access all org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package.AnalogControllerConfigurationEventHandler'Class;
   type AnalogControllerConfigurationEventHandler_Access_Array is array (Natural range <>) of AnalogControllerConfigurationEventHandler_Access;
   type AnalogControllerConfigurationEventHandler_Access_Array_Access is access all AnalogControllerConfigurationEventHandler_Access_Array;
   type AnalogControllerConfigurationEventHandler_Access_Array_Access_Array is array (Natural range <>) of AnalogControllerConfigurationEventHandler_Access_Array_Access;
   type AnalogControllerConfigurationEventHandler_Access_Array_Access_Array_Access is access all AnalogControllerConfigurationEventHandler_Access_Array_Access_Array;
end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References;

with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References;

package org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype AnalogControllerConfigurationEventListenerInterface_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access;
   use type AnalogControllerConfigurationEventListenerInterface_Access;
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array;
   use type AnalogControllerConfigurationEventListenerInterface_Access_Array;
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access;
   use type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access;
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array;
   use type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array;
   subtype AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package_References.AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access;
   use type AnalogControllerConfigurationEventListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AnalogControllerConfigurationEventHandler_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References.AnalogControllerConfigurationEventHandler_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventHandler_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References."=";
   subtype AnalogControllerConfigurationEventHandler_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References.AnalogControllerConfigurationEventHandler_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationEventHandler_Access_Array) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References."=";
   subtype AnalogControllerConfigurationEventHandler_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References.AnalogControllerConfigurationEventHandler_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventHandler_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References."=";
   subtype AnalogControllerConfigurationEventHandler_Access_Array_Access_Array is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References.AnalogControllerConfigurationEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogControllerConfigurationEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References."=";
   subtype AnalogControllerConfigurationEventHandler_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References.AnalogControllerConfigurationEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerConfigurationEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package_References."=";

   type AnalogControllerConfigurationEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : AnalogControllerConfigurationEventHandler_Access;

   procedure Initialize (This : in out AnalogControllerConfigurationEventHandler'Class);
   function Create return AnalogControllerConfigurationEventHandler_Access;
   function getInstance return AnalogControllerConfigurationEventHandler_Access;
   procedure addListener (This : in out AnalogControllerConfigurationEventHandler; analogControllerConfigurationEventListenerInterface_Param : access AnalogControllerConfigurationEventListenerInterface_Package.AnalogControllerConfigurationEventListenerInterface'Class);
   procedure removeAllListeners (This : in out AnalogControllerConfigurationEventHandler);
   procedure removeListener (This : in out AnalogControllerConfigurationEventHandler; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);
   procedure fireEvent (This : in out AnalogControllerConfigurationEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure process (This : in out AnalogControllerConfigurationEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;



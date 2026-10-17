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
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package; use org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventListenerInterface_Package;
with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package; use org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent_Package;

package org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type AnalogControllerConfigurationEventHandler is tagged;
   type AnalogControllerConfigurationEventHandler_Access is access all AnalogControllerConfigurationEventHandler'Class;
   type AnalogControllerConfigurationEventHandler_Access_Array is array (Natural range <>) of AnalogControllerConfigurationEventHandler_Access;
   type AnalogControllerConfigurationEventHandler_Access_Array_Access is access all AnalogControllerConfigurationEventHandler_Access_Array;

   type AnalogControllerConfigurationEventHandler is new BasicEventHandler with record
      list : BasicArrayList_Access;
   end record;
   instance : AnalogControllerConfigurationEventHandler_Access;

   procedure Initialize (This : in out AnalogControllerConfigurationEventHandler'Class);
   function Create return AnalogControllerConfigurationEventHandler_Access;
   function getInstance return AnalogControllerConfigurationEventHandler_Access;
   procedure addListener (This : in out AnalogControllerConfigurationEventHandler; analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface_Access);
   procedure removeAllListeners (This : in out AnalogControllerConfigurationEventHandler);
   procedure removeListener (This : in out AnalogControllerConfigurationEventHandler; eventListenerInterface : EventListenerInterface_Access);
   procedure fireEvent (This : in out AnalogControllerConfigurationEventHandler; eventObject : AllBinaryEventObject_Access);
   procedure process (This : in out AnalogControllerConfigurationEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access);

end org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;



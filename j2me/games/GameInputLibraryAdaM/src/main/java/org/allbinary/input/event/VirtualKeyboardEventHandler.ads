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
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package; use org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;

package org.allbinary.input.event.VirtualKeyboardEventHandler_Package is

   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type VirtualKeyboardEventHandler is tagged;
   type VirtualKeyboardEventHandler_Access is access all VirtualKeyboardEventHandler'Class;
   type VirtualKeyboardEventHandler_Access_Array is array (Natural range <>) of VirtualKeyboardEventHandler_Access;
   type VirtualKeyboardEventHandler_Access_Array_Access is access all VirtualKeyboardEventHandler_Access_Array;

   type VirtualKeyboardEventHandler is new BasicEventHandler with record
      SHOW_EVENT : VirtualKeyboardEvent_Access;
      HIDE_EVENT : VirtualKeyboardEvent_Access;
   end record;
   gameKeyEventHandler : VirtualKeyboardEventHandler_Access;

   procedure Initialize (This : in out VirtualKeyboardEventHandler'Class);
   function Create return VirtualKeyboardEventHandler_Access;
   function getInstance return VirtualKeyboardEventHandler_Access;
   procedure process (This : in out VirtualKeyboardEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class);
   procedure open (This : in out VirtualKeyboardEventHandler);
   procedure close (This : in out VirtualKeyboardEventHandler);

end org.allbinary.input.event.VirtualKeyboardEventHandler_Package;



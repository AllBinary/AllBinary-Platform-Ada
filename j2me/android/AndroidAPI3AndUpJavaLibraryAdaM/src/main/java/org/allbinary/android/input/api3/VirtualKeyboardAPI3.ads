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
with android.app.Activity_Package; use android.app.Activity_Package;
with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package; use org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package; use org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package is

   package Activity_Package renames android.app.Activity_Package;
   package VirtualKeyboard_Package renames org.allbinary.android.input.VirtualKeyboard_Package;
   package VirtualKeyboardEvent_Package renames org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package VirtualKeyboardEventHandler_Package renames org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
   package VirtualKeyboardEventListenerInterface_Package renames org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;

   type VirtualKeyboardAPI3 is tagged;
   type VirtualKeyboardAPI3_Access is access all VirtualKeyboardAPI3'Class;
   type VirtualKeyboardAPI3_Access_Array is array (Natural range <>) of VirtualKeyboardAPI3_Access;
   type VirtualKeyboardAPI3_Access_Array_Access is access all VirtualKeyboardAPI3_Access_Array;

   type VirtualKeyboardAPI3 is new VirtualKeyboard and VirtualKeyboardEventListenerInterface with record
      virtualKeyboard : Boolean;
      activity : Activity_Access;
      showVirtualKeyboardRunnable : Runnable_Access;
      hideVirtualKeyboardRunnable : Runnable_Access;
   end record;
   MAX_API : Integer;
   MIN_API : Integer;

   procedure Initialize (This : in out VirtualKeyboardAPI3'Class; activity : Activity_Access);
   function Create (activity : Activity_Access) return VirtualKeyboardAPI3_Access;
   procedure onEvent (This : in out VirtualKeyboardAPI3; eventObject : AllBinaryEventObject_Access);
   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboardAPI3; virtualKeyboardEvent : VirtualKeyboardEvent_Access);
   procedure forceHide (This : in out VirtualKeyboardAPI3);
   procedure hide (This : in out VirtualKeyboardAPI3);
   procedure showVirtualKeyboard (This : in out VirtualKeyboardAPI3);
   procedure hideVirtualKeyboard (This : in out VirtualKeyboardAPI3);

end org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;



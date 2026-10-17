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
with org.allbinary.input.event.VirtualKeyboardEvent_Package; use org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.android.input.VirtualKeyboard_Package is

   package VirtualKeyboardEvent_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;

   type VirtualKeyboard is tagged;
   type VirtualKeyboard_Access is access all VirtualKeyboard'Class;
   type VirtualKeyboard_Access_Array is array (Natural range <>) of VirtualKeyboard_Access;
   type VirtualKeyboard_Access_Array_Access is access all VirtualKeyboard_Access_Array;

   type VirtualKeyboard is new Java_Object with null record;
   NULL_VIRTUAL_KEYBOARD : VirtualKeyboard_Access;

   procedure Initialize (This : in out VirtualKeyboard'Class);
   function Create return VirtualKeyboard_Access;
   procedure onEvent (This : in out VirtualKeyboard; eventObject_Param : access AllBinaryEventObject'Class);
   procedure onVirtualKeyboardEvent (This : in out VirtualKeyboard; virtualKeyboardEvent_Param : access VirtualKeyboardEvent'Class);
   procedure forceHide (This : in out VirtualKeyboard);
   procedure hide (This : in out VirtualKeyboard);

end org.allbinary.android.input.VirtualKeyboard_Package;



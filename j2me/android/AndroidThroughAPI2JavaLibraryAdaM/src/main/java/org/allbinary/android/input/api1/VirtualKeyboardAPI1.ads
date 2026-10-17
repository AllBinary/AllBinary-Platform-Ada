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
with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
with android.app.Activity_Package; use android.app.Activity_Package;

package org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package is

   package VirtualKeyboard_Package renames Standard.org.allbinary.android.input.VirtualKeyboard_Package;
   package VirtualKeyboardEventListenerInterface_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;

   type VirtualKeyboardAPI1 is tagged;
   type VirtualKeyboardAPI1_Access is access all VirtualKeyboardAPI1'Class;
   type VirtualKeyboardAPI1_Access_Array is array (Natural range <>) of VirtualKeyboardAPI1_Access;
   type VirtualKeyboardAPI1_Access_Array_Access is access all VirtualKeyboardAPI1_Access_Array;

   type VirtualKeyboardAPI1 is new VirtualKeyboard and VirtualKeyboardEventListenerInterface with null record;
   MIN_API : Integer;
   MAX_API : Integer;

   procedure Initialize (This : in out VirtualKeyboardAPI1'Class; activity_Param : access Activity'Class);
   function Create (activity_Param : access Activity'Class) return VirtualKeyboardAPI1_Access;

end org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;



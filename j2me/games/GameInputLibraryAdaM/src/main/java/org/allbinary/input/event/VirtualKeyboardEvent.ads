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

package org.allbinary.input.event.VirtualKeyboardEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type VirtualKeyboardEvent is tagged;
   type VirtualKeyboardEvent_Access is access all VirtualKeyboardEvent'Class;
   type VirtualKeyboardEvent_Access_Array is array (Natural range <>) of VirtualKeyboardEvent_Access;
   type VirtualKeyboardEvent_Access_Array_Access is access all VirtualKeyboardEvent_Access_Array;

   type VirtualKeyboardEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out VirtualKeyboardEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return VirtualKeyboardEvent_Access;

end org.allbinary.input.event.VirtualKeyboardEvent_Package;



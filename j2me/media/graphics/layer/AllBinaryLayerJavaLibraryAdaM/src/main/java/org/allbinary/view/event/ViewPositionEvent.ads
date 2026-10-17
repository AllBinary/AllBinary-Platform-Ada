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

package org.allbinary.view.event.ViewPositionEvent_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type ViewPositionEvent is tagged;
   type ViewPositionEvent_Access is access all ViewPositionEvent'Class;
   type ViewPositionEvent_Access_Array is array (Natural range <>) of ViewPositionEvent_Access;
   type ViewPositionEvent_Access_Array_Access is access all ViewPositionEvent_Access_Array;

   type ViewPositionEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out ViewPositionEvent'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return ViewPositionEvent_Access;

end org.allbinary.view.event.ViewPositionEvent_Package;



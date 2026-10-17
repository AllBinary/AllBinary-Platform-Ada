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

package org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type DisplayChangeEvent is tagged;
   type DisplayChangeEvent_Access is access all DisplayChangeEvent'Class;
   type DisplayChangeEvent_Access_Array is array (Natural range <>) of DisplayChangeEvent_Access;
   type DisplayChangeEvent_Access_Array_Access is access all DisplayChangeEvent_Access_Array;

   type DisplayChangeEvent is new AllBinaryEventObject with null record;

   procedure Initialize (This : in out DisplayChangeEvent'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return DisplayChangeEvent_Access;

end org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;



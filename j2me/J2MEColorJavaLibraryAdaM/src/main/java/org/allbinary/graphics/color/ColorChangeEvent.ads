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

package org.allbinary.graphics.color.ColorChangeEvent_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type ColorChangeEvent is tagged;
   type ColorChangeEvent_Access is access all ColorChangeEvent'Class;
   type ColorChangeEvent_Access_Array is array (Natural range <>) of ColorChangeEvent_Access;
   type ColorChangeEvent_Access_Array_Access is access all ColorChangeEvent_Access_Array;

   type ColorChangeEvent is new AllBinaryEventObject with record
      basicColor : BasicColor_Access;
   end record;

   procedure Initialize (This : in out ColorChangeEvent'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return ColorChangeEvent_Access;
   procedure setBasicColorP (This : in out ColorChangeEvent; basicColor : BasicColor_Access);
   function getBasicColorP (This : in out ColorChangeEvent) return BasicColor_Access;
   procedure getBasicColorP (This : in out ColorChangeEvent);

end org.allbinary.graphics.color.ColorChangeEvent_Package;



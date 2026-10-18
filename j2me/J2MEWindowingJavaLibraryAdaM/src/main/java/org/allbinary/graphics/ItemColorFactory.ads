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

package org.allbinary.graphics.ItemColorFactory_Package is


   type ItemColorFactory is tagged;
   type ItemColorFactory_Access is access all ItemColorFactory'Class;
   type ItemColorFactory_Access_Array is array (Natural range <>) of ItemColorFactory_Access;
   type ItemColorFactory_Access_Array_Access is access all ItemColorFactory_Access_Array;
   type ItemColorFactory_Access_Array_Access_Array is array (Natural range <>) of ItemColorFactory_Access_Array_Access;
   type ItemColorFactory_Access_Array_Access_Array_Access is access all ItemColorFactory_Access_Array_Access_Array;

   type ItemColorFactory is new Java_Object with record
      INVERT_PAINT : Integer;
      PAINT : Integer;
      TEXT_FIELD_NO_FOCUS : Integer;
   end record;
   instance : ItemColorFactory_Access;

   procedure Initialize (This : in out ItemColorFactory'Class);
   function Create return ItemColorFactory_Access;
   function getInstance return ItemColorFactory_Access;

end org.allbinary.graphics.ItemColorFactory_Package;



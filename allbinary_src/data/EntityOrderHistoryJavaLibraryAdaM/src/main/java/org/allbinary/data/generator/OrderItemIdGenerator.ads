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
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.OrderItemIdGenerator_Package is

   package PATH_GLOBALS_Package renames org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type OrderItemIdGenerator is tagged;
   type OrderItemIdGenerator_Access is access all OrderItemIdGenerator'Class;
   type OrderItemIdGenerator_Access_Array is array (Natural range <>) of OrderItemIdGenerator_Access;
   type OrderItemIdGenerator_Access_Array_Access is access all OrderItemIdGenerator_Access_Array;

   type OrderItemIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderItemIdGenerator'Class);
   function Create return OrderItemIdGenerator_Access;

end org.allbinary.data.generator.OrderItemIdGenerator_Package;



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
with org.allbinary.data.generator.UniqueIdGenerator_Package; use org.allbinary.data.generator.UniqueIdGenerator_Package;

package org.allbinary.data.generator.QuoteRequestIdGenerator_Package is


   type QuoteRequestIdGenerator is tagged;
   type QuoteRequestIdGenerator_Access is access all QuoteRequestIdGenerator'Class;
   type QuoteRequestIdGenerator_Access_Array is array (Natural range <>) of QuoteRequestIdGenerator_Access;
   type QuoteRequestIdGenerator_Access_Array_Access is access all QuoteRequestIdGenerator_Access_Array;
   type QuoteRequestIdGenerator_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestIdGenerator_Access_Array_Access;
   type QuoteRequestIdGenerator_Access_Array_Access_Array_Access is access all QuoteRequestIdGenerator_Access_Array_Access_Array;

   type QuoteRequestIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequestIdGenerator'Class);
   function Create return QuoteRequestIdGenerator_Access;

end org.allbinary.data.generator.QuoteRequestIdGenerator_Package;



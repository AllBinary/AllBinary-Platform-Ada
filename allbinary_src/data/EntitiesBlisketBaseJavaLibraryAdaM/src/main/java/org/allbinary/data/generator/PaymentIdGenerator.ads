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

package org.allbinary.data.generator.PaymentIdGenerator_Package is


   type PaymentIdGenerator is tagged;
   type PaymentIdGenerator_Access is access all PaymentIdGenerator'Class;
   type PaymentIdGenerator_Access_Array is array (Natural range <>) of PaymentIdGenerator_Access;
   type PaymentIdGenerator_Access_Array_Access is access all PaymentIdGenerator_Access_Array;
   type PaymentIdGenerator_Access_Array_Access_Array is array (Natural range <>) of PaymentIdGenerator_Access_Array_Access;
   type PaymentIdGenerator_Access_Array_Access_Array_Access is access all PaymentIdGenerator_Access_Array_Access_Array;

   type PaymentIdGenerator is new UniqueIdGenerator with record
      IDFILE : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentIdGenerator'Class);
   function Create return PaymentIdGenerator_Access;

end org.allbinary.data.generator.PaymentIdGenerator_Package;



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
with org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package; use org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package;

package org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package is


   type TransactionTypeFactory is tagged;
   type TransactionTypeFactory_Access is access all TransactionTypeFactory'Class;
   type TransactionTypeFactory_Access_Array is array (Natural range <>) of TransactionTypeFactory_Access;
   type TransactionTypeFactory_Access_Array_Access is access all TransactionTypeFactory_Access_Array;

   type TransactionTypeFactory is new Java_Object with record
      SALE : TransactionType_Access;
      CREDIT : TransactionType_Access;
      AUTHORIZATION : TransactionType_Access;
      DELAYEDCAPTURE : TransactionType_Access;
      VOID : TransactionType_Access;
      INQUIRY : TransactionType_Access;
   end record;
   instance : TransactionTypeFactory_Access;

   procedure Initialize (This : in out TransactionTypeFactory'Class);
   function Create return TransactionTypeFactory_Access;
   function getInstance return TransactionTypeFactory_Access;

end org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;



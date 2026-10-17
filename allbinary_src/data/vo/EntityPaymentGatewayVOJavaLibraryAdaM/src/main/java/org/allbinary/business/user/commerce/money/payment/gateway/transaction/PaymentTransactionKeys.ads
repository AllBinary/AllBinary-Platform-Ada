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

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package is


   type PaymentTransactionKeys is tagged;
   type PaymentTransactionKeys_Access is access all PaymentTransactionKeys'Class;
   type PaymentTransactionKeys_Access_Array is array (Natural range <>) of PaymentTransactionKeys_Access;
   type PaymentTransactionKeys_Access_Array_Access is access all PaymentTransactionKeys_Access_Array;

   type PaymentTransactionKeys is new Java_Object with record
      key : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentTransactionKeys'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return PaymentTransactionKeys_Access;
   function toString (This : in out PaymentTransactionKeys) return Unbounded_String;
   procedure toString (This : in out PaymentTransactionKeys);

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package;



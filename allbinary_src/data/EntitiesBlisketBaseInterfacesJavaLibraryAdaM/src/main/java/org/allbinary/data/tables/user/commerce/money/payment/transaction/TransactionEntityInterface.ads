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
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type TransactionEntityInterface is interface and BasicDataTableInterface;
   type TransactionEntityInterface_Access is access all TransactionEntityInterface'Class;
   type TransactionEntityInterface_Access_Array is array (Natural range <>) of TransactionEntityInterface_Access;
   type TransactionEntityInterface_Access_Array_Access is access all TransactionEntityInterface_Access_Array;
   type TransactionEntityInterface_Access_Array_Access_Array is array (Natural range <>) of TransactionEntityInterface_Access_Array_Access;
   type TransactionEntityInterface_Access_Array_Access_Array_Access is access all TransactionEntityInterface_Access_Array_Access_Array;
   procedure remove (This : in out TransactionEntityInterface; userName : Unbounded_String; orderNumber : Unbounded_String) is abstract;
   procedure add (This : in out TransactionEntityInterface; userName : Unbounded_String; orderNumber : Unbounded_String; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package;



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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type TransactionEntity is tagged;
   type TransactionEntity_Access is access all TransactionEntity'Class;
   type TransactionEntity_Access_Array is array (Natural range <>) of TransactionEntity_Access;
   type TransactionEntity_Access_Array_Access is access all TransactionEntity_Access_Array;
   type TransactionEntity_Access_Array_Access_Array is array (Natural range <>) of TransactionEntity_Access_Array_Access;
   type TransactionEntity_Access_Array_Access_Array_Access is access all TransactionEntity_Access_Array_Access_Array;

   type TransactionEntity is new AbSqlBean and TransactionEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransactionEntity'Class);
   function Create return TransactionEntity_Access;
   procedure remove (This : in out TransactionEntity; userName : Unbounded_String; orderNumber : Unbounded_String);
   procedure add (This : in out TransactionEntity; userName : Unbounded_String; orderNumber : Unbounded_String; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class);
   function createTableStatement (This : in out TransactionEntity) return Unbounded_String;
   function createTable (This : in out TransactionEntity) return Unbounded_String;
   function dropTable (This : in out TransactionEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package;



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

limited with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package;
package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References is
   type TransactionEntity_Access is access all org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package.TransactionEntity'Class;
   type TransactionEntity_Access_Array is array (Natural range <>) of TransactionEntity_Access;
   type TransactionEntity_Access_Array_Access is access all TransactionEntity_Access_Array;
   type TransactionEntity_Access_Array_Access_Array is array (Natural range <>) of TransactionEntity_Access_Array_Access;
   type TransactionEntity_Access_Array_Access_Array_Access is access all TransactionEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package Reference_Types is
   subtype PaymentTransactionInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access;
   use type PaymentTransactionInterface_Access;
   subtype PaymentTransactionInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array;
   use type PaymentTransactionInterface_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access;
   subtype PaymentTransactionInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array;
   use type PaymentTransactionInterface_Access_Array_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransactionEntity_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References.TransactionEntity_Access;
   function "=" (Left, Right : TransactionEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References."=";
   subtype TransactionEntity_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References.TransactionEntity_Access_Array;
   function "=" (Left, Right : TransactionEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References."=";
   subtype TransactionEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References.TransactionEntity_Access_Array_Access;
   function "=" (Left, Right : TransactionEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References."=";
   subtype TransactionEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References.TransactionEntity_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References."=";
   subtype TransactionEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References.TransactionEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntity_Package_References."=";

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



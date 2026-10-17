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
with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package PaymentTransactionKeysFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;
   package TransactionResult_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;
   package TransactionResultInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type TransactionResultEntity is tagged;
   type TransactionResultEntity_Access is access all TransactionResultEntity'Class;
   type TransactionResultEntity_Access_Array is array (Natural range <>) of TransactionResultEntity_Access;
   type TransactionResultEntity_Access_Array_Access is access all TransactionResultEntity_Access_Array;

   type TransactionResultEntity is new AbSqlBean and TransactionResultEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransactionResultEntity'Class);
   function Create return TransactionResultEntity_Access;
   procedure remove (This : in out TransactionResultEntity; userName : Unbounded_String; orderNumber : Unbounded_String);
   procedure add (This : in out TransactionResultEntity; userName : Unbounded_String; orderNumber : Unbounded_String; transactionResultInterface_Param : access TransactionResultInterface_Package.TransactionResultInterface'Class);
   function getTransactionResultInterface (This : in out TransactionResultEntity; orderNumber : Unbounded_String) return TransactionResultInterface_Access;
   procedure getTransactionResultInterface (This : in out TransactionResultEntity; orderNumber : Unbounded_String);
   function createTableStatement (This : in out TransactionResultEntity) return Unbounded_String;
   function createTable (This : in out TransactionResultEntity) return Unbounded_String;
   function dropTable (This : in out TransactionResultEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package;



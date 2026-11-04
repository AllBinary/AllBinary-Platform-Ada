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

limited with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package;
package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References is
   type TransactionResultEntity_Access is access all org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package.TransactionResultEntity'Class;
   type TransactionResultEntity_Access_Array is array (Natural range <>) of TransactionResultEntity_Access;
   type TransactionResultEntity_Access_Array_Access is access all TransactionResultEntity_Access_Array;
   type TransactionResultEntity_Access_Array_Access_Array is array (Natural range <>) of TransactionResultEntity_Access_Array_Access;
   type TransactionResultEntity_Access_Array_Access_Array_Access is access all TransactionResultEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package is

   package TransactionResultInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package Reference_Types is
   subtype TransactionResultInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access;
   use type TransactionResultInterface_Access;
   subtype TransactionResultInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array;
   use type TransactionResultInterface_Access_Array;
   subtype TransactionResultInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access;
   use type TransactionResultInterface_Access_Array_Access;
   subtype TransactionResultInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array;
   use type TransactionResultInterface_Access_Array_Access_Array;
   subtype TransactionResultInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package_References.TransactionResultInterface_Access_Array_Access_Array_Access;
   use type TransactionResultInterface_Access_Array_Access_Array_Access;
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


   subtype TransactionResultEntity_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References.TransactionResultEntity_Access;
   function "=" (Left, Right : TransactionResultEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References."=";
   subtype TransactionResultEntity_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References.TransactionResultEntity_Access_Array;
   function "=" (Left, Right : TransactionResultEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References."=";
   subtype TransactionResultEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References.TransactionResultEntity_Access_Array_Access;
   function "=" (Left, Right : TransactionResultEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References."=";
   subtype TransactionResultEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References.TransactionResultEntity_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionResultEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References."=";
   subtype TransactionResultEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References.TransactionResultEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionResultEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntity_Package_References."=";

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



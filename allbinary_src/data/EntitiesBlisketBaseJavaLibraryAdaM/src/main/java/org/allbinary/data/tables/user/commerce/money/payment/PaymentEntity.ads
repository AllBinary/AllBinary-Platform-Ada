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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package; use org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type PaymentEntity is tagged;
   type PaymentEntity_Access is access all PaymentEntity'Class;
   type PaymentEntity_Access_Array is array (Natural range <>) of PaymentEntity_Access;
   type PaymentEntity_Access_Array_Access is access all PaymentEntity_Access_Array;
   type PaymentEntity_Access_Array_Access_Array is array (Natural range <>) of PaymentEntity_Access_Array_Access;
   type PaymentEntity_Access_Array_Access_Array_Access is access all PaymentEntity_Access_Array_Access_Array;

   type PaymentEntity is new AbSqlBean and PaymentEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentEntity'Class);
   function Create return PaymentEntity_Access;
   function getLastId (This : in out PaymentEntity; userName : Unbounded_String) return Unbounded_String;
   procedure getLastId (This : in out PaymentEntity; userName : Unbounded_String);
   procedure setDefault (This : in out PaymentEntity; userName : Unbounded_String; index : Integer);
   function get (This : in out PaymentEntity; userName : Unbounded_String) return BasicArrayList_Access;
   procedure get (This : in out PaymentEntity; userName : Unbounded_String);
   function getDefault (This : in out PaymentEntity; userName : Unbounded_String) return PaymentInterface_Access;
   procedure getDefault (This : in out PaymentEntity; userName : Unbounded_String);
   procedure remove (This : in out PaymentEntity; userName : Unbounded_String; index : Integer);
   procedure add (This : in out PaymentEntity; userName : Unbounded_String; paymentInterface_Param : access PaymentInterface_Package.PaymentInterface'Class);
   function createTableStatement (This : in out PaymentEntity) return Unbounded_String;
   function createTable (This : in out PaymentEntity) return Unbounded_String;
   function drop (This : in out PaymentEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity_Package;



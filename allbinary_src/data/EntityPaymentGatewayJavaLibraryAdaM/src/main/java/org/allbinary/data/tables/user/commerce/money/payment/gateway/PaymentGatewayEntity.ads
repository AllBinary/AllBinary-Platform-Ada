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
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type PaymentGatewayEntity is tagged;
   type PaymentGatewayEntity_Access is access all PaymentGatewayEntity'Class;
   type PaymentGatewayEntity_Access_Array is array (Natural range <>) of PaymentGatewayEntity_Access;
   type PaymentGatewayEntity_Access_Array_Access is access all PaymentGatewayEntity_Access_Array;
   type PaymentGatewayEntity_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayEntity_Access_Array_Access;
   type PaymentGatewayEntity_Access_Array_Access_Array_Access is access all PaymentGatewayEntity_Access_Array_Access_Array;

   type PaymentGatewayEntity is new AbSqlBean and PaymentGatewayEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentGatewayEntity'Class);
   function Create return PaymentGatewayEntity_Access;
   procedure add (This : in out PaymentGatewayEntity; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class);
   procedure update (This : in out PaymentGatewayEntity; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class);
   function getPaymentGatewayInterface (This : in out PaymentGatewayEntity; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentGatewayInterface_Access;
   procedure getPaymentGatewayInterface (This : in out PaymentGatewayEntity; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class);
   function findPaymentTypeVectorByStore (This : in out PaymentGatewayEntity; storeName : Unbounded_String) return BasicArrayList_Access;
   procedure findPaymentTypeVectorByStore (This : in out PaymentGatewayEntity; storeName : Unbounded_String);
   procedure remove (This : in out PaymentGatewayEntity; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class);
   function createTableStatement (This : in out PaymentGatewayEntity) return Unbounded_String;
   function createTable (This : in out PaymentGatewayEntity) return Unbounded_String;
   function dropTable (This : in out PaymentGatewayEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;



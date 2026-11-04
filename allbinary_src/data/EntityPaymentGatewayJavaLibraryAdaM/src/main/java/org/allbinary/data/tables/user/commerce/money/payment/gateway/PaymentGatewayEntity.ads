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

limited with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;
package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References is
   type PaymentGatewayEntity_Access is access all org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package.PaymentGatewayEntity'Class;
   type PaymentGatewayEntity_Access_Array is array (Natural range <>) of PaymentGatewayEntity_Access;
   type PaymentGatewayEntity_Access_Array_Access is access all PaymentGatewayEntity_Access_Array;
   type PaymentGatewayEntity_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayEntity_Access_Array_Access;
   type PaymentGatewayEntity_Access_Array_Access_Array_Access is access all PaymentGatewayEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype PaymentGatewayInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access;
   use type PaymentGatewayInterface_Access;
   subtype PaymentGatewayInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array;
   use type PaymentGatewayInterface_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access;
   subtype PaymentGatewayInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array;
   use type PaymentGatewayInterface_Access_Array_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access_Array_Access;
   subtype BasicPaymentType_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access;
   use type BasicPaymentType_Access;
   subtype BasicPaymentType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array;
   use type BasicPaymentType_Access_Array;
   subtype BasicPaymentType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access;
   use type BasicPaymentType_Access_Array_Access;
   subtype BasicPaymentType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array;
   use type BasicPaymentType_Access_Array_Access_Array;
   subtype BasicPaymentType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array_Access;
   use type BasicPaymentType_Access_Array_Access_Array_Access;
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


   subtype PaymentGatewayEntity_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access;
   function "=" (Left, Right : PaymentGatewayEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References."=";
   subtype PaymentGatewayEntity_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array;
   function "=" (Left, Right : PaymentGatewayEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References."=";
   subtype PaymentGatewayEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References."=";
   subtype PaymentGatewayEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References."=";
   subtype PaymentGatewayEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References.PaymentGatewayEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package_References."=";

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



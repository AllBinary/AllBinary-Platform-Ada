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
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type PaymentGatewayEntityInterface is interface and BasicDataTableInterface;
   type PaymentGatewayEntityInterface_Access is access all PaymentGatewayEntityInterface'Class;
   type PaymentGatewayEntityInterface_Access_Array is array (Natural range <>) of PaymentGatewayEntityInterface_Access;
   type PaymentGatewayEntityInterface_Access_Array_Access is access all PaymentGatewayEntityInterface_Access_Array;
   type PaymentGatewayEntityInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayEntityInterface_Access_Array_Access;
   type PaymentGatewayEntityInterface_Access_Array_Access_Array_Access is access all PaymentGatewayEntityInterface_Access_Array_Access_Array;
   function getPaymentGatewayInterface (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentGatewayInterface_Access is abstract;
   function findPaymentTypeVectorByStore (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure remove (This : in out PaymentGatewayEntityInterface; storeName : Unbounded_String; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is abstract;
   procedure add (This : in out PaymentGatewayEntityInterface; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is abstract;
   procedure update (This : in out PaymentGatewayEntityInterface; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityInterface_Package;



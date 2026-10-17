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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;

   type PaymentGatewayMapping is tagged;
   type PaymentGatewayMapping_Access is access all PaymentGatewayMapping'Class;
   type PaymentGatewayMapping_Access_Array is array (Natural range <>) of PaymentGatewayMapping_Access;
   type PaymentGatewayMapping_Access_Array_Access is access all PaymentGatewayMapping_Access_Array;

   type PaymentGatewayMapping is new TableMappingInterface with record
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayMapping'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface'Class);
   function Create (paymentGatewayInterface_Param : access PaymentGatewayInterface'Class) return PaymentGatewayMapping_Access;
   function toHashMap (This : in out PaymentGatewayMapping) return HashMap_Access;
   function toVector (This : in out PaymentGatewayMapping) return BasicArrayList_Access;
   function getKey (This : in out PaymentGatewayMapping) return Java_Object_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayMapping_Package;



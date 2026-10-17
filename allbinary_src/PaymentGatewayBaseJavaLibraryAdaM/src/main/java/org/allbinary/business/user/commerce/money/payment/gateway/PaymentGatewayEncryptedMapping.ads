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

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames org.allbinary.data.tables.TableMappingInterface_Package;

   type PaymentGatewayEncryptedMapping is tagged;
   type PaymentGatewayEncryptedMapping_Access is access all PaymentGatewayEncryptedMapping'Class;
   type PaymentGatewayEncryptedMapping_Access_Array is array (Natural range <>) of PaymentGatewayEncryptedMapping_Access;
   type PaymentGatewayEncryptedMapping_Access_Array_Access is access all PaymentGatewayEncryptedMapping_Access_Array;

   type PaymentGatewayEncryptedMapping is new TableMappingInterface with record
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayEncryptedMapping'Class; paymentGatewayInterface : PaymentGatewayInterface_Access);
   function Create (paymentGatewayInterface : PaymentGatewayInterface_Access) return PaymentGatewayEncryptedMapping_Access;
   function toHashMap (This : in out PaymentGatewayEncryptedMapping) return HashMap_Access;
   procedure toHashMap (This : in out PaymentGatewayEncryptedMapping);
   function toVector (This : in out PaymentGatewayEncryptedMapping) return BasicArrayList_Access;
   procedure toVector (This : in out PaymentGatewayEncryptedMapping);
   function getKey (This : in out PaymentGatewayEncryptedMapping) return Java_Object_Access;
   procedure getKey (This : in out PaymentGatewayEncryptedMapping);

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping_Package;



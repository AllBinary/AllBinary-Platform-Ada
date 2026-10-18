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
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;

package org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package is


   type PaymentGatewayEntityFactory is tagged;
   type PaymentGatewayEntityFactory_Access is access all PaymentGatewayEntityFactory'Class;
   type PaymentGatewayEntityFactory_Access_Array is array (Natural range <>) of PaymentGatewayEntityFactory_Access;
   type PaymentGatewayEntityFactory_Access_Array_Access is access all PaymentGatewayEntityFactory_Access_Array;
   type PaymentGatewayEntityFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayEntityFactory_Access_Array_Access;
   type PaymentGatewayEntityFactory_Access_Array_Access_Array_Access is access all PaymentGatewayEntityFactory_Access_Array_Access_Array;

   type PaymentGatewayEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out PaymentGatewayEntityFactory'Class);
   function Create return PaymentGatewayEntityFactory_Access;
   function getInstance return PaymentGatewayEntity_Access;

end org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;



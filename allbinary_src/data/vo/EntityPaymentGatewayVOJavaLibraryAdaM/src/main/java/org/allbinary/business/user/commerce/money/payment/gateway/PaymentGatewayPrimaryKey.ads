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
with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.Serializable_Package; use org.allbinary.business.user.commerce.money.payment.gateway.Serializable_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package is

   package StoreFront_Package renames org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type PaymentGatewayPrimaryKey is tagged;
   type PaymentGatewayPrimaryKey_Access is access all PaymentGatewayPrimaryKey'Class;
   type PaymentGatewayPrimaryKey_Access_Array is array (Natural range <>) of PaymentGatewayPrimaryKey_Access;
   type PaymentGatewayPrimaryKey_Access_Array_Access is access all PaymentGatewayPrimaryKey_Access_Array;

   type PaymentGatewayPrimaryKey is new Serializable with record
      storeName : Unbounded_String;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentGatewayPrimaryKey'Class; storeName : Unbounded_String; gatewayName : Unbounded_String);
   function Create (storeName : Unbounded_String; gatewayName : Unbounded_String) return PaymentGatewayPrimaryKey_Access;
   function getStoreName (This : in out PaymentGatewayPrimaryKey) return Unbounded_String;
   procedure getStoreName (This : in out PaymentGatewayPrimaryKey);
   procedure setStoreName (This : in out PaymentGatewayPrimaryKey; storeName : Unbounded_String);
   function getName (This : in out PaymentGatewayPrimaryKey) return Unbounded_String;
   procedure getName (This : in out PaymentGatewayPrimaryKey);
   procedure setName (This : in out PaymentGatewayPrimaryKey; name : Unbounded_String);
   function toString (This : in out PaymentGatewayPrimaryKey) return Unbounded_String;
   procedure toString (This : in out PaymentGatewayPrimaryKey);

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;



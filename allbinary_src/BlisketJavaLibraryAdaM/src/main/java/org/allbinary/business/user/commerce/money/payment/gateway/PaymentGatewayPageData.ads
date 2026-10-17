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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.business.user.commerce.money.payment_Case.gateway.PaymentGatewayPageData_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type PaymentGatewayPageData is tagged;
   type PaymentGatewayPageData_Access is access all PaymentGatewayPageData'Class;
   type PaymentGatewayPageData_Access_Array is array (Natural range <>) of PaymentGatewayPageData_Access;
   type PaymentGatewayPageData_Access_Array_Access is access all PaymentGatewayPageData_Access_Array;

   type PaymentGatewayPageData is new Java_Object with record
      MAKEPAYMENT : Unbounded_String;
      CHECKOUT : Unbounded_String;
      SHIPPING : Unbounded_String;
      SHIPPINGADDRESS : Unbounded_String;
      SHIPPINGADDRESSACTION : Unbounded_String;
      BILLINGADDRESS : Unbounded_String;
      PAYMENT : Unbounded_String;
      AUTHORIZE : Unbounded_String;
      FINISH : Unbounded_String;
   end record;
   EXTENSION : Unbounded_String;
   NAME : Unbounded_String;
   FORWARDMAKEPAYMENT : Unbounded_String;
   PAYMENTOPTIONS : Unbounded_String;
   STARTCHECKOUT : Unbounded_String;

   procedure Initialize (This : in out PaymentGatewayPageData'Class; location : Unbounded_String; paymentMethod : Unbounded_String);
   function Create (location : Unbounded_String; paymentMethod : Unbounded_String) return PaymentGatewayPageData_Access;

end org.allbinary.business.user.commerce.money.payment_Case.gateway.PaymentGatewayPageData_Package;



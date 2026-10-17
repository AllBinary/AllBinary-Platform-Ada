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

package org.allbinary.business.user.commerce.money.payment.PaymentData_Package is


   type PaymentData is tagged;
   type PaymentData_Access is access all PaymentData'Class;
   type PaymentData_Access_Array is array (Natural range <>) of PaymentData_Access;
   type PaymentData_Access_Array_Access is access all PaymentData_Access_Array;

   type PaymentData is new Java_Object with null record;
   MIN : Integer;
   MAX : Integer;
   ADDNEW : Unbounded_String;
   VIEW : Unbounded_String;
   SELECT_Id : Unbounded_String;
   CHANGE : Unbounded_String;
   PAYMENT : Unbounded_String;
   METHOD : Unbounded_String;
   ID : Unbounded_String;
   NUMBER : Unbounded_String;
   NAME : Unbounded_String;
   TYPE_Id : Unbounded_String;
   EXPIRATION : Unbounded_String;
   TENDERTYPE : Unbounded_String;
   TRANSACTIONTYPE : Unbounded_String;
   ABA : Unbounded_String;
   ACCOUNT : Unbounded_String;
   ACCOUNTTYPE : Unbounded_String;
   AUTHORIZATIONCODE : Unbounded_String;
   CHECKNUMBER : Unbounded_String;
   CHECKTYPE : Unbounded_String;
   DRIVERSLICENSE : Unbounded_String;
   MAGNETICINKCHECKREADER : Unbounded_String;

   procedure Initialize (This : in out PaymentData'Class);
   function Create return PaymentData_Access;

end org.allbinary.business.user.commerce.money.payment.PaymentData_Package;



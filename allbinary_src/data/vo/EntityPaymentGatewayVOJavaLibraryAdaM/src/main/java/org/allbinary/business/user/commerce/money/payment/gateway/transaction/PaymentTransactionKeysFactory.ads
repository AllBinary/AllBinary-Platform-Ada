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
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package is


   type PaymentTransactionKeysFactory is tagged;
   type PaymentTransactionKeysFactory_Access is access all PaymentTransactionKeysFactory'Class;
   type PaymentTransactionKeysFactory_Access_Array is array (Natural range <>) of PaymentTransactionKeysFactory_Access;
   type PaymentTransactionKeysFactory_Access_Array_Access is access all PaymentTransactionKeysFactory_Access_Array;
   type PaymentTransactionKeysFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionKeysFactory_Access_Array_Access;
   type PaymentTransactionKeysFactory_Access_Array_Access_Array_Access is access all PaymentTransactionKeysFactory_Access_Array_Access_Array;

   type PaymentTransactionKeysFactory is new Java_Object with record
      TRXTYPE : PaymentTransactionKeys_Access;
      TENDER : PaymentTransactionKeys_Access;
      ACCT : PaymentTransactionKeys_Access;
      EXPDATE : PaymentTransactionKeys_Access;
      AMT : PaymentTransactionKeys_Access;
      AUTHCODE : PaymentTransactionKeys_Access;
      MICR : PaymentTransactionKeys_Access;
      CHECKNUM : PaymentTransactionKeys_Access;
      NAME : PaymentTransactionKeys_Access;
      STREET : PaymentTransactionKeys_Access;
      CITY : PaymentTransactionKeys_Access;
      STATE : PaymentTransactionKeys_Access;
      ZIP : PaymentTransactionKeys_Access;
      DL : PaymentTransactionKeys_Access;
      EMAIL : PaymentTransactionKeys_Access;
      COMMENT1 : PaymentTransactionKeys_Access;
      COMMENT2 : PaymentTransactionKeys_Access;
      ORIGID : PaymentTransactionKeys_Access;
      PONUM : PaymentTransactionKeys_Access;
      DESC : PaymentTransactionKeys_Access;
      DESC1TO4 : PaymentTransactionKeys_Access;
      INVNUM : PaymentTransactionKeys_Access;
      SHIPTOZIP : PaymentTransactionKeys_Access;
      SWIPE : PaymentTransactionKeys_Access;
      TAXAMT : PaymentTransactionKeys_Access;
      COMMCARD : PaymentTransactionKeys_Access;
      DUTYAMT : PaymentTransactionKeys_Access;
      FRIEGHTAMT : PaymentTransactionKeys_Access;
      ORDERDATE : PaymentTransactionKeys_Access;
      TAXEXEMPT : PaymentTransactionKeys_Access;
      COUNTRYCODE : PaymentTransactionKeys_Access;
      CUSTCODE : PaymentTransactionKeys_Access;
      CVV2 : PaymentTransactionKeys_Access;
      ABA : PaymentTransactionKeys_Access;
      ACCTTYPE : PaymentTransactionKeys_Access;
      DISCOUNT : PaymentTransactionKeys_Access;
      FIRSTNAME : PaymentTransactionKeys_Access;
      LASTNAME : PaymentTransactionKeys_Access;
      SHIPFROMZIP : PaymentTransactionKeys_Access;
      PRENOTE : PaymentTransactionKeys_Access;
      CHKTYPE : PaymentTransactionKeys_Access;
      DOB : PaymentTransactionKeys_Access;
      PHONENUM : PaymentTransactionKeys_Access;
      SS : PaymentTransactionKeys_Access;
      COMPANYNAME : PaymentTransactionKeys_Access;
      COUNTRY : PaymentTransactionKeys_Access;
      FREIGHTAMT : PaymentTransactionKeys_Access;
      SHIPTOCITY : PaymentTransactionKeys_Access;
      SHIPTOFIRSTNAME : PaymentTransactionKeys_Access;
      SHIPTOLASTNAME : PaymentTransactionKeys_Access;
      SHIPTOSTATE : PaymentTransactionKeys_Access;
      SHIPTOSTREET : PaymentTransactionKeys_Access;
      SPECIAL1 : PaymentTransactionKeys_Access;
      SPECIAL2 : PaymentTransactionKeys_Access;
      SPECIAL3 : PaymentTransactionKeys_Access;
      PARTNER : PaymentTransactionKeys_Access;
      VENDOR : PaymentTransactionKeys_Access;
      USER : PaymentTransactionKeys_Access;
      PWD : PaymentTransactionKeys_Access;
      CHKNUM : PaymentTransactionKeys_Access;
      AVSADDR : PaymentTransactionKeys_Access;
      AVSZIP : PaymentTransactionKeys_Access;
      PNREF : PaymentTransactionKeys_Access;
      RESPMSG : PaymentTransactionKeys_Access;
      RESULT : PaymentTransactionKeys_Access;
      ORIGRESULT : PaymentTransactionKeys_Access;
      STATUS : PaymentTransactionKeys_Access;
      FRAUDCODE : PaymentTransactionKeys_Access;
      FRAUDMSG : PaymentTransactionKeys_Access;
      ERRCODE : PaymentTransactionKeys_Access;
      SCORE : PaymentTransactionKeys_Access;
      REASON1 : PaymentTransactionKeys_Access;
      REASON2 : PaymentTransactionKeys_Access;
      REASON3 : PaymentTransactionKeys_Access;
      EXCEPTION1 : PaymentTransactionKeys_Access;
      EXCEPTION2 : PaymentTransactionKeys_Access;
      EXCEPTION3 : PaymentTransactionKeys_Access;
      EXCEPTION4 : PaymentTransactionKeys_Access;
      EXCEPTION5 : PaymentTransactionKeys_Access;
      EXCEPTION6 : PaymentTransactionKeys_Access;
      EXCEPTION7 : PaymentTransactionKeys_Access;
   end record;
   instance : PaymentTransactionKeysFactory_Access;

   procedure Initialize (This : in out PaymentTransactionKeysFactory'Class);
   function Create return PaymentTransactionKeysFactory_Access;
   function getInstance return PaymentTransactionKeysFactory_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;



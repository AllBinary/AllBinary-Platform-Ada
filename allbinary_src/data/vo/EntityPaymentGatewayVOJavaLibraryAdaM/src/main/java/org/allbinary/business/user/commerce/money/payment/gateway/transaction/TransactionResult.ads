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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type TransactionResult is tagged;
   type TransactionResult_Access is access all TransactionResult'Class;
   type TransactionResult_Access_Array is array (Natural range <>) of TransactionResult_Access;
   type TransactionResult_Access_Array_Access is access all TransactionResult_Access_Array;

   type TransactionResult is new TransactionResultInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      keyValuePairs : HashMap_Access;
      result : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransactionResult'Class; result : Unbounded_String);
   function Create (result : Unbounded_String) return TransactionResult_Access;
   procedure Initialize (This : in out TransactionResult'Class; keyValuePairs_Param : access HashMap_Package.HashMap'Class);
   function Create (keyValuePairs_Param : access HashMap_Package.HashMap'Class) return TransactionResult_Access;
   function toString (This : in out TransactionResult) return Unbounded_String;
   function toHashMap (This : in out TransactionResult) return HashMap_Access;
   function getAllPossibleKeys (This : in out TransactionResult) return BasicArrayList_Access;
   function getValues (This : in out TransactionResult) return BasicArrayList_Access;
   function getPnRef (This : in out TransactionResult) return Unbounded_String;
   function getRespMsg (This : in out TransactionResult) return Unbounded_String;
   function getResult (This : in out TransactionResult) return Unbounded_String;
   function getScore (This : in out TransactionResult) return Unbounded_String;
   function getStatus (This : in out TransactionResult) return Unbounded_String;
   function getFraudCode (This : in out TransactionResult) return Unbounded_String;
   function getFraudMsg (This : in out TransactionResult) return Unbounded_String;
   function getOrigResult (This : in out TransactionResult) return Unbounded_String;
   function getAvsAddr (This : in out TransactionResult) return Unbounded_String;
   function getAvsZip (This : in out TransactionResult) return Unbounded_String;
   function getErrCode (This : in out TransactionResult) return Unbounded_String;
   function getException1 (This : in out TransactionResult) return Unbounded_String;
   function getException2 (This : in out TransactionResult) return Unbounded_String;
   function getException3 (This : in out TransactionResult) return Unbounded_String;
   function getException4 (This : in out TransactionResult) return Unbounded_String;
   function getException5 (This : in out TransactionResult) return Unbounded_String;
   function getException6 (This : in out TransactionResult) return Unbounded_String;
   function getException7 (This : in out TransactionResult) return Unbounded_String;
   function getReason1 (This : in out TransactionResult) return Unbounded_String;
   function getReason2 (This : in out TransactionResult) return Unbounded_String;
   function getReason3 (This : in out TransactionResult) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;



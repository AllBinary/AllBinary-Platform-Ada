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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out TransactionResult'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransactionResult'Class; result : Unbounded_String) is
      tokenizer : Tokenizer_Access;
      tokens : BasicArrayList_Access;
      tokenizer2 : Tokenizer_Access;
      hashtable : ABHashtable_Access;
      exceptionMessage : Unbounded_String;
   begin
      Initialize_Fields (This);
        begin
            This.result := result;
            tokenizer := Tokenizer_Package.Create (CommonSeps_Package.getInstance.AMPERSAND);
            tokens := tokenizer.getTokensFromString (result, BasicArrayListD_Package.Create);
            tokenizer2 := Tokenizer_Package.Create (CommonSeps_Package.getInstance.EQUALS);
            hashtable := tokenizer2.getTokens (tokens);
            This.keyValuePairs.putAll (hashtable);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            exceptionMessage := To_Unbounded_String ("TransactionResult Constructor Failed");
            This.logUtil.putF (exceptionMessage, TransactionResult_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                end;
        end;
   end Initialize;

   function Create (result : Unbounded_String) return TransactionResult_Access is
      This : constant TransactionResult_Access := new TransactionResult;
   begin
      TransactionResult_Package.Initialize (This.all, result);
      return This;
   end Create;

   procedure Initialize (This : in out TransactionResult'Class; keyValuePairs_Param : access HashMap_Package.HashMap'Class) is
      keyValuePairs : HashMap_Access := HashMap_Access (keyValuePairs_Param);
   begin
      Initialize_Fields (This);
        keyValuePairs := keyValuePairs;
        This.result := To_Unbounded_String ("Needs to have the hashmap converted to string for other constructor");
   end Initialize;

   function Create (keyValuePairs_Param : access HashMap_Package.HashMap'Class) return TransactionResult_Access is
      This : constant TransactionResult_Access := new TransactionResult;
   begin
      TransactionResult_Package.Initialize (This.all, keyValuePairs_Param);
      return This;
   end Create;

   function toString (This : in out TransactionResult) return Unbounded_String is
   begin
        return This.result;
   end toString;

   function toHashMap (This : in out TransactionResult) return HashMap_Access is
   begin
        return This.keyValuePairs;
   end toHashMap;

   function getAllPossibleKeys (This : in out TransactionResult) return BasicArrayList_Access is
      paymentTransactionKeysFactory : PaymentTransactionKeysFactory_Access;
      verisignResponseKeys : BasicArrayList_Access;
   begin
        paymentTransactionKeysFactory := PaymentTransactionKeysFactory_Package.getInstance;
        verisignResponseKeys := BasicArrayList_Access (BasicArrayListD_Package.Create);
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.RESULT.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.PNREF.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.RESPMSG.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.AUTHCODE.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.AVSADDR.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.AVSZIP.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.ORIGRESULT.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.STATUS.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.FRAUDCODE.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.FRAUDMSG.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.ERRCODE.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.SCORE.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.REASON1.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.REASON2.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.REASON3.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION1.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION2.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION3.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION4.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION5.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION6.toString));
        verisignResponseKeys.add (Java_Box (paymentTransactionKeysFactory.EXCEPTION7.toString));
        return verisignResponseKeys;
   end getAllPossibleKeys;

   function getValues (This : in out TransactionResult) return BasicArrayList_Access is
      keyVector : BasicArrayList_Access;
      valueVector : BasicArrayList_Access;
      size : Integer;
      key : Unbounded_String;
      stringUtil : StringUtil_Access;
      i : Integer;
   begin
        keyVector := TransactionResult'Class (This).getAllPossibleKeys;
        valueVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := keyVector.size;
        for i in 0 .. (size) - 1 loop
            key := Java_Unbox (keyVector.get (i));
            if This.keyValuePairs.containsKey (Java_Box (key)) then
                valueVector.add (This.keyValuePairs.get (Java_Box (key)));
            else
                stringUtil := StringUtil_Package.getInstance;
                valueVector.add (Java_Box (stringUtil.EMPTY_STRING));
            end if;
        end loop;
        return valueVector;
   end getValues;

   function getPnRef (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.PNREF.toString)));
   end getPnRef;

   function getRespMsg (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.RESPMSG.toString)));
   end getRespMsg;

   function getResult (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.RESULT.toString)));
   end getResult;

   function getScore (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.SCORE.toString)));
   end getScore;

   function getStatus (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.STATUS.toString)));
   end getStatus;

   function getFraudCode (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.FRAUDCODE.toString)));
   end getFraudCode;

   function getFraudMsg (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.FRAUDMSG.toString)));
   end getFraudMsg;

   function getOrigResult (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.ORIGRESULT.toString)));
   end getOrigResult;

   function getAvsAddr (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.AVSADDR.toString)));
   end getAvsAddr;

   function getAvsZip (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.AVSZIP.toString)));
   end getAvsZip;

   function getErrCode (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.ERRCODE.toString)));
   end getErrCode;

   function getException1 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION1.toString)));
   end getException1;

   function getException2 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION2.toString)));
   end getException2;

   function getException3 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION3.toString)));
   end getException3;

   function getException4 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION4.toString)));
   end getException4;

   function getException5 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION5.toString)));
   end getException5;

   function getException6 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION6.toString)));
   end getException6;

   function getException7 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION7.toString)));
   end getException7;

   function getReason1 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.REASON1.toString)));
   end getReason1;

   function getReason2 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.REASON2.toString)));
   end getReason2;

   function getReason3 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Java_Unbox (This.keyValuePairs.get (Java_Box (PaymentTransactionKeysFactory_Package.getInstance.REASON3.toString)));
   end getReason3;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;



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


package body org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package is

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
            when e : others =>
            exceptionMessage := To_Unbounded_String ("TransactionResult Constructor Failed");
            This.logUtil.putF (exceptionMessage, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end;
   end Initialize;

   function Create (result : Unbounded_String) return TransactionResult_Access is
      This : constant TransactionResult_Access := new TransactionResult;
   begin
      Initialize (This.all, result);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransactionResult'Class; keyValuePairs : HashMap_Access) is
   begin
      Initialize_Fields (This);
        keyValuePairs := keyValuePairs;
        This.result := To_Unbounded_String ("Needs to have the hashmap converted to string for other constructor");
   end Initialize;

   function Create (keyValuePairs : HashMap_Access) return TransactionResult_Access is
      This : constant TransactionResult_Access := new TransactionResult;
   begin
      Initialize (This.all, keyValuePairs);
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
        verisignResponseKeys := BasicArrayListD_Package.Create;
        verisignResponseKeys.add (paymentTransactionKeysFactory.RESULT.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.PNREF.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.RESPMSG.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.AUTHCODE.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.AVSADDR.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.AVSZIP.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.ORIGRESULT.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.STATUS.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.FRAUDCODE.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.FRAUDMSG.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.ERRCODE.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.SCORE.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.REASON1.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.REASON2.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.REASON3.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION1.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION2.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION3.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION4.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION5.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION6.toString);
        verisignResponseKeys.add (paymentTransactionKeysFactory.EXCEPTION7.toString);
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
        keyVector := This.getAllPossibleKeys;
        valueVector := BasicArrayListD_Package.Create;
        size := keyVector.size;
        for i in 0 .. (size) - 1 loop
            key := Unbounded_String (keyVector.get (i));
            if This.keyValuePairs.containsKey (key) then
                valueVector.add (This.keyValuePairs.get (key));
            else
                stringUtil := StringUtil_Package.getInstance;
                valueVector.add (stringUtil.EMPTY_STRING);
            end if;
        end loop;
        return valueVector;
   end getValues;

   function getPnRef (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.PNREF.toString));
   end getPnRef;

   function getRespMsg (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.RESPMSG.toString));
   end getRespMsg;

   function getResult (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.RESULT.toString));
   end getResult;

   function getScore (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.SCORE.toString));
   end getScore;

   function getStatus (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.STATUS.toString));
   end getStatus;

   function getFraudCode (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.FRAUDCODE.toString));
   end getFraudCode;

   function getFraudMsg (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.FRAUDMSG.toString));
   end getFraudMsg;

   function getOrigResult (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.ORIGRESULT.toString));
   end getOrigResult;

   function getAvsAddr (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.AVSADDR.toString));
   end getAvsAddr;

   function getAvsZip (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.AVSZIP.toString));
   end getAvsZip;

   function getErrCode (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.ERRCODE.toString));
   end getErrCode;

   function getException1 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION1.toString));
   end getException1;

   function getException2 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION2.toString));
   end getException2;

   function getException3 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION3.toString));
   end getException3;

   function getException4 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION4.toString));
   end getException4;

   function getException5 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION5.toString));
   end getException5;

   function getException6 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION6.toString));
   end getException6;

   function getException7 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.EXCEPTION7.toString));
   end getException7;

   function getReason1 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.REASON1.toString));
   end getReason1;

   function getReason2 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.REASON2.toString));
   end getReason2;

   function getReason3 (This : in out TransactionResult) return Unbounded_String is
   begin
        return Unbounded_String (This.keyValuePairs.get (PaymentTransactionKeysFactory_Package.getInstance.REASON3.toString));
   end getReason3;

   procedure toString (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure toHashMap (This : in out TransactionResult) is
      Java_Result : constant HashMap_Access := TransactionResult'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure getAllPossibleKeys (This : in out TransactionResult) is
      Java_Result : constant BasicArrayList_Access := TransactionResult'Class (This).getAllPossibleKeys;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAllPossibleKeys;

   procedure getValues (This : in out TransactionResult) is
      Java_Result : constant BasicArrayList_Access := TransactionResult'Class (This).getValues;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getValues;

   procedure getPnRef (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getPnRef;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPnRef;

   procedure getRespMsg (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getRespMsg;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRespMsg;

   procedure getResult (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getResult;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getResult;

   procedure getScore (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getScore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScore;

   procedure getStatus (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getStatus;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStatus;

   procedure getFraudCode (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getFraudCode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFraudCode;

   procedure getFraudMsg (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getFraudMsg;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFraudMsg;

   procedure getOrigResult (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getOrigResult;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrigResult;

   procedure getAvsAddr (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getAvsAddr;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAvsAddr;

   procedure getAvsZip (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getAvsZip;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAvsZip;

   procedure getErrCode (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getErrCode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getErrCode;

   procedure getException1 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException1;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException1;

   procedure getException2 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException2;

   procedure getException3 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException3;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException3;

   procedure getException4 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException4;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException4;

   procedure getException5 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException5;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException5;

   procedure getException6 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException6;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException6;

   procedure getException7 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getException7;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getException7;

   procedure getReason1 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getReason1;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReason1;

   procedure getReason2 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getReason2;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReason2;

   procedure getReason3 (This : in out TransactionResult) is
      Java_Result : constant Unbounded_String := TransactionResult'Class (This).getReason3;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReason3;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult_Package;



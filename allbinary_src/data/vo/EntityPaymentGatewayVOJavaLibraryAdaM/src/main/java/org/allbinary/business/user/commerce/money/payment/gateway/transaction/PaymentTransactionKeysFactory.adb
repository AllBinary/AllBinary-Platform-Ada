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


package body org.allbinary.business.user_Case.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package is

   procedure Initialize_Fields (This : in out PaymentTransactionKeysFactory'Class) is
   begin
      null;
      This.TRXTYPE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("TRXTYPE"));
      This.TENDER := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("TENDER"));
      This.ACCT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ACCT"));
      This.EXPDATE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXPDATE"));
      This.AMT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("AMT"));
      This.AUTHCODE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("AUTHCODE"));
      This.MICR := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("MICR"));
      This.CHECKNUM := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("CHECKNUM"));
      This.NAME := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("NAME"));
      This.STREET := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("STREET"));
      This.CITY := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("CITY"));
      This.STATE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("STATE"));
      This.ZIP := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ZIP"));
      This.DL := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("DL"));
      This.EMAIL := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EMAIL"));
      This.COMMENT1 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("COMMENT1"));
      This.COMMENT2 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("COMMENT2"));
      This.ORIGID := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ORIGID"));
      This.PONUM := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PONUM"));
      This.DESC := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PaymentTransactionDESC"));
      This.DESC1TO4 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("DESC1TO4"));
      This.INVNUM := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("INVNUM"));
      This.SHIPTOZIP := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPTOZIP"));
      This.SWIPE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SWIPE"));
      This.TAXAMT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("TAXAMT"));
      This.COMMCARD := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("COMMCARD"));
      This.DUTYAMT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("DUTYAMT"));
      This.FRIEGHTAMT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("FRIEGHTAMT"));
      This.ORDERDATE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ORDERDATE"));
      This.TAXEXEMPT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("TAXEXEMPT"));
      This.COUNTRYCODE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("COUNTRYCODE"));
      This.CUSTCODE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("CUSTCODE"));
      This.CVV2 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("CVV2"));
      This.ABA := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ABA"));
      This.ACCTTYPE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ACCTTYPE"));
      This.DISCOUNT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("DISCOUNT"));
      This.FIRSTNAME := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("FIRSTNAME"));
      This.LASTNAME := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("LASNAME"));
      This.SHIPFROMZIP := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPFROMZIP"));
      This.PRENOTE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PRENOTE"));
      This.CHKTYPE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("CHKTYPE"));
      This.DOB := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("DOB"));
      This.PHONENUM := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PHONENUM"));
      This.SS := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SS"));
      This.COMPANYNAME := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("COMPANYNAME"));
      This.COUNTRY := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("COUNTRY"));
      This.FREIGHTAMT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("FREIGHTAMT"));
      This.SHIPTOCITY := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPTOCITY"));
      This.SHIPTOFIRSTNAME := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPTOFIRSTNAME"));
      This.SHIPTOLASTNAME := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPTOLASTNAME"));
      This.SHIPTOSTATE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPTOSTATE"));
      This.SHIPTOSTREET := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SHIPTOSTREET"));
      This.SPECIAL1 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SPECIAL1"));
      This.SPECIAL2 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SPECIAL2"));
      This.SPECIAL3 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SPECIAL3"));
      This.PARTNER := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PARTNER"));
      This.VENDOR := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("VENDOR"));
      This.USER := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("USER"));
      This.PWD := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PWD"));
      This.CHKNUM := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("CHKNUM"));
      This.AVSADDR := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("AVSADDR"));
      This.AVSZIP := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("AVSZIP"));
      This.PNREF := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("PNREF"));
      This.RESPMSG := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("RESPMSG"));
      This.RESULT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("RESULT"));
      This.ORIGRESULT := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ORIGRESULT"));
      This.STATUS := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("STATUS"));
      This.FRAUDCODE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("FRAUDCODE"));
      This.FRAUDMSG := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("FRAUDMSG"));
      This.ERRCODE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("ERRCODE"));
      This.SCORE := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("SCORE"));
      This.REASON1 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("REASON1"));
      This.REASON2 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("REASON2"));
      This.REASON3 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("REASON3"));
      This.EXCEPTION1 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION1"));
      This.EXCEPTION2 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION2"));
      This.EXCEPTION3 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION3"));
      This.EXCEPTION4 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION4"));
      This.EXCEPTION5 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION5"));
      This.EXCEPTION6 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION6"));
      This.EXCEPTION7 := PaymentTransactionKeys_Package.Create (To_Unbounded_String ("EXCEPTION7"));
   end Initialize_Fields;

   procedure Initialize (This : in out PaymentTransactionKeysFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PaymentTransactionKeysFactory_Access is
      This : constant PaymentTransactionKeysFactory_Access := new PaymentTransactionKeysFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PaymentTransactionKeysFactory_Access is
   begin
        return PaymentTransactionKeysFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant PaymentTransactionKeysFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PaymentTransactionKeysFactory_Package.Create;

end org.allbinary.business.user_Case.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory_Package;



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



package body org.allbinary.business.user.commerce.money.payment.PaymentData_Package is

   procedure Initialize_Fields (This : in out PaymentData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PaymentData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PaymentData_Access is
      This : constant PaymentData_Access := new PaymentData;
   begin
      PaymentData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   MIN := 4;
   MAX := 19;
   ADDNEW := To_Unbounded_String ("Add New Payment");
   VIEW := To_Unbounded_String ("View Payment");
   SELECT_Id := To_Unbounded_String ("Select Payment");
   CHANGE := To_Unbounded_String ("Change Payment");
   PAYMENT := To_Unbounded_String ("PAYMENT");
   METHOD := To_Unbounded_String ("PAYMENT_METHOD");
   ID := To_Unbounded_String ("PAYMENT_ID");
   NUMBER := To_Unbounded_String ("PAYMENT_NUMBER");
   NAME := To_Unbounded_String ("PAYMENT_NAME");
   TYPE_Id := To_Unbounded_String ("PAYMENT_TYPE");
   EXPIRATION := To_Unbounded_String ("PAYMENT_EXPIRATION");
   TENDERTYPE := To_Unbounded_String ("PAYMENT_TENDERTYPE");
   TRANSACTIONTYPE := To_Unbounded_String ("PAYMENT_TRANSACTIONTYPE");
   ABA := To_Unbounded_String ("PAYMENT_ABA");
   ACCOUNT := To_Unbounded_String ("PAYMENT_ACCOUNT");
   ACCOUNTTYPE := To_Unbounded_String ("PAYMENT_ACCOUNTTYPE");
   AUTHORIZATIONCODE := To_Unbounded_String ("PAYMENT_AUTHORIZATIONCODE");
   CHECKNUMBER := To_Unbounded_String ("PAYMENT_CHECKNUMBER");
   CHECKTYPE := To_Unbounded_String ("PAYMENT_CHECKTYPE");
   DRIVERSLICENSE := To_Unbounded_String ("PAYMENT_DRIVERSLICENSE");
   MAGNETICINKCHECKREADER := To_Unbounded_String ("PAYMENT_MAGNETICINKCHECKREADER");

end org.allbinary.business.user.commerce.money.payment.PaymentData_Package;



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


package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayData'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayData'Class; value_Case : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.key := value_Case;
   end Initialize;

   function Create (value_Case : Unbounded_String) return PaymentGatewayData_Access is
      This : constant PaymentGatewayData_Access := new PaymentGatewayData;
   begin
      Initialize (This.all, value_Case);
      return This;
   end Create;

   function toString (This : in out PaymentGatewayData) return Unbounded_String is
   begin
        return This.key;
   end toString;

   procedure toString (This : in out PaymentGatewayData) is
      Java_Result : constant Unbounded_String := PaymentGatewayData'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   CRYPTNUM := 5;
   ID := PaymentGatewayData_Package.Create (To_Unbounded_String ("PAYMENTGATEWAY_ID"));
   NAME := PaymentGatewayData_Package.Create (To_Unbounded_String ("PAYMENTGATEWAY_NAME"));
   VALUE := PaymentGatewayData_Package.Create (To_Unbounded_String ("PAYMENTGATEWAY_VALUE"));
   PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE := PaymentGatewayData_Package.Create (To_Unbounded_String ("PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE"));
   PAYMENTPROCESSORINTERFACEFACTORYINTERFACE := PaymentGatewayData_Package.Create (To_Unbounded_String ("PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE"));
   MODE := PaymentGatewayData_Package.Create (To_Unbounded_String ("MODE"));
   SERVERPROTOCOL := PaymentGatewayData_Package.Create (To_Unbounded_String ("SERVERPROTOCOL"));
   SERVER := PaymentGatewayData_Package.Create (To_Unbounded_String ("SERVER"));
   SERVERPORT := PaymentGatewayData_Package.Create (To_Unbounded_String ("SERVERPORT"));
   SERVERPATH := PaymentGatewayData_Package.Create (To_Unbounded_String ("SERVERPATH"));
   TESTPROTOCOL := PaymentGatewayData_Package.Create (To_Unbounded_String ("TESTSERVERPROTOCOL"));
   TESTSERVER := PaymentGatewayData_Package.Create (To_Unbounded_String ("TESTSERVER"));
   TESTPORT := PaymentGatewayData_Package.Create (To_Unbounded_String ("TESTPORT"));
   TESTPATH := PaymentGatewayData_Package.Create (To_Unbounded_String ("TESTSERVERPATH"));
   TIMEOUT := PaymentGatewayData_Package.Create (To_Unbounded_String ("TIMEOUT"));
   PROXYPROTOCOL := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYPROTOCOL"));
   PROXYSERVER := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYSERVER"));
   PROXYPATH := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYPATH"));
   PROXYUSERNAME := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYUSERNAME"));
   PROXYPASSWORD := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYPASSWORD"));
   PROXYPORT := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYPORT"));
   PROXYTIMEOUT := PaymentGatewayData_Package.Create (To_Unbounded_String ("PROXYTIMEOUT"));
   SPECIAL1 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL1"));
   SPECIAL2 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL2"));
   SPECIAL3 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL3"));
   SPECIAL4 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL4"));
   SPECIAL5 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL5"));
   SPECIAL6 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL6"));
   SPECIAL7 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL7"));
   SPECIAL8 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL8"));
   SPECIAL9 := PaymentGatewayData_Package.Create (To_Unbounded_String ("SPECIAL9"));

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;



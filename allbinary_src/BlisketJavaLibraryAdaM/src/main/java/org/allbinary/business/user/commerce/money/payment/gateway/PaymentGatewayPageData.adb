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


package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayPageData'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayPageData'Class; location : Unbounded_String; paymentMethod : Unbounded_String) is
      paymentMethodString : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
      Initialize_Fields (This);
        paymentMethodString := Java_Image (PaymentGatewayPageData_Package.NAME) & paymentMethod;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (location);
        stringBuffer.append (To_Unbounded_String ("MakePayment"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.MAKEPAYMENT := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("Checkout"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.CHECKOUT := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("Shipping"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.SHIPPING := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("ShippingAddress"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.SHIPPINGADDRESS := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("ShippingAddressAction"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.SHIPPINGADDRESSACTION := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("BillingAddress"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.BILLINGADDRESS := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("Payment"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.PAYMENT := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("Authorize"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.AUTHORIZE := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (paymentMethodString);
        stringBuffer.append (To_Unbounded_String ("PaymentFinish"));
        stringBuffer.append (PaymentGatewayPageData_Package.EXTENSION);
        This.FINISH := stringBuffer.toString;
   end Initialize;

   function Create (location : Unbounded_String; paymentMethod : Unbounded_String) return PaymentGatewayPageData_Access is
      This : constant PaymentGatewayPageData_Access := new PaymentGatewayPageData;
   begin
      PaymentGatewayPageData_Package.Initialize (This.all, location, paymentMethod);
      return This;
   end Create;

begin
   null;
   EXTENSION := To_Unbounded_String (".jsp");
   NAME := StringUtil_Package.getInstance.EMPTY_STRING;
   FORWARDMAKEPAYMENT := To_Unbounded_String ("MakePayment.jsp");
   PAYMENTOPTIONS := To_Unbounded_String ("PaymentOptions") & Java_Image (PaymentGatewayPageData_Package.EXTENSION);
   STARTCHECKOUT := To_Unbounded_String ("StartCheckout") & Java_Image (PaymentGatewayPageData_Package.EXTENSION);

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPageData_Package;



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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.inventory.basket.Basket_Package; use org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.payment.Payment_Package; use org.allbinary.business.user.commerce.money.payment.Payment_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package; use org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;
with org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package; use org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;
with org.allbinary.data.generator.OrderIdGenerator_Package; use org.allbinary.data.generator.OrderIdGenerator_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Basket_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Payment_Package renames Standard.org.allbinary.business.user.commerce.money.payment.Payment_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package TenderTypeFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory_Package;
   package TransactionTypeFactory_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory_Package;
   package OrderIdGenerator_Package renames Standard.org.allbinary.data.generator.OrderIdGenerator_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderHistoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out PaymentTransactionInterfaceRequestFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PaymentTransactionInterfaceRequestFactory_Access is
   begin
        return PaymentTransactionInterfaceRequestFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PaymentTransactionInterfaceRequestFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentTransactionInterfaceRequestFactory_Access is
      This : constant PaymentTransactionInterfaceRequestFactory_Access := new PaymentTransactionInterfaceRequestFactory;
   begin
      PaymentTransactionInterfaceRequestFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentTransactionInterface_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      pageContext : PageContext_Access;
      httpServletRequest : HttpServletRequest_Access;
      command : Unbounded_String;
      propertiesHashMap : HashMap_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      order : OrderInterface_Access;
      orderId : Unbounded_String;
      orderHistoryEntityInterface : OrderHistoryEntityInterface_Access;
      orderReview : OrderHistory_Access;
      orderPaymentInfo : Payment_Access;
      paymentTransactionInterface : PaymentTransactionInterface_Access;
   begin
        begin
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
            pageContext := httpTransformInfoInterface.getPageContext;
            httpServletRequest := HttpServletRequest_Access (pageContext.getRequest);
            command := httpServletRequest.getParameter (org_Package.allbinary.globals.GLOBALS2.ADMINCOMMAND);
            if ((command) /= (Null_Unbounded_String)) and then ((Java_Compare_To (command, org_Package.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR)) = (0)) then
                return PaymentTransactionInterface_Access (PaymentTransactionInterfaceRequestFactory'Class (This).generateFromTestData (transformInfoInterface));
            else
                propertiesHashMap := httpTransformInfoInterface.getPropertiesHashMap;
                weblisketSession := WeblisketSession_Package.Create (propertiesHashMap, pageContext);
                storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (weblisketSession.getStoreName));
                order := OrderInterface_Access (weblisketSession.getOrder);
                orderId := order.getId;
                orderHistoryEntityInterface := OrderHistoryEntityInterface_Access (OrderHistoryEntityFactory_Package.getInstance);
                orderReview := orderHistoryEntityInterface.getOrder (orderId);
                orderPaymentInfo := orderReview.getPaymentInfo;
                orderPaymentInfo.setTransactionType (TransactionTypeFactory_Package.getInstance.SALE.toString);
                orderPaymentInfo.setTenderType (TenderTypeFactory_Package.getInstance.CREDITCARD.toString);
                orderReview.setPaymentInfo (orderPaymentInfo);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
                    This.logUtil.putF (orderReview.getId, PaymentTransactionInterfaceRequestFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getPaymentTransactionInterface()"));
                end if;
                paymentTransactionInterface := PaymentTransactionInterface_Access (PaymentTransactionInterfaceFactory_Package.getInstance.getInstance (orderReview));
                return paymentTransactionInterface;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentTransactionInterfaceRequestFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getPaymentTransactionInterface()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function generateFromTestData (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentTransactionInterface_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      propertiesHashMap : HashMap_Access;
      pageContext : PageContext_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      httpServletRequest : HttpServletRequest_Access;
      gatewayName : Unbounded_String;
      transactionType : Unbounded_String;
      tenderType : Unbounded_String;
      payment : Payment_Access;
      orderReview : OrderHistory_Access;
      orderId : Unbounded_String;
      account : Unbounded_String;
      expirationDate : Unbounded_String;
      checkNumber : Unbounded_String;
      driversLicense : Unbounded_String;
      magneticInkCheckReader : Unbounded_String;
      aba : Unbounded_String;
      accountType : Unbounded_String;
      name : Unbounded_String;
      street : Unbounded_String;
      city : Unbounded_String;
      state : Unbounded_String;
      zip : Unbounded_String;
      streetAddress : StreetAddress_Access;
      email : Unbounded_String;
      amount : Unbounded_String;
      paymentTransactionInterface : PaymentTransactionInterface_Access;
   begin
        begin
            httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
            propertiesHashMap := httpTransformInfoInterface.getPropertiesHashMap;
            pageContext := httpTransformInfoInterface.getPageContext;
            weblisketSession := WeblisketSession_Package.Create (propertiesHashMap, pageContext);
            storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (weblisketSession.getStoreName));
            httpServletRequest := HttpServletRequest_Access (pageContext.getRequest);
            gatewayName := Java_Unbox (weblisketSession.getPaymentMethod);
            if StringValidationUtil_Package.getInstance.isEmpty (gatewayName) then
                gatewayName := httpServletRequest.getParameter (PaymentGatewayData_Package.NAME.toString);
            end if;
            transactionType := httpServletRequest.getParameter (PaymentData_Package.TRANSACTIONTYPE);
            tenderType := httpServletRequest.getParameter (PaymentData_Package.TENDERTYPE);
            payment := Payment_Package.Create;
            payment.setTransactionType (transactionType);
            payment.setTenderType (tenderType);
            orderReview := OrderHistory_Package.Create (Basket_Package.Create);
            orderReview.setStoreName (storeFrontInterface.getName);
            orderReview.setPaymentMethod (gatewayName);
            orderReview.setUserName (To_Unbounded_String ("testing"));
            orderId := httpServletRequest.getParameter (To_Unbounded_String ("orderNumber"));
            if ((orderId) = (Null_Unbounded_String)) or else ((Java_Compare_To (orderId, StringUtil_Package.getInstance.EMPTY_STRING)) = (0)) then
                orderId := OrderIdGenerator_Package.Create.getNext;
                orderReview.setId (orderId);
                account := httpServletRequest.getParameter (To_Unbounded_String ("account"));
                expirationDate := httpServletRequest.getParameter (To_Unbounded_String ("expirationDate"));
                checkNumber := httpServletRequest.getParameter (To_Unbounded_String ("checkNumber"));
                driversLicense := httpServletRequest.getParameter (To_Unbounded_String ("driversLicense"));
                magneticInkCheckReader := httpServletRequest.getParameter (To_Unbounded_String ("magneticInkCheckReader"));
                aba := httpServletRequest.getParameter (To_Unbounded_String ("aba"));
                accountType := httpServletRequest.getParameter (To_Unbounded_String ("accountType"));
                name := httpServletRequest.getParameter (To_Unbounded_String ("name"));
                payment.setName (name);
                payment.setNumber (account);
                payment.setExpiration (expirationDate);
                payment.setCheckNumber (checkNumber);
                payment.setDriversLicense (driversLicense);
                payment.setMagneticInkCheckReader (magneticInkCheckReader);
                payment.setAba (aba);
                payment.setAccountType (accountType);
                street := httpServletRequest.getParameter (To_Unbounded_String ("street"));
                city := httpServletRequest.getParameter (To_Unbounded_String ("city"));
                state := httpServletRequest.getParameter (To_Unbounded_String ("state"));
                zip := httpServletRequest.getParameter (To_Unbounded_String ("zip"));
                streetAddress := StreetAddress_Package.Create;
                streetAddress.setName (name);
                streetAddress.setStreet (street);
                streetAddress.setCity (city);
                streetAddress.setState (state);
                streetAddress.setCode (zip);
                email := httpServletRequest.getParameter (To_Unbounded_String ("email"));
                amount := httpServletRequest.getParameter (To_Unbounded_String ("amount"));
                orderReview.setTotal (Money_Package.Create (amount));
                orderReview.setBillingAddress (streetAddress);
            else
                orderReview.setId (orderId);
            end if;
            orderReview.setPaymentInfo (payment);
            paymentTransactionInterface := PaymentTransactionInterface_Access (PaymentTransactionInterfaceFactory_Package.getInstance.getInstance (orderReview));
            return paymentTransactionInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentTransactionInterfaceRequestFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("generatePaymentTransactionInterfaceFromTestData()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end generateFromTestData;

   procedure getInstance (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant PaymentTransactionInterface_Access := PaymentTransactionInterfaceRequestFactory'Class (This).getInstance (transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure generateFromTestData (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant PaymentTransactionInterface_Access := PaymentTransactionInterfaceRequestFactory'Class (This).generateFromTestData (transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateFromTestData;

begin
   null;
   instance := PaymentTransactionInterfaceRequestFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;



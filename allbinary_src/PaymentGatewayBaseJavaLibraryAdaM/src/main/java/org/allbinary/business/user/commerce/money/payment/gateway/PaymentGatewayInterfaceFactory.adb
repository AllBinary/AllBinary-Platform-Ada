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


with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package is

   package BasicPaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out PaymentGatewayInterfaceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentGatewayInterfaceFactory_Access is
      This : constant PaymentGatewayInterfaceFactory_Access := new PaymentGatewayInterfaceFactory;
   begin
      PaymentGatewayInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PaymentGatewayInterfaceFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return PaymentGatewayInterface_Access is
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
                This.logUtil.putF (To_Unbounded_String ("Getting"), PaymentGatewayInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            end if;
            return PaymentGatewayInterfaceFactory'Class (This).getInstance (RequestParams_Package.Create (httpServletRequest).toHashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, PaymentGatewayInterfaceFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstance(HttpServletRequest)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out PaymentGatewayInterfaceFactory; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentGatewayInterface_Access is
      paymentType : constant BasicPaymentType_Access := BasicPaymentType_Access (paymentType_Param);
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (Java_Box (PaymentGatewayData_Package.NAME.toString), Java_Box (paymentType.getName));
        return PaymentGatewayInterfaceFactory'Class (This).getInstance (hashMap);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out PaymentGatewayInterfaceFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return PaymentGatewayInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      commonStrings : CommonStrings_Access;
      gatewayName : Unbounded_String;
      paymentType : BasicPaymentType_Access;
      paymentGatewayInterfaceFactoryInterface : PaymentGatewayInterfaceFactoryInterface_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            gatewayName := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.NAME.toString)));
            paymentType := BasicPaymentTypeUtil_Package.getInstance.get (gatewayName);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
                This.logUtil.putF (To_Unbounded_String ("Getting PaymentGatewayInterface for PaymentType: ") & paymentType.getName & To_Unbounded_String (" with: ") & Java_Image (hashMap), PaymentGatewayInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            end if;
            paymentGatewayInterfaceFactoryInterface := paymentType.getPaymentGatewayInterfaceFactoryInterface;
            return paymentGatewayInterfaceFactoryInterface.getInstance (hashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, PaymentGatewayInterfaceFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out PaymentGatewayInterfaceFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      Java_Result : constant PaymentGatewayInterface_Access := PaymentGatewayInterfaceFactory'Class (This).getInstance (httpServletRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out PaymentGatewayInterfaceFactory; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) is
      Java_Result : constant PaymentGatewayInterface_Access := PaymentGatewayInterfaceFactory'Class (This).getInstance (paymentType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out PaymentGatewayInterfaceFactory; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant PaymentGatewayInterface_Access := PaymentGatewayInterfaceFactory'Class (This).getInstance (hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;



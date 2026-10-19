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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package; use org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;
with org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package; use org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package body admin.taghelpers.OrderHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package Order_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package OrderProcessorUtil_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package PaymentGatewayEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity_Package;
   package PaymentGatewayEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out OrderHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.storeFrontInterface := null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      storeName : Unbounded_String;
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.propertiesHashMap := propertiesHashMap;
        This.pageContext := pageContext;
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        storeName := Java_Unbox (propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
        if not (StringValidationUtil_Package.getInstance.isEmpty (storeName)) then
            This.storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (storeName));
        end if;
        This.weblisketSession := WeblisketSession_Package.Create (This.propertiesHashMap, This.pageContext);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderHelper_Access is
      This : constant OrderHelper_Access := new OrderHelper;
   begin
      OrderHelper_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   function setPaymentGateway (This : in out OrderHelper) return Boolean is
      paymentGatewayBoolean : Boolean;
      orderInterface : OrderInterface_Access;
      requestPaymentGateway : Unbounded_String;
      paymentGatewayEntityInterface : PaymentGatewayEntity_Access;
      paymentTypeVector : BasicArrayList_Access;
      paymentType : BasicPaymentType_Access;
      paymentGatewayInterface : PaymentGatewayInterface_Access;
      paymentGateway : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        begin
            paymentGatewayBoolean := False;
            orderInterface := OrderInterface_Access (This.weblisketSession.getOrder);
            requestPaymentGateway := Java_Unbox (This.request.getParameter (PaymentGatewayData_Package.NAME.toString));
            if not (StringValidationUtil_Package.getInstance.isEmpty (requestPaymentGateway)) then
                This.weblisketSession.setPaymentMethod (requestPaymentGateway);
                orderInterface.setPaymentMethod (requestPaymentGateway);
                paymentGatewayBoolean := True;
            end if;
            paymentGatewayEntityInterface := PaymentGatewayEntity_Access (PaymentGatewayEntityFactory_Package.getInstance);
            paymentTypeVector := paymentGatewayEntityInterface.findPaymentTypeVectorByStore (This.weblisketSession.getStoreName);
            if (paymentTypeVector.size) = (1) then
                paymentType := BasicPaymentType_Access (paymentTypeVector.get (0));
                paymentGatewayInterface := PaymentGatewayInterface_Access (paymentGatewayEntityInterface.getPaymentGatewayInterface (This.weblisketSession.getStoreName, paymentType));
                paymentGateway := paymentGatewayInterface.getName;
                This.weblisketSession.setPaymentMethod (paymentGateway);
                orderInterface.setPaymentMethod (paymentGateway);
                paymentGatewayBoolean := True;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Successfully set PaymentGateway Order: "));
                stringBuffer.append (orderInterface.getId);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (orderInterface.getPaymentMethod);
                This.logUtil.putF (stringBuffer.toString, OrderHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setPaymentGateway()"));
            end if;
            return paymentGatewayBoolean;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Failed to set PaymentGateway for Order: "));
                begin
                    orderInterface := OrderInterface_Access (This.weblisketSession.getOrder);
                    if (orderInterface) /= (null) then
                        stringBuffer.append (orderInterface.getId);
                        stringBuffer.append (To_Unbounded_String (" to: "));
                        stringBuffer.append (orderInterface.getPaymentMethod);
                    end if;
                exception
                    when Java_Occurrence : others =>
                        declare
                            ex : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    stringBuffer.append (To_Unbounded_String (" Exception Getting"));
                        end;
                end;
                This.logUtil.put (stringBuffer.toString, OrderHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setPaymentGateway()"), e);
            end if;
            return False;
                end;
        end;
   end setPaymentGateway;

   function process (This : in out OrderHelper) return Unbounded_String is
      order : OrderInterface_Access;
      result : Unbounded_String;
      stringBuffer : StringMaker_Access;
      error : Unbounded_String;
   begin
        begin
            order := OrderInterface_Access (This.weblisketSession.getOrder);
            order.setStoreName (This.storeFrontInterface.getName);
            result := OrderProcessorUtil_Package.getInstance.process (This.weblisketSession.getUserName, Order_Access (order));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfully Processed Order: ") & result, OrderHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("processOrder()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Failed to Process Order: "));
            begin
                stringBuffer.append (This.weblisketSession.getOrder.getId);
            exception
                when Java_Occurrence : others =>
                    declare
                        ex : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                stringBuffer.append (To_Unbounded_String (" Exception Getting Id"));
                    end;
            end;
            error := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderHelper_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
            end if;
            return error;
                end;
        end;
   end process;

end admin.taghelpers.OrderHelper_Package;



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


package body admin.taghelpers.OrderHelper_Package is

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
            This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
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
            orderInterface := This.weblisketSession.getOrder;
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
                    orderInterface := This.weblisketSession.getOrder;
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
            order := This.weblisketSession.getOrder;
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



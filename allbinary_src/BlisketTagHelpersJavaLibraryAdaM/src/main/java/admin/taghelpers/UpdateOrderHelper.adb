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


package body admin.taghelpers.UpdateOrderHelper_Package is

   procedure Initialize_Fields (This : in out UpdateOrderHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.entryId := Null_Unbounded_String;
      This.orderId := Null_Unbounded_String;
      This.userName := Null_Unbounded_String;
      This.storeName := Null_Unbounded_String;
      This.shipDate := Null_Unbounded_String;
      This.orderDate := Null_Unbounded_String;
      This.transDate := Null_Unbounded_String;
      This.cancelDate := Null_Unbounded_String;
      This.status := Null_Unbounded_String;
      This.paymentMethod := Null_Unbounded_String;
      This.name := Null_Unbounded_String;
      This.type_Id := Null_Unbounded_String;
      This.expiration := Null_Unbounded_String;
      This.number := Null_Unbounded_String;
      This.encryption := Null_Unbounded_String;
      This.billingName := Null_Unbounded_String;
      This.billingStreet := Null_Unbounded_String;
      This.billingCity := Null_Unbounded_String;
      This.billingState := Null_Unbounded_String;
      This.billingCode := Null_Unbounded_String;
      This.billingCountry := Null_Unbounded_String;
      This.shippingName := Null_Unbounded_String;
      This.shippingStreet := Null_Unbounded_String;
      This.shippingCity := Null_Unbounded_String;
      This.shippingState := Null_Unbounded_String;
      This.shippingCode := Null_Unbounded_String;
      This.shippingCountry := Null_Unbounded_String;
      This.shippingMethodName := Null_Unbounded_String;
      This.subTotal := Null_Unbounded_String;
      This.shippingCost := Null_Unbounded_String;
      This.tax := Null_Unbounded_String;
      This.total := Null_Unbounded_String;
      This.special := Null_Unbounded_String;
      This.userComment := Null_Unbounded_String;
      This.userCancelComment := Null_Unbounded_String;
      This.storeComment := Null_Unbounded_String;
      This.storeCancelComment := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateOrderHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return UpdateOrderHelper_Access is
      This : constant UpdateOrderHelper_Access := new UpdateOrderHelper;
   begin
      UpdateOrderHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getFormData (This : in out UpdateOrderHelper) is
   begin
        This.entryId := This.request.getParameter (EntryData_Package.getInstance.ID);
        This.orderId := This.request.getParameter (OrderData_Package.ID);
        This.userName := This.request.getParameter (UserData_Package.USERNAME);
        This.storeName := This.request.getParameter (StoreFrontData_Package.getInstance.NAME);
        This.shipDate := This.request.getParameter (OrderHistoryData_Package.SHIPPEDDATE);
        This.orderDate := This.request.getParameter (OrderHistoryData_Package.ORDERDATE);
        This.transDate := This.request.getParameter (OrderHistoryData_Package.TRANSDATE);
        This.cancelDate := This.request.getParameter (OrderHistoryData_Package.CANCELDATE);
        This.status := This.request.getParameter (OrderHistoryData_Package.STATUS);
        This.paymentMethod := This.request.getParameter (PaymentData_Package.METHOD);
        This.name := This.request.getParameter (PaymentData_Package.NAME);
        This.type_Id := This.request.getParameter (PaymentData_Package.TYPE_Id);
        This.expiration := This.request.getParameter (PaymentData_Package.EXPIRATION);
        This.number := This.request.getParameter (PaymentData_Package.NUMBER);
        This.encryption := This.request.getParameter (EntryData_Package.getInstance.ENCRYPTION);
        This.billingName := This.request.getParameter (BillingAddressData_Package.NAME);
        This.billingStreet := This.request.getParameter (BillingAddressData_Package.STREET);
        This.billingCity := This.request.getParameter (BillingAddressData_Package.CITY);
        This.billingState := This.request.getParameter (BillingAddressData_Package.STATE);
        This.billingCode := This.request.getParameter (BillingAddressData_Package.CODE);
        This.billingCountry := This.request.getParameter (BillingAddressData_Package.COUNTRY);
        This.shippingName := This.request.getParameter (ShippingAddressData_Package.NAME);
        This.shippingStreet := This.request.getParameter (ShippingAddressData_Package.STREET);
        This.shippingCity := This.request.getParameter (ShippingAddressData_Package.CITY);
        This.shippingState := This.request.getParameter (ShippingAddressData_Package.STATE);
        This.shippingCode := This.request.getParameter (ShippingAddressData_Package.CODE);
        This.shippingCountry := This.request.getParameter (ShippingAddressData_Package.COUNTRY);
        This.shippingMethodName := This.request.getParameter (ShippingMethodData_Package.NAME);
        This.subTotal := This.request.getParameter (OrderHistoryData_Package.SUBTOTAL);
        This.shippingCost := This.request.getParameter (OrderHistoryData_Package.SHIPPINGCOST);
        This.tax := This.request.getParameter (OrderHistoryData_Package.TAX);
        This.total := This.request.getParameter (OrderHistoryData_Package.TOTAL);
        This.special := This.request.getParameter (EntryData_Package.getInstance.SPECIAL);
        This.userComment := This.request.getParameter (OrderData_Package.CUSTOMERCOMMENT);
        This.userCancelComment := This.request.getParameter (OrderData_Package.CUSTOMERCANCELCOMMENT);
        This.storeComment := This.request.getParameter (OrderData_Package.STORECOMMENT);
        This.storeCancelComment := This.request.getParameter (OrderData_Package.STORECANCELCOMMENT);
   end getFormData;

   function update (This : in out UpdateOrderHelper) return Unbounded_String is
      success : Unbounded_String;
      orderHashMap : HashMap_Access;
      whereHashMap : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successful update");
            orderHashMap := StdUtil_Package.getInstance.createHashMap;
            whereHashMap := StdUtil_Package.getInstance.createHashMap;
            orderHashMap.put (EntryData_Package.getInstance.ID, This.entryId);
            orderHashMap.put (OrderData_Package.ID, This.orderId);
            orderHashMap.put (UserData_Package.USERNAME, This.userName);
            orderHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
            orderHashMap.put (OrderHistoryData_Package.SHIPPEDDATE, This.shipDate);
            orderHashMap.put (OrderHistoryData_Package.ORDERDATE, This.orderDate);
            orderHashMap.put (OrderHistoryData_Package.TRANSDATE, This.transDate);
            orderHashMap.put (OrderHistoryData_Package.CANCELDATE, This.cancelDate);
            orderHashMap.put (OrderHistoryData_Package.STATUS, This.status);
            orderHashMap.put (PaymentData_Package.METHOD, This.paymentMethod);
            orderHashMap.put (PaymentData_Package.NAME, This.name);
            orderHashMap.put (PaymentData_Package.TYPE_Id, This.type_Id);
            orderHashMap.put (PaymentData_Package.EXPIRATION, This.expiration);
            orderHashMap.put (BillingAddressData_Package.NAME, This.billingName);
            orderHashMap.put (BillingAddressData_Package.STREET, This.billingStreet);
            orderHashMap.put (BillingAddressData_Package.CITY, This.billingCity);
            orderHashMap.put (BillingAddressData_Package.STATE, This.billingState);
            orderHashMap.put (BillingAddressData_Package.CODE, This.billingCode);
            orderHashMap.put (BillingAddressData_Package.COUNTRY, This.billingCountry);
            orderHashMap.put (ShippingAddressData_Package.NAME, This.shippingName);
            orderHashMap.put (ShippingAddressData_Package.STREET, This.shippingStreet);
            orderHashMap.put (ShippingAddressData_Package.CITY, This.shippingCity);
            orderHashMap.put (ShippingAddressData_Package.STATE, This.shippingState);
            orderHashMap.put (ShippingAddressData_Package.CODE, This.shippingCode);
            orderHashMap.put (ShippingAddressData_Package.COUNTRY, This.shippingCountry);
            orderHashMap.put (ShippingMethodData_Package.NAME, This.shippingMethodName);
            orderHashMap.put (OrderHistoryData_Package.SUBTOTAL, This.subTotal);
            orderHashMap.put (OrderHistoryData_Package.SHIPPINGCOST, This.shippingCost);
            orderHashMap.put (OrderHistoryData_Package.TAX, This.tax);
            orderHashMap.put (OrderHistoryData_Package.TOTAL, This.total);
            orderHashMap.put (EntryData_Package.getInstance.SPECIAL, This.special);
            orderHashMap.put (OrderData_Package.CUSTOMERCOMMENT, This.userComment);
            orderHashMap.put (OrderData_Package.CUSTOMERCANCELCOMMENT, This.userCancelComment);
            orderHashMap.put (OrderData_Package.STORECOMMENT, This.storeComment);
            orderHashMap.put (OrderData_Package.STORECANCELCOMMENT, This.storeCancelComment);
            whereHashMap.put (OrderData_Package.ID, This.orderId);
            OrderHistoryEntityFactory_Package.getInstance.update (whereHashMap, orderHashMap);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update order table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

end admin.taghelpers.UpdateOrderHelper_Package;



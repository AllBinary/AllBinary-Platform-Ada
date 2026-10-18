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


with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;

package body taghelpers.OrderHistoryHelper_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package OrderHistoryFactory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory_Package;
   package OrderHistoryInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderHistoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
   procedure Initialize_Fields (This : in out OrderHistoryHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.weblisketSession := null;
      This.storeFrontInterface := null;
      
      
      
      This.streetAddress := null;
      This.id := Null_Unbounded_String;
      This.groupId := Null_Unbounded_String;
      This.status := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
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
        This.newStatus := Java_Unbox (propertiesHashMap.get (OrderHistoryData_Package.STATUS));
        if (storeName) /= (Null_Unbounded_String) then
            This.storeFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (storeName));
        end if;
        OrderHistoryHelper'Class (This).getFormData;
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderHistoryHelper_Access is
      This : constant OrderHistoryHelper_Access := new OrderHistoryHelper;
   begin
      OrderHistoryHelper_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out OrderHistoryHelper) is
   begin
        This.id := This.request.getParameter (OrderData_Package.ID);
        This.groupId := This.request.getParameter (ShippingMethodData_Package.GROUP);
        if (This.newStatus) = (Null_Unbounded_String) then
            This.newStatus := This.request.getParameter (OrderHistoryData_Package.STATUS);
        end if;
   end getFormData;

   function setOrderStatus (This : in out OrderHistoryHelper) return Unbounded_String is
      success : Unbounded_String;
      orderReviewInterface : OrderHistoryInterface_Access;
      status : Unbounded_String;
      orderHistoryEntityInterface : OrderHistoryEntityInterface_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Status successfully set to: ") & This.status;
            orderReviewInterface := OrderHistoryInterface_Access (OrderHistoryFactory_Package.getInstance (This.id));
            status := orderReviewInterface.getStatus;
            if (Java_Compare_To (status, OrderHistoryData_Package.CANCELLED)) = (0) then
                return To_Unbounded_String ("Order ") & This.id & To_Unbounded_String (" Already Cancelled<br/>");
            elsif (Java_Compare_To (status, OrderHistoryData_Package.SHIPPED)) = (0) then
                return To_Unbounded_String ("Order ") & This.id & To_Unbounded_String (" Already Shipped. You can't cancel a shipped order.<br/>");
            elsif (Java_Compare_To (status, OrderHistoryData_Package.PREPROCESSING)) = (0) then
                return To_Unbounded_String ("Order ") & This.id & To_Unbounded_String (" has been cancelled.<br/>");
            elsif (Java_Compare_To (status, OrderHistoryData_Package.PARTIALLYSHIPPED)) = (0) then
                return To_Unbounded_String ("Order ") & This.id & To_Unbounded_String (" Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>");
            elsif (Java_Compare_To (status, OrderHistoryData_Package.PROCESSING)) = (0) then
                orderHistoryEntityInterface := OrderHistoryEntityInterface_Access (OrderHistoryEntityFactory_Package.getInstance);
                orderHistoryEntityInterface.setStatus (This.id, This.newStatus);
                return To_Unbounded_String ("Order ") & This.id & To_Unbounded_String (" has been cancelled.<br/>");
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setOrderStatus()"));
            end if;
            return To_Unbounded_String ("Error Setting Order Status");
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to set order status");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderHistoryHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setOrderStatus()"), e);
            end if;
            return error & To_Unbounded_String ("<br/>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br/>");
                end;
        end;
   end setOrderStatus;

end taghelpers.OrderHistoryHelper_Package;



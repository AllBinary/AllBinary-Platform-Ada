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


with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;

package body admin.taghelpers.OrderItemsRequestHelper_Package is

   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package OrderItemsEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory_Package;
   procedure Initialize_Fields (This : in out OrderItemsRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.groupId := Null_Unbounded_String;
      This.status := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderItemsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        OrderItemsRequestHelper'Class (This).getFormData;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderItemsRequestHelper_Access is
      This : constant OrderItemsRequestHelper_Access := new OrderItemsRequestHelper;
   begin
      OrderItemsRequestHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out OrderItemsRequestHelper) is
   begin
        This.id := This.request.getParameter (OrderData_Package.ID);
        This.groupId := This.request.getParameter (ShippingMethodData_Package.GROUP);
        This.status := This.request.getParameter (OrderHistoryData_Package.STATUS);
   end getFormData;

   function setOrderStatus (This : in out OrderItemsRequestHelper; newStatus_Param : Unbounded_String) return Unbounded_String is
      newStatus : Unbounded_String := newStatus_Param;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            if (newStatus) = (Null_Unbounded_String) then
                newStatus := This.status;
            end if;
            success := To_Unbounded_String ("Status successfully set to: ") & newStatus;
            OrderItemsEntityFactory_Package.getInstance.setStatus (This.id, This.groupId, newStatus);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setOrderStatus(newStatus)"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view order table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setOrderStatus(newStatus)"), e);
            end if;
            return error;
                end;
        end;
   end setOrderStatus;

   function setOrderStatus (This : in out OrderItemsRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Status successfully set to: ") & This.status;
            OrderItemsEntityFactory_Package.getInstance.setStatus (This.id, This.groupId, This.status);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, OrderItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setOrderStatus(newStatus)"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view order table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OrderItemsRequestHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setOrderStatus(newStatus)"), e);
            end if;
            return error;
                end;
        end;
   end setOrderStatus;

   procedure setOrderStatus (This : in out OrderItemsRequestHelper; newStatus_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := OrderItemsRequestHelper'Class (This).setOrderStatus (newStatus_Param => newStatus_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setOrderStatus;

end admin.taghelpers.OrderItemsRequestHelper_Package;



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


package body admin.taghelpers.OrderHistoryRequestHelper_Package is

   procedure Initialize_Fields (This : in out OrderHistoryRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      This.id := Null_Unbounded_String;
      This.groupId := Null_Unbounded_String;
      This.status := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryRequestHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      TagHelper_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.getFormData;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return OrderHistoryRequestHelper_Access is
      This : constant OrderHistoryRequestHelper_Access := new OrderHistoryRequestHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getFormData (This : in out OrderHistoryRequestHelper) is
   begin
        This.id := This.request.getParameter (OrderData_Package.ID);
        This.groupId := This.request.getParameter (ShippingMethodData_Package.GROUP);
        This.status := This.request.getParameter (OrderHistoryData_Package.STATUS);
   end getFormData;

   function setOrderStatus (This : in out OrderHistoryRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            if (This.groupId.compareTo (CommonPhoneStrings_Package.getInstance.ZERO)) /= (0) then
                if OrderItemsEntityFactory_Package.getInstance.isEverythingShipped (This.id) then
                    This.status := OrderHistoryData_Package.SHIPPED;
                else
                    This.status := OrderHistoryData_Package.PARTIALLYSHIPPED;
                end if;
            end if;
            success := To_Unbounded_String ("Status successfully set to: ") & This.status;
            OrderHistoryEntityFactory_Package.getInstance.setStatus (This.id, This.status);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Success"), This'Unchecked_Access, To_Unbounded_String ("setOrderStatus()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to set order status");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setOrderStatus()"), e);
            end if;
            return error;
        end;
   end setOrderStatus;

   function setOrderStatus (This : in out OrderHistoryRequestHelper; newStatus : Unbounded_String) return Unbounded_String is
      success : Unbounded_String;
      orderHistory : OrderHistory_Access;
      error : Unbounded_String;
   begin
        begin
            if (newStatus) = (Null_Unbounded_String) then
                newStatus := This.status;
            end if;
            success := To_Unbounded_String ("Status successfully set to: ") & newStatus;
            OrderHistoryEntityFactory_Package.getInstance.setStatus (This.id, newStatus);
            orderHistory := OrderHistoryEntityFactory_Package.getInstance.getOrder (This.id);
            OrderStatusEmail_Package.Create (This.abeClientInformation, orderHistory).process;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Success"), This'Unchecked_Access, To_Unbounded_String ("setOrderStatus()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to view order table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setOrderStatus(newStatus)"), e);
            end if;
            return error;
        end;
   end setOrderStatus;

   procedure setOrderStatus (This : in out OrderHistoryRequestHelper) is
      Java_Result : constant Unbounded_String := OrderHistoryRequestHelper'Class (This).setOrderStatus;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setOrderStatus;

   procedure setOrderStatus (This : in out OrderHistoryRequestHelper; newStatus : Unbounded_String) is
      Java_Result : constant Unbounded_String := OrderHistoryRequestHelper'Class (This).setOrderStatus (newStatus);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setOrderStatus;

end admin.taghelpers.OrderHistoryRequestHelper_Package;



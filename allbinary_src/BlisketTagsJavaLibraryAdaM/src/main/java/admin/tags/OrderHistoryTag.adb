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


with admin.taghelpers.OrderHistoryHelperFactory_Package; use admin.taghelpers.OrderHistoryHelperFactory_Package;
with admin.taghelpers.OrderHistoryRequestHelperFactory_Package; use admin.taghelpers.OrderHistoryRequestHelperFactory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.OrderHistoryTag_Package is

   package OrderHistoryHelperFactory_Package renames Standard.admin.taghelpers.OrderHistoryHelperFactory_Package;
   package OrderHistoryRequestHelperFactory_Package renames Standard.admin.taghelpers.OrderHistoryRequestHelperFactory_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out OrderHistoryTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.status := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        OrderHistoryTag'Class (This).setTagHelperFactory (OrderHistoryHelperFactory_Package.Create);
        OrderHistoryTag'Class (This).setTagRequestHelperFactory (OrderHistoryRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return OrderHistoryTag_Access is
      This : constant OrderHistoryTag_Access := new OrderHistoryTag;
   begin
      OrderHistoryTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setStatus (This : in out OrderHistoryTag; value : Unbounded_String) is
   begin
        This.status := value;
   end setStatus;

   --  throws LicensingException
   function setOrderStatus (This : in out OrderHistoryTag) return Unbounded_String is
      request : HttpServletRequest_Access;
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      methodParams : Ada_Tags_Tag_Array_Access;
      method : Method_Access;
      methodArgs : Java_Object_Access_Array_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            request := HttpServletRequest_Access (This.pageContext.getRequest);
            anyType := OrderHistoryRequestHelperFactory_Package.Create.getInstance (OrderHistoryTag'Class (This).getPropertiesHashMap, This.pageContext);
            if (This.status) = (Null_Unbounded_String) then
                helperClass := anyType.all'Tag;
                method := helperClass.getMethod (To_Unbounded_String ("setOrderStatus"), null);
                result := Java_Unbox (method.invoke (anyType, null));
                return result;
            else
                helperClass := anyType.all'Tag;
                methodParams := new Ada_Tags_Tag_Array'(0 => This.status.all'Tag);
                method := helperClass.getMethod (To_Unbounded_String ("setOrderStatus"), methodParams);
                methodArgs := new Java_Object_Access_Array'(0 => This.status);
                result := Java_Unbox (method.invoke (anyType, methodArgs));
                return result;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end setOrderStatus;

   --  throws JspTagException
   function doStartTag (This : in out OrderHistoryTag) return Integer is
   begin
        begin
            if OrderHistoryTag'Class (This).isEnabled then
                if (OrderHistoryTag'Class (This).getCommand) /= (null) then
                    OrderHistoryTag'Class (This).getPropertiesHashMap.put (OrderHistoryData_Package.STATUS, This.status);
                    if (OrderHistoryTag'Class (This).getCommand.compareTo (OrderHistoryData_Package.SETSTATUS)) = (0) then
                        declare Java_Result renames OrderHistoryTag'Class (This).setOrderStatus; pragma Unreferenced (Java_Result); begin null; end;
                    else
                        return TableTag (This).doStartTag;
                    end if;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.OrderHistoryTag_Package;



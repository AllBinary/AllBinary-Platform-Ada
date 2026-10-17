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


package body admin.tags.OrderItemsTag_Package is

   procedure Initialize_Fields (This : in out OrderItemsTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.status := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderItemsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (OrderItemsHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (OrderItemsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return OrderItemsTag_Access is
      This : constant OrderItemsTag_Access := new OrderItemsTag;
   begin
      OrderItemsTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setStatus (This : in out OrderItemsTag; value : Unbounded_String) is
   begin
        This.status := value;
   end setStatus;

   --  throws LicensingException
   function setOrderStatus (This : in out OrderItemsTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      methodParams : Ada_Tags_Tag_Array_Access;
      method : Method_Access;
      methodArgs : Java_Object_Access_Array_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := OrderItemsRequestHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            if (This.status) = (Null_Unbounded_String) then
                helperClass := anyType.all'Tag;
                method := helperClass.getMethod (To_Unbounded_String ("setOrderStatus"), null);
                result := Unbounded_String (method.invoke (anyType, null));
                return result;
            else
                helperClass := anyType.all'Tag;
                methodParams := new Ada_Tags_Tag_Array'(0 => This.status.all'Tag);
                method := helperClass.getMethod (To_Unbounded_String ("setOrderStatus"), methodParams);
                methodArgs := new Java_Object_Access_Array'(0 => This.status);
                result := Unbounded_String (method.invoke (anyType, methodArgs));
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
   function doStartTag (This : in out OrderItemsTag) return Integer is
   begin
        begin
            if This.isEnabled then
                if (This.getCommand) /= (null) then
                    This.getPropertiesHashMap.put (OrderHistoryData_Package.STATUS, This.status);
                    if (This.getCommand.compareTo (OrderHistoryData_Package.SETSTATUS)) = (0) then
                        This.pageContext.getOut.print (This.setOrderStatus);
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

end admin.tags.OrderItemsTag_Package;



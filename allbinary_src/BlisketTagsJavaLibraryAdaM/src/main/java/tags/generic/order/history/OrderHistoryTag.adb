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


package body tags.generic_Id.order.history.OrderHistoryTag_Package is

   procedure Initialize_Fields (This : in out OrderHistoryTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.status := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out OrderHistoryTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
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
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := OrderHistoryHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("setOrderStatus"), null);
            result := Unbounded_String (method.invoke (anyType, null));
            return result;
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
            This.setName (To_Unbounded_String ("Basic Order History View"));
            This.setObjectFile (To_Unbounded_String ("views.generic.order.history.ValidationView"));
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (OrderHistoryData_Package.SETSTATUS)) = (0) then
                    This.getPropertiesHashMap.put (OrderHistoryData_Package.STATUS, This.status);
                    This.pageContext.getOut.print (This.setOrderStatus);
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    null;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
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

end tags.generic_Id.order.history.OrderHistoryTag_Package;



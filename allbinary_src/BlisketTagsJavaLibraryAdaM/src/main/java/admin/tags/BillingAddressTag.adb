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


with admin.taghelpers.BillingAddressHelperFactory_Package; use admin.taghelpers.BillingAddressHelperFactory_Package;
with org.allbinary.business.user.address.BillingAddressData_Package; use org.allbinary.business.user.address.BillingAddressData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.BillingAddressTag_Package is

   package BillingAddressHelperFactory_Package renames Standard.admin.taghelpers.BillingAddressHelperFactory_Package;
   package BillingAddressData_Package renames Standard.org.allbinary.business.user.address.BillingAddressData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out BillingAddressTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.value := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out BillingAddressTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        BillingAddressTag'Class (This).setTagHelperFactory (BillingAddressHelperFactory_Package.Create);
        BillingAddressTag'Class (This).setTagRequestHelperFactory (BillingAddressHelperFactory_Package.Create);
   end Initialize;

   function Create return BillingAddressTag_Access is
      This : constant BillingAddressTag_Access := new BillingAddressTag;
   begin
      BillingAddressTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setValue (This : in out BillingAddressTag; value : Unbounded_String) is
   begin
        This.value := value;
   end setValue;

   --  throws LicensingException
   function set (This : in out BillingAddressTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := BillingAddressHelperFactory_Package.Create.getInstance (BillingAddressTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("set"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end set;

   --  throws LicensingException
   function setToShippingAddress (This : in out BillingAddressTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := BillingAddressHelperFactory_Package.Create.getInstance (BillingAddressTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("setToShippingAddress"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end setToShippingAddress;

   --  throws JspTagException
   function doStartTag (This : in out BillingAddressTag) return Integer is
   begin
        begin
            if BillingAddressTag'Class (This).isEnabled then
                if (BillingAddressTag'Class (This).getCommand) /= (null) then
                    if (BillingAddressTag'Class (This).getCommand.compareTo (BillingAddressData_Package.SELECT_Id)) = (0) then
                        declare Java_Result renames BillingAddressTag'Class (This).set; pragma Unreferenced (Java_Result); begin null; end;
                        return This.EVAL_BODY_INCLUDE;
                    elsif (BillingAddressTag'Class (This).getCommand.compareTo (BillingAddressData_Package.SETTOSHIPPINGADDRESS)) = (0) then
                        declare Java_Result renames BillingAddressTag'Class (This).setToShippingAddress; pragma Unreferenced (Java_Result); begin null; end;
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

end admin.tags.BillingAddressTag_Package;



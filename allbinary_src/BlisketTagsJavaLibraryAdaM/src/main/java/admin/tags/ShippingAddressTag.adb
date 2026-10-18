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


with admin.taghelpers.ShippingAddressHelperFactory_Package; use admin.taghelpers.ShippingAddressHelperFactory_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.ShippingAddressTag_Package is

   package ShippingAddressHelperFactory_Package renames Standard.admin.taghelpers.ShippingAddressHelperFactory_Package;
   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out ShippingAddressTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.value := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingAddressTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        ShippingAddressTag'Class (This).setTagHelperFactory (ShippingAddressHelperFactory_Package.Create);
        ShippingAddressTag'Class (This).setTagRequestHelperFactory (ShippingAddressHelperFactory_Package.Create);
   end Initialize;

   function Create return ShippingAddressTag_Access is
      This : constant ShippingAddressTag_Access := new ShippingAddressTag;
   begin
      ShippingAddressTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setValue (This : in out ShippingAddressTag; value : Unbounded_String) is
   begin
        This.value := value;
   end setValue;

   --  throws LicensingException
   function set (This : in out ShippingAddressTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := ShippingAddressHelperFactory_Package.Create.getInstance (ShippingAddressTag'Class (This).getPropertiesHashMap, This.pageContext);
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
   function setToBillingAddress (This : in out ShippingAddressTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := ShippingAddressHelperFactory_Package.Create.getInstance (ShippingAddressTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("setToBillingAddress"), null);
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
   end setToBillingAddress;

   --  throws JspTagException
   function doStartTag (This : in out ShippingAddressTag) return Integer is
   begin
        begin
            if ShippingAddressTag'Class (This).isEnabled then
                if (ShippingAddressTag'Class (This).getCommand) /= (null) then
                    if (ShippingAddressTag'Class (This).getCommand.compareTo (ShippingAddressData_Package.SELECT_Id)) = (0) then
                        declare Java_Result renames ShippingAddressTag'Class (This).set; pragma Unreferenced (Java_Result); begin null; end;
                        return This.EVAL_BODY_INCLUDE;
                    elsif (ShippingAddressTag'Class (This).getCommand.compareTo (ShippingAddressData_Package.SETTOBILLINGADDRESS)) = (0) then
                        declare Java_Result renames ShippingAddressTag'Class (This).setToBillingAddress; pragma Unreferenced (Java_Result); begin null; end;
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

end admin.tags.ShippingAddressTag_Package;



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


package body admin.tags.ShippingAddressTag_Package is

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
        This.setTagHelperFactory (ShippingAddressHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (ShippingAddressHelperFactory_Package.Create);
   end Initialize;

   function Create return ShippingAddressTag_Access is
      This : constant ShippingAddressTag_Access := new ShippingAddressTag;
   begin
      Initialize (This.all);
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
            anyType := ShippingAddressHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("set"), null);
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
            anyType := ShippingAddressHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("setToBillingAddress"), null);
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
   end setToBillingAddress;

   --  throws JspTagException
   function doStartTag (This : in out ShippingAddressTag) return Integer is
   begin
        begin
            if This.isEnabled then
                if (This.getCommand) /= (null) then
                    if (This.getCommand.compareTo (ShippingAddressData_Package.SELECT_Id)) = (0) then
                        This.set;
                        return This.EVAL_BODY_INCLUDE;
                    elsif (This.getCommand.compareTo (ShippingAddressData_Package.SETTOBILLINGADDRESS)) = (0) then
                        This.setToBillingAddress;
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

   procedure set (This : in out ShippingAddressTag) is
      Java_Result : constant Unbounded_String := ShippingAddressTag'Class (This).set;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end set;

   procedure setToBillingAddress (This : in out ShippingAddressTag) is
      Java_Result : constant Unbounded_String := ShippingAddressTag'Class (This).setToBillingAddress;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setToBillingAddress;

   procedure doStartTag (This : in out ShippingAddressTag) is
      Java_Result : constant Integer := ShippingAddressTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.ShippingAddressTag_Package;



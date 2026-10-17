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


package body admin.tags.BillingAddressTag_Package is

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
        This.setTagHelperFactory (BillingAddressHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (BillingAddressHelperFactory_Package.Create);
   end Initialize;

   function Create return BillingAddressTag_Access is
      This : constant BillingAddressTag_Access := new BillingAddressTag;
   begin
      Initialize (This.all);
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
            anyType := BillingAddressHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
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
   function setToShippingAddress (This : in out BillingAddressTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := BillingAddressHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("setToShippingAddress"), null);
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
   end setToShippingAddress;

   --  throws JspTagException
   function doStartTag (This : in out BillingAddressTag) return Integer is
   begin
        begin
            if This.isEnabled then
                if (This.getCommand) /= (null) then
                    if (This.getCommand.compareTo (BillingAddressData_Package.SELECT_Id)) = (0) then
                        This.set;
                        return This.EVAL_BODY_INCLUDE;
                    elsif (This.getCommand.compareTo (BillingAddressData_Package.SETTOSHIPPINGADDRESS)) = (0) then
                        This.setToShippingAddress;
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

   procedure set (This : in out BillingAddressTag) is
      Java_Result : constant Unbounded_String := BillingAddressTag'Class (This).set;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end set;

   procedure setToShippingAddress (This : in out BillingAddressTag) is
      Java_Result : constant Unbounded_String := BillingAddressTag'Class (This).setToShippingAddress;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setToShippingAddress;

   procedure doStartTag (This : in out BillingAddressTag) is
      Java_Result : constant Integer := BillingAddressTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.BillingAddressTag_Package;



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


package body admin.tags.ShippingTag_Package is

   procedure Initialize_Fields (This : in out ShippingTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.command := Null_Unbounded_String;
      This.storeName := Null_Unbounded_String;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ShippingTag_Access is
      This : constant ShippingTag_Access := new ShippingTag;
   begin
      ShippingTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out ShippingTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setStoreName (This : in out ShippingTag; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   --  throws LicensingException
   function setShippingType (This : in out ShippingTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := ShippingHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("setShippingType"), null);
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
   end setShippingType;

   --  throws JspTagException
   function doStartTag (This : in out ShippingTag) return Integer is
   begin
        begin
            if (This.command) /= (Null_Unbounded_String) then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                This.propertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (This.storeName));
                if (Java_Compare_To (This.command, org_Package.allbinary.globals.GLOBALS2.SETSHIPPINGTYPE)) = (0) then
                    ShippingTag'Class (This).setShippingType;
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

end admin.tags.ShippingTag_Package;



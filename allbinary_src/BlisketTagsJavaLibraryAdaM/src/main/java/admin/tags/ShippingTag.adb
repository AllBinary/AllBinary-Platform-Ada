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
      Initialize (This.all);
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
            result := Unbounded_String (method.invoke (anyType, null));
            return result;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end setShippingType;

   --  throws JspTagException
   function doStartTag (This : in out ShippingTag) return Integer is
   begin
        begin
            if (This.command) /= (Null_Unbounded_String) then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                This.propertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
                if (This.command.compareTo (org_Package.allbinary.globals.GLOBALS2.SETSHIPPINGTYPE)) = (0) then
                    This.setShippingType;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when e : others =>
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
        end;
   end doStartTag;

   procedure setShippingType (This : in out ShippingTag) is
      Java_Result : constant Unbounded_String := ShippingTag'Class (This).setShippingType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setShippingType;

   procedure doStartTag (This : in out ShippingTag) is
      Java_Result : constant Integer := ShippingTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.ShippingTag_Package;



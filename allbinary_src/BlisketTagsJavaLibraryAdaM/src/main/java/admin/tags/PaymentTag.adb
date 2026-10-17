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


package body admin.tags.PaymentTag_Package is

   procedure Initialize_Fields (This : in out PaymentTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.storeName := Null_Unbounded_String;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (PaymentHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (PaymentHelperFactory_Package.Create);
   end Initialize;

   function Create return PaymentTag_Access is
      This : constant PaymentTag_Access := new PaymentTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setStoreName (This : in out PaymentTag; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   --  throws LicensingException
   function select_Id (This : in out PaymentTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := PaymentHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("select"), null);
            result := Unbounded_String (method.invoke (anyType, null));
            return result;
        exception
            when e : others =>
            Java_Throw (e);
        end;
   end select_Id;

   --  throws JspTagException
   function doStartTag (This : in out PaymentTag) return Integer is
      output : Unbounded_String;
   begin
        begin
            if This.isEnabled then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                This.propertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
                if (This.getCommand) /= (null) then
                    if (This.getCommand.compareTo (PaymentData_Package.SELECT_Id)) = (0) then
                        output := This.select_Id;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return This.EVAL_BODY_INCLUDE;
                    else
                        return TableTag (This).doStartTag;
                    end if;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when e : others =>
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
        end;
   end doStartTag;

   procedure select_Id (This : in out PaymentTag) is
      Java_Result : constant Unbounded_String := PaymentTag'Class (This).select_Id;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end select_Id;

   procedure doStartTag (This : in out PaymentTag) is
      Java_Result : constant Integer := PaymentTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.PaymentTag_Package;



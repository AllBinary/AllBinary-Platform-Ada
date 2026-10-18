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


with admin.taghelpers.PaymentHelperFactory_Package; use admin.taghelpers.PaymentHelperFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.PaymentTag_Package is

   package PaymentHelperFactory_Package renames Standard.admin.taghelpers.PaymentHelperFactory_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
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
        PaymentTag'Class (This).setTagHelperFactory (PaymentHelperFactory_Package.Create);
        PaymentTag'Class (This).setTagRequestHelperFactory (PaymentHelperFactory_Package.Create);
   end Initialize;

   function Create return PaymentTag_Access is
      This : constant PaymentTag_Access := new PaymentTag;
   begin
      PaymentTag_Package.Initialize (This.all);
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
            anyType := PaymentHelperFactory_Package.Create.getInstance (PaymentTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("select"), null);
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
   end select_Id;

   --  throws JspTagException
   function doStartTag (This : in out PaymentTag) return Integer is
      output : Unbounded_String;
   begin
        begin
            if PaymentTag'Class (This).isEnabled then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                This.propertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (This.storeName));
                if (PaymentTag'Class (This).getCommand) /= (null) then
                    if (PaymentTag'Class (This).getCommand.compareTo (PaymentData_Package.SELECT_Id)) = (0) then
                        output := PaymentTag'Class (This).select_Id;
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
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.PaymentTag_Package;



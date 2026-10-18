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


with admin.taghelpers.PaymentProcessHelperFactory_Package; use admin.taghelpers.PaymentProcessHelperFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body admin.tags.PaymentProcessTag_Package is

   package PaymentProcessHelperFactory_Package renames Standard.admin.taghelpers.PaymentProcessHelperFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out PaymentProcessTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentProcessTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentProcessTag_Access is
      This : constant PaymentProcessTag_Access := new PaymentProcessTag;
   begin
      PaymentProcessTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException, Exception
   function process (This : in out PaymentProcessTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
   begin
        begin
            anyType := PaymentProcessHelperFactory_Package.Create.getInstance (PaymentProcessTag'Class (This).getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (This.commonStrings.PROCESS, null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.LICENSINGERROR) then
                This.logUtil.put (To_Unbounded_String ("LicensingException"), PaymentProcessTag_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end process;

   --  throws JspTagException
   function doStartTag (This : in out PaymentProcessTag) return Integer is
   begin
        begin
            if (((PaymentProcessTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR)) = (0)) or else ((PaymentProcessTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEORDERANDEVALBODY)) = (0))) or else ((PaymentProcessTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR)) = (0)) then
                This.pageContext.getOut.print (Java_Image (PaymentProcessTag'Class (This).process) & To_Unbounded_String ("<br />"));
                if (PaymentProcessTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR)) = (0) then
                    return This.SKIP_BODY;
                else
                    return This.EVAL_BODY_INCLUDE;
                end if;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such Payment Processing Command")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.PaymentProcessTag_Package;



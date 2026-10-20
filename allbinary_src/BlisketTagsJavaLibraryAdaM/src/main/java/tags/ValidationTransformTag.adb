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


with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with taghelpers.ValidatedViewHelperFactory_Package; use taghelpers.ValidatedViewHelperFactory_Package;

package body tags.ValidationTransformTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package ValidatedViewHelperFactory_Package renames Standard.taghelpers.ValidatedViewHelperFactory_Package;
   procedure Initialize_Fields (This : in out ValidationTransformTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.xslFile := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ValidationTransformTag'Class) is
   begin
        TransformTag_Package.Initialize (This, ValidatedViewHelperFactory_Package.Create);
        Initialize_Fields (This);
        This.logic := True;
   end Initialize;

   function Create return ValidationTransformTag_Access is
      This : constant ValidationTransformTag_Access := new ValidationTransformTag;
   begin
      ValidationTransformTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setXsl (This : in out ValidationTransformTag; value : Unbounded_String) is
   begin
        This.xslFile := value;
        ValidationTransformTag'Class (This).setTemplateFile (This.xslFile);
   end setXsl;

   procedure setLogic (This : in out ValidationTransformTag; logic : Boolean) is
   begin
        This.logic := logic;
   end setLogic;

   --  throws Exception
   function isValid (This : in out ValidationTransformTag) return Boolean is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            helperClass := ValidationTransformTag'Class (This).getHelper.all'Tag;
            method := helperClass.getMethod (This.commonStrings.IS_VALID, null);
            result := Java_Unbox_Boolean (method.invoke (ValidationTransformTag'Class (This).getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ValidationTransformTag_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end isValid;

   --  throws Exception
   function validationInfo (This : in out ValidationTransformTag) return Unbounded_String is
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
   begin
        begin
            addressHelperClass := ValidationTransformTag'Class (This).getHelper.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("validationInfo"), null);
            result := Java_Unbox (method.invoke (ValidationTransformTag'Class (This).getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ValidationTransformTag_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end validationInfo;

   --  throws JspTagException
   function doStartTag (This : in out ValidationTransformTag) return Integer is
      stringBuffer : StringMaker_Access;
      request : HttpServletRequest_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                stringBuffer := StringMaker_Package.Create;
                request := HttpServletRequest_Access (This.pageContext.getRequest);
                stringBuffer.append (To_Unbounded_String ("ValidationViewTag Start For: "));
                stringBuffer.append (ValidationTransformTag'Class (This).getName);
                stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "View FIle: "));
                stringBuffer.append (ValidationTransformTag'Class (This).getObjectFile);
                stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Request URI: "));
                stringBuffer.append (request.getRequestURI);
                This.logUtil.putF (stringBuffer.toString, ValidationTransformTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            ValidationTransformTag'Class (This).setHelper;
            if ValidationTransformTag'Class (This).isValid then
                TransformTag (This).doStartTag;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("View File: "));
                    stringBuffer.append (ValidationTransformTag'Class (This).getObjectFile);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Logic includes body if true="));
                    stringBuffer.appendboolean (This.logic);
                    This.logUtil.putF (stringBuffer.toString, ValidationTransformTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                end if;
                if This.logic then
                    return EVAL_BODY_INCLUDE;
                else
                    return SKIP_BODY;
                end if;
            else
                This.pageContext.getOut.print (ValidationTransformTag'Class (This).validationInfo);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("View File: "));
                    stringBuffer.append (ValidationTransformTag'Class (This).getObjectFile);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "isValid()=false"));
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Logic skips body if true="));
                    stringBuffer.appendboolean (This.logic);
                    This.logUtil.putF (stringBuffer.toString, ValidationTransformTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                end if;
                if This.logic then
                    return SKIP_BODY;
                else
                    return EVAL_BODY_INCLUDE;
                end if;
            end if;
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

   function doEndTag (This : in out ValidationTransformTag) return Integer is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (To_Unbounded_String ("Tag Ended"), ValidationTransformTag_Access'(This'Unchecked_Access), To_Unbounded_String ("doEndTag"));
        end if;
        This.logic := True;
        return TransformTag (This).doEndTag;
   end doEndTag;

end tags.ValidationTransformTag_Package;



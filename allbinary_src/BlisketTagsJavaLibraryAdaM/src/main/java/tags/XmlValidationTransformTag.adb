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


package body tags.XmlValidationTransformTag_Package is

   procedure Initialize_Fields (This : in out XmlValidationTransformTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out XmlValidationTransformTag'Class) is
   begin
      TransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return XmlValidationTransformTag_Access is
      This : constant XmlValidationTransformTag_Access := new XmlValidationTransformTag;
   begin
      XmlValidationTransformTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out XmlValidationTransformTag) return Boolean is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            helperClass := XmlValidationTransformTag'Class (This).getHelper.all'Tag;
            method := helperClass.getMethod (This.commonStrings.IS_VALID, null);
            result := Boolean (method.invoke (XmlValidationTransformTag'Class (This).getHelper, null));
            return result.booleanValue;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, XmlValidationTransformTag_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end isValid;

   --  throws JspTagException
   function doStartTag (This : in out XmlValidationTransformTag) return Integer is
   begin
        begin
            XmlValidationTransformTag'Class (This).setHelper;
            if XmlValidationTransformTag'Class (This).isValid then
                TransformTag (This).doStartTag;
                return This.EVAL_BODY_INCLUDE;
            else
                TransformTag (This).doStartTag;
                return This.SKIP_BODY;
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

end tags.XmlValidationTransformTag_Package;



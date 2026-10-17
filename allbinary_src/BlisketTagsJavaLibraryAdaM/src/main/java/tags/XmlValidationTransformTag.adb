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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out XmlValidationTransformTag) return Boolean is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Boolean;
   begin
        begin
            helperClass := This.getHelper.all'Tag;
            method := helperClass.getMethod (This.commonStrings.IS_VALID, null);
            result := Boolean (method.invoke (This.getHelper, null));
            return result.booleanValue;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            Java_Throw (e);
        end;
   end isValid;

   --  throws JspTagException
   function doStartTag (This : in out XmlValidationTransformTag) return Integer is
   begin
        begin
            This.setHelper;
            if This.isValid then
                TransformTag (This).doStartTag;
                return This.EVAL_BODY_INCLUDE;
            else
                TransformTag (This).doStartTag;
                return This.SKIP_BODY;
            end if;
        exception
            when e : others =>
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
        end;
   end doStartTag;

   procedure isValid (This : in out XmlValidationTransformTag) is
      Java_Result : constant Boolean := XmlValidationTransformTag'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure doStartTag (This : in out XmlValidationTransformTag) is
      Java_Result : constant Integer := XmlValidationTransformTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.XmlValidationTransformTag_Package;



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
with taghelpers.ViewHelperFactory_Package; use taghelpers.ViewHelperFactory_Package;

package body tags.TransformTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package ViewHelperFactory_Package renames Standard.taghelpers.ViewHelperFactory_Package;
   procedure Initialize_Fields (This : in out TransformTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformTag'Class) is
   begin
        TransformInfoTag_Package.Initialize (This, ViewHelperFactory_Package.Create);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, TransformTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return TransformTag_Access is
      This : constant TransformTag_Access := new TransformTag;
   begin
      TransformTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out TransformTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) is
      tagHelperFactoryInterface : constant TagHelperFactoryInterface_Access := TagHelperFactoryInterface_Access (tagHelperFactoryInterface_Param);
   begin
        TransformInfoTag_Package.Initialize (This, tagHelperFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, TransformTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return TransformTag_Access is
      This : constant TransformTag_Access := new TransformTag;
   begin
      TransformTag_Package.Initialize (This.all, tagHelperFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out TransformTag) return Unbounded_String is
      result : Unbounded_String;
   begin
        begin
            result := Java_Unbox (TransformTag'Class (This).getHelper.all'Tag.getMethod (To_Unbounded_String ("view"), null).invoke (TransformTag'Class (This).getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformTag_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   --  throws JspTagException
   function doStartTag (This : in out TransformTag) return Integer is
      stringBuffer : StringMaker_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("Creating with: " & ASCII.LF & "") & TransformTag'Class (This).getPropertiesHashMap.toString, TransformTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("ViewTag Start For: "));
                stringBuffer.append (TransformTag'Class (This).getName);
                stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "ViewFile: "));
                stringBuffer.append (TransformTag'Class (This).getObjectFile);
                This.logUtil.putF (stringBuffer.toString, TransformTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            TransformTag'Class (This).setHelper;
            This.pageContext.getOut.print (TransformTag'Class (This).view);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("Tag End"), TransformTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
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

end tags.TransformTag_Package;



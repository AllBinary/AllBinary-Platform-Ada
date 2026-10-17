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


package body tags.TransformTag_Package is

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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return TransformTag_Access is
      This : constant TransformTag_Access := new TransformTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformTag'Class; tagHelperFactoryInterface : TagHelperFactoryInterface_Access) is
   begin
        TransformInfoTag_Package.Initialize (This, tagHelperFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (tagHelperFactoryInterface : TagHelperFactoryInterface_Access) return TransformTag_Access is
      This : constant TransformTag_Access := new TransformTag;
   begin
      Initialize (This.all, tagHelperFactoryInterface);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out TransformTag) return Unbounded_String is
      result : Unbounded_String;
   begin
        begin
            result := Unbounded_String (This.getHelper.all'Tag.getMethod (To_Unbounded_String ("view"), null).invoke (This.getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
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
                This.logUtil.putF (To_Unbounded_String ("Creating with: " & ASCII.LF & "") & This.getPropertiesHashMap.toString, This'Unchecked_Access, This.tagStrings.DO_START_TAG);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("ViewTag Start For: "));
                stringBuffer.append (This.getName);
                stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "ViewFile: "));
                stringBuffer.append (This.getObjectFile);
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.tagStrings.DO_START_TAG);
            end if;
            This.setHelper;
            This.pageContext.getOut.print (This.view);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("Tag End"), This'Unchecked_Access, This.tagStrings.DO_START_TAG);
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

   procedure view (This : in out TransformTag) is
      Java_Result : constant Unbounded_String := TransformTag'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

   procedure doStartTag (This : in out TransformTag) is
      Java_Result : constant Integer := TransformTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.TransformTag_Package;



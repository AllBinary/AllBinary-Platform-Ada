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


package body tags.StoreWorkFlowTag_Package is

   procedure Initialize_Fields (This : in out StoreWorkFlowTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.viewName := Null_Unbounded_String;
      This.viewFile := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreWorkFlowTag'Class) is
   begin
        HelperTag_Package.Initialize (This, StoreTagWorkFlowHelperFactory_Package.Create);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return StoreWorkFlowTag_Access is
      This : constant StoreWorkFlowTag_Access := new StoreWorkFlowTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setName (This : in out StoreWorkFlowTag; value : Unbounded_String) is
   begin
        This.viewName := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.NAME, This.viewName);
   end setName;

   --  throws Exception
   function process (This : in out StoreWorkFlowTag) return Integer is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Integer;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.PROCESS);
            end if;
            helperClass := This.getHelper.all'Tag;
            method := helperClass.getMethod (This.commonStrings.PROCESS, null);
            result := Integer (method.invoke (This.getHelper, null));
            return result.intValue;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
            end if;
            Java_Throw (e);
        end;
   end process;

   --  throws JspTagException
   function doStartTag (This : in out StoreWorkFlowTag) return Integer is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.tagStrings.DO_START_TAG);
            end if;
            This.setHelper;
            return This.process;
        exception
            when e : others =>
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
        end;
   end doStartTag;

   procedure process (This : in out StoreWorkFlowTag) is
      Java_Result : constant Integer := StoreWorkFlowTag'Class (This).process;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

   procedure doStartTag (This : in out StoreWorkFlowTag) is
      Java_Result : constant Integer := StoreWorkFlowTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.StoreWorkFlowTag_Package;



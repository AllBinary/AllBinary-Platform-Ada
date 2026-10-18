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


package body tags.workflow.processing.basic.BasicWorkFlowTag_Package is

   procedure Initialize_Fields (This : in out BasicWorkFlowTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWorkFlowTag'Class) is
   begin
      StoreWorkFlowTag_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, BasicWorkFlowTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return BasicWorkFlowTag_Access is
      This : constant BasicWorkFlowTag_Access := new BasicWorkFlowTag;
   begin
      BasicWorkFlowTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out BasicWorkFlowTag) return Integer is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (This.commonStrings.START, BasicWorkFlowTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            BasicWorkFlowTag'Class (This).getPropertiesHashMap.put (DynamicObjectData_Package.NAME, To_Unbounded_String ("workflows.template.data.BasicStoreWorkFlow"));
            return StoreWorkFlowTag (This).doStartTag;
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

end tags.workflow.processing.basic.BasicWorkFlowTag_Package;



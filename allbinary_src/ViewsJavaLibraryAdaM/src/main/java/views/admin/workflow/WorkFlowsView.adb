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


package body views.admin.workflow.WorkFlowsView_Package is

   procedure Initialize_Fields (This : in out WorkFlowsView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowsView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.workFlowsVector := WorkFlowEntityFactory_Package.getInstance.create2.get (This.getWeblisketSession.getStoreName);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return WorkFlowsView_Access is
      This : constant WorkFlowsView_Access := new WorkFlowsView;
   begin
      WorkFlowsView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure addDomNodeInterfaces (This : in out WorkFlowsView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (WorkFlowsView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out WorkFlowsView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkFlowsView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   function toXmlNode (This : in out WorkFlowsView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      size : Integer;
      workFlowInterface : WorkFlowInterface_Access;
      index : Integer;
   begin
        begin
            node := document.createElement (WorkFlowData_Package.getInstance.WORKFLOWS);
            size := This.workFlowsVector.size;
            for index in 0 .. (size) - 1 loop
                workFlowInterface := WorkFlowInterface_Access (This.workFlowsVector.get (index));
            end loop;
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, WorkFlowsView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode()"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   procedure toXmlNode (This : in out WorkFlowsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := WorkFlowsView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.workflow.WorkFlowsView_Package;



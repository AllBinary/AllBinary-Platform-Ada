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


package body views.admin.workflow.WorkFlowView_Package is

   procedure Initialize_Fields (This : in out WorkFlowView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.workFlowInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return WorkFlowView_Access is
      This : constant WorkFlowView_Access := new WorkFlowView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function toXmlNode (This : in out WorkFlowView; document : Document_Access) return Node_Access is
   begin
        begin
            return null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toXmlNode()"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out WorkFlowView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This'Unchecked_Access));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out WorkFlowView) return Unbounded_String is
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out WorkFlowView; document : Document_Access) is
      Java_Result : constant Node_Access := WorkFlowView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure view (This : in out WorkFlowView) is
      Java_Result : constant Unbounded_String := WorkFlowView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.admin.workflow.WorkFlowView_Package;



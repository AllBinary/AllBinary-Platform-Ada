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


with org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
with org.allbinary.logic.control.workflow.WorkFlowData_Package; use org.allbinary.logic.control.workflow.WorkFlowData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body views.admin.workflow.DeleteValidationView_Package is

   package WorkFlowEntityFactory_Package renames Standard.org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
   package WorkFlowData_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out DeleteValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        WorkFlowView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.workFlowName := DeleteValidationView'Class (This).getPageContext.getRequest.getParameter (WorkFlowData_Package.getInstance.NAME);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Name: ") & This.workFlowName, DeleteValidationView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteValidationView_Access is
      This : constant DeleteValidationView_Access := new DeleteValidationView;
   begin
      DeleteValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out DeleteValidationView) return Boolean is
   begin
        begin
            if (This.workFlowName) = (Null_Unbounded_String) then
                return False;
            end if;
            if (WorkFlowEntityFactory_Package.getInstance.create2.get (This.workFlowName, DeleteValidationView'Class (This).getWeblisketSession.getStoreName)) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("WorkFlow does not exist."), DeleteValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), DeleteValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out DeleteValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (This.workFlowName) = (Null_Unbounded_String) then
                stringBuffer.append (To_Unbounded_String ("WorkFlow name is invalid<br />"));
            end if;
            if (WorkFlowEntityFactory_Package.getInstance.create2.get (This.workFlowName, DeleteValidationView'Class (This).getWeblisketSession.getStoreName)) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("WorkFlow does not exist."), DeleteValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                stringBuffer.append (To_Unbounded_String ("WorkFlow does not exist<br />"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), DeleteValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out DeleteValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DeleteValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out DeleteValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DeleteValidationView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.workflow.DeleteValidationView_Package;



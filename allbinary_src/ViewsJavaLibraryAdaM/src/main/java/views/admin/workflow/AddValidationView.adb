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


package body views.admin.workflow.AddValidationView_Package is

   procedure Initialize_Fields (This : in out AddValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AddValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        WorkFlowView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.workFlowInterface := NewWorkFlowFactory_Package.getInstance.getInstance (This.abeClientInformation, This.getPropertiesHashMap, This.getPageContext);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddValidationView_Access is
      This : constant AddValidationView_Access := new AddValidationView;
   begin
      AddValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out AddValidationView) return Boolean is
   begin
        begin
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out AddValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (WorkFlowEntityFactory_Package.getInstance.create2.get (This.workFlowInterface.getName, This.getTransformInfoInterface.getStoreName)) /= (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Workflow already exist"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"));
                end if;
                stringBuffer.append (To_Unbounded_String ("The WorkFlow name you selected is already in use.<br/>  Please select another Name.<br />"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out AddValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out AddValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := AddValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.workflow.AddValidationView_Package;



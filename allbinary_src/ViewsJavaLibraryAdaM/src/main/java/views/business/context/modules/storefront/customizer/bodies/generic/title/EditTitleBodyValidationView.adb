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


package body views.business.context.modules.storefront.customizer.bodies.generic_Id.title.EditTitleBodyValidationView_Package is

   procedure Initialize_Fields (This : in out EditTitleBodyValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out EditTitleBodyValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        TitleBodyCustomizerView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return EditTitleBodyValidationView_Access is
      This : constant EditTitleBodyValidationView_Access := new EditTitleBodyValidationView;
   begin
      EditTitleBodyValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out EditTitleBodyValidationView) return Boolean is
      document : Document_Access;
      isValid : Boolean;
   begin
        begin
            document := CustomizerUtil_Package.getInstance.getViewDataForComponentsInObjectConfig (This.getTransformInfoInterface);
            This.titleBody := TitleBodyValidation_Package.Create (document);
            isValid := This.titleBody.isValid;
            return isValid;
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

   function validationInfo (This : in out EditTitleBodyValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.titleBody.validationInfo);
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

   function toValidationInfoDoc (This : in out EditTitleBodyValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditTitleBodyValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditTitleBodyValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := EditTitleBodyValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.bodies.generic_Id.title.EditTitleBodyValidationView_Package;



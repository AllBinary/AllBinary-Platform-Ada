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


package body views.generic_Id.user.EditValidationView_Package is

   procedure Initialize_Fields (This : in out EditValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        UserView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return EditValidationView_Access is
      This : constant EditValidationView_Access := new EditValidationView;
   begin
      EditValidationView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out EditValidationView) return Boolean is
   begin
        begin
            if (UserName_Package.getInstance.isValid (This.getWeblisketSession.getUserName)) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Failed to validate username"), EditValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            This.user := UserEntityFactory_Package.getInstance.getUser (This.getWeblisketSession.getUserName);
            if (This.user) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User does not exist"), EditValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if (This.user.isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User exists but is invalid - Probably manually modified"), EditValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
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
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), EditValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out EditValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (UserName_Package.getInstance.isValid (This.getWeblisketSession.getUserName)) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("Failed to validate username"), EditValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                stringBuffer.append (To_Unbounded_String ("Session User Name is not valid - Your session data has been logged!"));
            end if;
            if (This.user) = (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User does not exist"), EditValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                stringBuffer.append (To_Unbounded_String ("User profile does not exist - Your session data has been logged!"));
            end if;
            if (This.user.isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User exists but is invalid - Probably manually modified"), EditValidationView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                stringBuffer.append (This.user.validationInfo);
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), EditValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditValidationView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditValidationView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := EditValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.user.EditValidationView_Package;



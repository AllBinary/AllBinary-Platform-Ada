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


package body views.admin.user.AddValidationUserView_Package is

   procedure Initialize_Fields (This : in out AddValidationUserView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AddValidationUserView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpContextView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.user := NewUserFactory_Package.getInstance (transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return AddValidationUserView_Access is
      This : constant AddValidationUserView_Access := new AddValidationUserView;
   begin
      AddValidationUserView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out AddValidationUserView) return Boolean is
   begin
        begin
            if (UserEntityFactory_Package.getInstance.getUser (This.user.getUserName)) /= (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User already in existance."), AddValidationUserView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if (This.user.isValid) = (False) then
                return False;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), AddValidationUserView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out AddValidationUserView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (UserEntityFactory_Package.getInstance.getUser (This.user.getUserName)) /= (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User already exists"), AddValidationUserView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                stringBuffer.append (To_Unbounded_String ("The User Name you selected is already in use.<br/>  Please select another User Name.<br />"));
            end if;
            if (This.user.isValid) = (False) then
                stringBuffer.append (This.user.validationInfo);
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), AddValidationUserView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out AddValidationUserView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AddValidationUserView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out AddValidationUserView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (AddValidationUserView_Access'(This'Unchecked_Access));
   end view;

   procedure toValidationInfoNode (This : in out AddValidationUserView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := AddValidationUserView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.user.AddValidationUserView_Package;



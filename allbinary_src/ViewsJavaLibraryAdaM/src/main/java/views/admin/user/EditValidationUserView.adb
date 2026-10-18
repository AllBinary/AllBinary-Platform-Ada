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


package body views.admin.user.EditValidationUserView_Package is

   procedure Initialize_Fields (This : in out EditValidationUserView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EditValidationUserView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpServletRequest : HttpServletRequest_Access;
      hashMap : HashMap_Access;
   begin
        UserView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpServletRequest := HttpServletRequest_Access (EditValidationUserView'Class (This).getPageContext.getRequest);
        hashMap := RequestParams_Package.Create (httpServletRequest).toHashMap;
        This.userName := UserName_Package.Create (hashMap).get;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return EditValidationUserView_Access is
      This : constant EditValidationUserView_Access := new EditValidationUserView;
   begin
      EditValidationUserView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out EditValidationUserView) return Boolean is
   begin
        begin
            if (UserName_Package.getInstance.isValid (This.userName)) = (True) then
                This.user := UserEntityFactory_Package.getInstance.getUser (This.userName);
                if (This.user) = (null) then
                    return False;
                end if;
            else
                return False;
            end if;
            return This.user.isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), EditValidationUserView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out EditValidationUserView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (UserName_Package.getInstance.isValid (This.userName)) = (True) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User Name is valid"), EditValidationUserView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                This.user := UserEntityFactory_Package.getInstance.getUser (This.userName);
                if (This.user) = (null) then
                    stringBuffer.append (To_Unbounded_String ("User does not exist.<br />"));
                    return stringBuffer.toString;
                end if;
            else
                stringBuffer.append (To_Unbounded_String ("User Name is not valid.<br />"));
                return stringBuffer.toString;
            end if;
            if (This.user.isValid) = (False) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("User exists but is invalid - Probably manually modified"), EditValidationUserView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"));
                end if;
                stringBuffer.append (To_Unbounded_String ("User data is not valid - Please call administrator.<br />"));
                stringBuffer.append (This.user.validationInfo);
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), EditValidationUserView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditValidationUserView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditValidationUserView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out EditValidationUserView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EditValidationUserView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.admin.user.EditValidationUserView_Package;



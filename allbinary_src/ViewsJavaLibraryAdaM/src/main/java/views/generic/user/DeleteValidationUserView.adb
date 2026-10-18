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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.username.UserName_Package; use org.allbinary.business.user.username.UserName_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body views.generic_Id.user.DeleteValidationUserView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package UserName_Package renames Standard.org.allbinary.business.user.username.UserName_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out DeleteValidationUserView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DeleteValidationUserView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpServletRequest : HttpServletRequest_Access;
      hashMap : HashMap_Access;
   begin
        UserView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        httpServletRequest := HttpServletRequest_Access (DeleteValidationUserView'Class (This).getPageContext.getRequest);
        hashMap := RequestParams_Package.Create (httpServletRequest).toHashMap;
        This.userName := UserName_Package.Create (hashMap).get;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("User Name: ") & This.userName, DeleteValidationUserView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return DeleteValidationUserView_Access is
      This : constant DeleteValidationUserView_Access := new DeleteValidationUserView;
   begin
      DeleteValidationUserView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out DeleteValidationUserView) return Boolean is
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
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), DeleteValidationUserView_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out DeleteValidationUserView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if (UserName_Package.getInstance.isValid (This.userName)) = (True) then
                This.user := UserEntityFactory_Package.getInstance.getUser (This.userName);
                if (This.user) = (null) then
                    stringBuffer.append (To_Unbounded_String ("User does not exist.<br />"));
                end if;
            else
                stringBuffer.append (To_Unbounded_String ("User Name is not valid.<br />"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), DeleteValidationUserView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out DeleteValidationUserView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out DeleteValidationUserView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out DeleteValidationUserView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := DeleteValidationUserView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.user.DeleteValidationUserView_Package;



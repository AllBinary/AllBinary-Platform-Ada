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



package body taghelpers.ValidationViewHelper_Package is

   procedure Initialize_Fields (This : in out ValidationViewHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ValidationViewHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        ViewHelper_Package.Initialize (This, hashMap, pageContext);
        Initialize_Fields (This);
        This.viewInterface := ValidationComponentInterface_Access (ValidationViewHelper'Class (This).getViewObject);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
            This.logUtil.putF (This.commonStrings.START, ValidationViewHelper_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return ValidationViewHelper_Access is
      This : constant ValidationViewHelper_Access := new ValidationViewHelper;
   begin
      ValidationViewHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   function isValid (This : in out ValidationViewHelper) return Boolean is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPER) then
                This.logUtil.putF (To_Unbounded_String ("Started"), ValidationViewHelper_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return This.viewInterface.isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ValidationViewHelper_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out ValidationViewHelper) return Unbounded_String is
   begin
        begin
            return This.viewInterface.validationInfo;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ValidationViewHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Unknown Validation Error");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out ValidationViewHelper) return Document_Access is
   begin
        begin
            return This.viewInterface.toValidationInfoDoc;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ValidationViewHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("toValidationInfoDoc()"), e);
            end if;
            return null;
                end;
        end;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ValidationViewHelper; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        begin
            return This.viewInterface.toValidationInfoNode (document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ValidationViewHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("toValidationInfoNode()"), e);
            end if;
            return null;
                end;
        end;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out ValidationViewHelper; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ValidationViewHelper'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end taghelpers.ValidationViewHelper_Package;



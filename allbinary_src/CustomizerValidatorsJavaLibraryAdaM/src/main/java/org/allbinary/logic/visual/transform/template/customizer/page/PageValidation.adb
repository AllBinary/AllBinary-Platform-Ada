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


package body org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package is

   procedure Initialize_Fields (This : in out PageValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PageValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.title := TitleValidation_Package.Create;
   end Initialize;

   function Create return PageValidation_Access is
      This : constant PageValidation_Access := new PageValidation;
   begin
      PageValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out PageValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        node := DomSearchHelper_Package.getNode (TitleData_Package.getInstance.NAME, document.getElementsByTagName (PageData_Package.getInstance.NAME));
        This.title := TitleValidation_Package.Create (node);
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return PageValidation_Access is
      This : constant PageValidation_Access := new PageValidation;
   begin
      PageValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out PageValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return PageValidation_Access is
      This : constant PageValidation_Access := new PageValidation;
   begin
      PageValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   procedure getFormData (This : in out PageValidation; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.title := TitleValidation_Package.Create (hashMap);
   end getFormData;

   function isValid (This : in out PageValidation) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("PageValidation"), PageValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if not (This.title.isValid.booleanValue) then
                valid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("PageValidation: ") & Java_Image (valid), PageValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), PageValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out PageValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if not (This.title.isValid.booleanValue) then
                stringBuffer.append (This.title.validationInfo);
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), PageValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out PageValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (PageData_Package.getInstance.NAME);
        node.appendChild (This.title.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := PageValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out PageValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := PageValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.page.PageValidation_Package;



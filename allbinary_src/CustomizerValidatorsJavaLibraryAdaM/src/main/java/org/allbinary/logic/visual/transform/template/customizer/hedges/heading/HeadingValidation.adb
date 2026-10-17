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


package body org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package is

   procedure Initialize_Fields (This : in out HeadingValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HeadingValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.title := TitleValidation_Package.Create;
        This.logo := LogoValidation_Package.Create;
   end Initialize;

   function Create return HeadingValidation_Access is
      This : constant HeadingValidation_Access := new HeadingValidation;
   begin
      HeadingValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out HeadingValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
      headingNodeList : NodeList_Access;
      titleNode : Node_Access;
      logoNode : Node_Access;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        headingNodeList := document.getElementsByTagName (HeadingData_Package.NAME);
        titleNode := DomSearchHelper_Package.getNode (TitleData_Package.getInstance.NAME, headingNodeList.item (0).getChildNodes);
        logoNode := DomSearchHelper_Package.getNode (LogoData_Package.getInstance.NAME, headingNodeList.item (0).getChildNodes);
        This.title := TitleValidation_Package.Create (titleNode);
        This.logo := LogoValidation_Package.Create (logoNode);
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return HeadingValidation_Access is
      This : constant HeadingValidation_Access := new HeadingValidation;
   begin
      HeadingValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out HeadingValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return HeadingValidation_Access is
      This : constant HeadingValidation_Access := new HeadingValidation;
   begin
      HeadingValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out HeadingValidation; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.title := TitleValidation_Package.Create (hashMap);
        This.logo := LogoValidation_Package.Create (hashMap);
   end getFormData;

   function isValid (This : in out HeadingValidation) return Boolean is
      valid : Boolean;
      titleValid : Boolean;
      logoValid : Boolean;
   begin
        begin
            valid := True;
            titleValid := True;
            logoValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, HeadingValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if not (This.title.isValid.booleanValue) then
                titleValid := False;
            end if;
            if not (This.logo.isValid.booleanValue) then
                logoValid := False;
            else
                This.logo.processLogoFile;
            end if;
            if (not (titleValid.booleanValue)) and then (not (logoValid.booleanValue)) then
                valid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("HeadingValidation: ") & Java_Image (valid), HeadingValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), HeadingValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out HeadingValidation) return Unbounded_String is
      valid : Boolean;
      titleValid : Boolean;
      logoValid : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        begin
            valid := True;
            titleValid := True;
            logoValid := True;
            stringBuffer := StringMaker_Package.Create;
            if not (This.title.isValid.booleanValue) then
                titleValid := False;
            end if;
            if not (This.logo.isValid.booleanValue) then
                logoValid := False;
            end if;
            if (not (titleValid.booleanValue)) and then (not (logoValid.booleanValue)) then
                valid := False;
            end if;
            if not (valid.booleanValue) then
                stringBuffer.append (To_Unbounded_String ("Include a title and/or logo for the header."));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), HeadingValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out HeadingValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out HeadingValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out HeadingValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (HeadingData_Package.NAME);
        node.appendChild (This.logo.toXmlNode (document));
        node.appendChild (This.title.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out HeadingValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := HeadingValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out HeadingValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := HeadingValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;



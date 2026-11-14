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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingData_Package; use org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;

package body org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogoData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoData_Package;
   package TitleData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogoValidation_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References.LogoValidation_Access;
   function "=" (Left, Right : LogoValidation_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References."=";
   subtype LogoValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References.LogoValidation_Access_Array;
   function "=" (Left, Right : LogoValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References."=";
   subtype LogoValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References.LogoValidation_Access_Array_Access;
   function "=" (Left, Right : LogoValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References."=";
   subtype LogoValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References.LogoValidation_Access_Array_Access_Array;
   function "=" (Left, Right : LogoValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References."=";
   subtype LogoValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References.LogoValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogoValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package_References."=";
   subtype TitleValidation_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access;
   function "=" (Left, Right : TitleValidation_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array;
   function "=" (Left, Right : TitleValidation_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access;
   function "=" (Left, Right : TitleValidation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access_Array;
   function "=" (Left, Right : TitleValidation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype TitleValidation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References.TitleValidation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleValidation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleValidation_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
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
        HeadingValidation'Class (This).getFormData (hashMap);
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
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, HeadingValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if not (This.title.isValid) then
                titleValid := False;
            end if;
            if not (This.logo.isValid) then
                logoValid := False;
            else
                This.logo.processLogoFile;
            end if;
            if (not (titleValid)) and then (not (logoValid)) then
                valid := False;
            end if;
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("HeadingValidation: ") & Java_Image (valid), HeadingValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
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
            if not (This.title.isValid) then
                titleValid := False;
            end if;
            if not (This.logo.isValid) then
                logoValid := False;
            end if;
            if (not (titleValid)) and then (not (logoValid)) then
                valid := False;
            end if;
            if not (valid) then
                stringBuffer.append (To_Unbounded_String ("Include a title and/or logo for the header."));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
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
      Java_Result : constant Node_Access := HeadingValidation'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out HeadingValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := HeadingValidation'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;



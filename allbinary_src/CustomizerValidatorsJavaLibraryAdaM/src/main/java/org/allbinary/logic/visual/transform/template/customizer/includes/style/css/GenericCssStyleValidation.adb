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


with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StylesData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StylesData_Package;
   package BodyData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out GenericCssStyleValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericCssStyleValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericCssStyleValidation_Access is
      This : constant GenericCssStyleValidation_Access := new GenericCssStyleValidation;
   begin
      GenericCssStyleValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out GenericCssStyleValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
      nodeList : NodeList_Access;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        nodeList := document.getElementsByTagName (StylesData_Package.getInstance.NAME);
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return GenericCssStyleValidation_Access is
      This : constant GenericCssStyleValidation_Access := new GenericCssStyleValidation;
   begin
      GenericCssStyleValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericCssStyleValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        GenericCssStyleValidation'Class (This).getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return GenericCssStyleValidation_Access is
      This : constant GenericCssStyleValidation_Access := new GenericCssStyleValidation;
   begin
      GenericCssStyleValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out GenericCssStyleValidation; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        null;
   end getFormData;

   function isValid (This : in out GenericCssStyleValidation) return Boolean is
      isValid : Boolean;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, GenericCssStyleValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("End: ") & Java_Image (isValid), GenericCssStyleValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), GenericCssStyleValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out GenericCssStyleValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), GenericCssStyleValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out GenericCssStyleValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, BodyData_Package.getInstance.NAME, StringUtil_Package.getInstance.EMPTY_STRING);
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericCssStyleValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out GenericCssStyleValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericCssStyleValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;



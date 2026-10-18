--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- III
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package HtmlMetaAttributeDataFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
   package HtmlMetaData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out MetaValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.name := Null_Unbounded_String;
      This.httpEquiv := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MetaValidation'Class; htmlMetaAttributeData_Param : access HtmlMetaAttributeData_Package.HtmlMetaAttributeData'Class; label : Unbounded_String; attributeValue : Unbounded_String; contentValue : Unbounded_String) is
      htmlMetaAttributeData : constant HtmlMetaAttributeData_Access := HtmlMetaAttributeData_Access (htmlMetaAttributeData_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.label := label;
        if htmlMetaAttributeData.equals (HtmlMetaAttributeDataFactory_Package.getInstance.HTTP_EQUIV) then
            This.httpEquiv := attributeValue;
        elsif htmlMetaAttributeData.equals (HtmlMetaAttributeDataFactory_Package.getInstance.NAME) then
            This.name := attributeValue;
        end if;
        This.content := contentValue;
   end Initialize;

   function Create (htmlMetaAttributeData_Param : access HtmlMetaAttributeData_Package.HtmlMetaAttributeData'Class; label : Unbounded_String; attributeValue : Unbounded_String; contentValue : Unbounded_String) return MetaValidation_Access is
      This : constant MetaValidation_Access := new MetaValidation;
   begin
      MetaValidation_Package.Initialize (This.all, htmlMetaAttributeData_Param, label, attributeValue, contentValue);
      return This;
   end Create;

   procedure Initialize (This : in out MetaValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return MetaValidation_Access is
      This : constant MetaValidation_Access := new MetaValidation;
   begin
      MetaValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   function isValid (This : in out MetaValidation) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), MetaValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out MetaValidation) return Unbounded_String is
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), MetaValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out MetaValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out MetaValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function toHashMap (This : in out MetaValidation) return HashMap_Access is
      hashMap : HashMap_Access;
      htmlMetaAttributeDataFactory : HtmlMetaAttributeDataFactory_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        htmlMetaAttributeDataFactory := HtmlMetaAttributeDataFactory_Package.getInstance;
        hashMap.put (Java_Box (HtmlMetaData_Package.getInstance.LABEL.toString), Java_Box (This.label));
        hashMap.put (Java_Box (htmlMetaAttributeDataFactory.NAME.toString), Java_Box (This.name));
        hashMap.put (Java_Box (htmlMetaAttributeDataFactory.HTTP_EQUIV.toString), Java_Box (This.httpEquiv));
        hashMap.put (Java_Box (htmlMetaAttributeDataFactory.CONTENT.toString), Java_Box (This.content));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out MetaValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, HtmlMetaData_Package.getInstance.NAME.toString, MetaValidation'Class (This).toHashMap);
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out MetaValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := MetaValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out MetaValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := MetaValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package;



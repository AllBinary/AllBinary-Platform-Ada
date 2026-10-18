--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- II
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package;
with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package; use org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package;

package body org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package HtmlMetaAttributeDataFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory_Package;
   package HtmlMetaAttributeValuesData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeValuesData_Package;
   package HtmlMetasData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetasData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out MetasValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MetasValidation'Class; storeName : Unbounded_String) is
      contentValue : Unbounded_String;
      keywordsMetaValidation : MetaValidation_Access;
      abstractMetaValidation : MetaValidation_Access;
      descriptionMetaValidation : MetaValidation_Access;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
        This.metaValidationVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        contentValue := This.storeFrontInterface.getName & To_Unbounded_String (" E-Commerce Site");
        keywordsMetaValidation := MetaValidation_Package.Create (HtmlMetaAttributeDataFactory_Package.getInstance.NAME, To_Unbounded_String ("Keywords"), HtmlMetaAttributeValuesData_Package.getInstance.KEYWORDS, contentValue);
        abstractMetaValidation := MetaValidation_Package.Create (HtmlMetaAttributeDataFactory_Package.getInstance.NAME, To_Unbounded_String ("Abstract"), HtmlMetaAttributeValuesData_Package.getInstance.ABSTRACT_Id, contentValue);
        descriptionMetaValidation := MetaValidation_Package.Create (HtmlMetaAttributeDataFactory_Package.getInstance.NAME, To_Unbounded_String ("Description"), HtmlMetaAttributeValuesData_Package.getInstance.DESCRIPTION, contentValue);
        This.metaValidationVector.add (Java_Object_Access (keywordsMetaValidation));
        This.metaValidationVector.add (Java_Object_Access (abstractMetaValidation));
        This.metaValidationVector.add (Java_Object_Access (descriptionMetaValidation));
   end Initialize;

   function Create (storeName : Unbounded_String) return MetasValidation_Access is
      This : constant MetasValidation_Access := new MetasValidation;
   begin
      MetasValidation_Package.Initialize (This.all, storeName);
      return This;
   end Create;

   procedure Initialize (This : in out MetasValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return MetasValidation_Access is
      This : constant MetasValidation_Access := new MetasValidation;
   begin
      MetasValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   function isValid (This : in out MetasValidation) return Boolean is
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
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), MetasValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out MetasValidation) return Unbounded_String is
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), MetasValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out MetasValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out MetasValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out MetasValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      metaArray : MetaValidation_Access_Array_Access;
      size : Integer;
      metaValidation : MetaValidation_Access;
      i : Integer;
   begin
        node := document.createElement (HtmlMetasData_Package.getInstance.NAME);
        metaArray := MetaValidation_Access_Array_Access (This.metaValidationVector.toArrayType (new MetaValidation_Access_Array'(0 .. (This.metaValidationVector.size) - 1 => null)));
        size := metaArray'Length;
        for i in 0 .. (size) - 1 loop
            metaValidation := metaArray (i);
            node.appendChild (metaValidation.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out MetasValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := MetasValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out MetasValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := MetasValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package;



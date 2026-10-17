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


package body org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package is

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
        This.metaValidationVector := BasicArrayListD_Package.Create;
        contentValue := This.storeFrontInterface.getName & To_Unbounded_String (" E-Commerce Site");
        keywordsMetaValidation := MetaValidation_Package.Create (HtmlMetaAttributeDataFactory_Package.getInstance.NAME, To_Unbounded_String ("Keywords"), HtmlMetaAttributeValuesData_Package.getInstance.KEYWORDS, contentValue);
        abstractMetaValidation := MetaValidation_Package.Create (HtmlMetaAttributeDataFactory_Package.getInstance.NAME, To_Unbounded_String ("Abstract"), HtmlMetaAttributeValuesData_Package.getInstance.ABSTRACT_Id, contentValue);
        descriptionMetaValidation := MetaValidation_Package.Create (HtmlMetaAttributeDataFactory_Package.getInstance.NAME, To_Unbounded_String ("Description"), HtmlMetaAttributeValuesData_Package.getInstance.DESCRIPTION, contentValue);
        This.metaValidationVector.add (keywordsMetaValidation);
        This.metaValidationVector.add (abstractMetaValidation);
        This.metaValidationVector.add (descriptionMetaValidation);
   end Initialize;

   function Create (storeName : Unbounded_String) return MetasValidation_Access is
      This : constant MetasValidation_Access := new MetasValidation;
   begin
      MetasValidation_Package.Initialize (This.all, storeName);
      return This;
   end Create;

   procedure Initialize (This : in out MetasValidation'Class; document : Document_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end Initialize;

   function Create (document : Document_Access) return MetasValidation_Access is
      This : constant MetasValidation_Access := new MetasValidation;
   begin
      MetasValidation_Package.Initialize (This.all, document);
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
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out MetasValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out MetasValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out MetasValidation; document : Document_Access) return Node_Access is
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

   procedure toValidationInfoNode (This : in out MetasValidation; document : Document_Access) is
      Java_Result : constant Node_Access := MetasValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out MetasValidation; document : Document_Access) is
      Java_Result : constant Node_Access := MetasValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package;



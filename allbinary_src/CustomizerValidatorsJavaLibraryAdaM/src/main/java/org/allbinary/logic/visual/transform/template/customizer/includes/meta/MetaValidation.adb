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


package body org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package is

   procedure Initialize_Fields (This : in out MetaValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.name := Null_Unbounded_String;
      This.httpEquiv := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MetaValidation'Class; htmlMetaAttributeData : HtmlMetaAttributeData_Access; label : Unbounded_String; attributeValue : Unbounded_String; contentValue : Unbounded_String) is
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

   function Create (htmlMetaAttributeData : HtmlMetaAttributeData_Access; label : Unbounded_String; attributeValue : Unbounded_String; contentValue : Unbounded_String) return MetaValidation_Access is
      This : constant MetaValidation_Access := new MetaValidation;
   begin
      Initialize (This.all, htmlMetaAttributeData, label, attributeValue, contentValue);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out MetaValidation'Class; document : Document_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end Initialize;

   function Create (document : Document_Access) return MetaValidation_Access is
      This : constant MetaValidation_Access := new MetaValidation;
   begin
      Initialize (This.all, document);
      return This;
   end Create;

   function isValid (This : in out MetaValidation) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            return valid;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
        end;
   end isValid;

   function validationInfo (This : in out MetaValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            return stringBuffer.toString;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out MetaValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out MetaValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   function toHashMap (This : in out MetaValidation) return HashMap_Access is
      hashMap : HashMap_Access;
      htmlMetaAttributeDataFactory : HtmlMetaAttributeDataFactory_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        htmlMetaAttributeDataFactory := HtmlMetaAttributeDataFactory_Package.getInstance;
        hashMap.put (HtmlMetaData_Package.getInstance.LABEL.toString, This.label);
        hashMap.put (htmlMetaAttributeDataFactory.NAME.toString, This.name);
        hashMap.put (htmlMetaAttributeDataFactory.HTTP_EQUIV.toString, This.httpEquiv);
        hashMap.put (htmlMetaAttributeDataFactory.CONTENT.toString, This.content);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out MetaValidation; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, HtmlMetaData_Package.getInstance.NAME.toString, This.toHashMap);
        return node;
   end toXmlNode;

   procedure isValid (This : in out MetaValidation) is
      Java_Result : constant Boolean := MetaValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out MetaValidation) is
      Java_Result : constant Unbounded_String := MetaValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out MetaValidation) is
      Java_Result : constant Document_Access := MetaValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out MetaValidation; document : Document_Access) is
      Java_Result : constant Node_Access := MetaValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toHashMap (This : in out MetaValidation) is
      Java_Result : constant HashMap_Access := MetaValidation'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out MetaValidation; document : Document_Access) is
      Java_Result : constant Node_Access := MetaValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetaValidation_Package;



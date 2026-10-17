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


package body org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package is

   procedure Initialize_Fields (This : in out CssStyleValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CssStyleValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.cssStyleElementVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return CssStyleValidation_Access is
      This : constant CssStyleValidation_Access := new CssStyleValidation;
   begin
      CssStyleValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out CssStyleValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.cssStyleElementVector := StylesValidationFactory_Package.getInstance.getInstance (document);
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return CssStyleValidation_Access is
      This : constant CssStyleValidation_Access := new CssStyleValidation;
   begin
      CssStyleValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CssStyleValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.cssStyleElementVector := StylesValidationFactory_Package.getInstance (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return CssStyleValidation_Access is
      This : constant CssStyleValidation_Access := new CssStyleValidation;
   begin
      CssStyleValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function isValid (This : in out CssStyleValidation) return Boolean is
      isValid : Boolean;
      size : Integer;
      styleValidationInterface : ValidationInterface_Access;
      i : Integer;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, CssStyleValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            size := This.cssStyleElementVector.size;
            for i in 0 .. (size) - 1 loop
                styleValidationInterface := ValidationInterface_Access (This.cssStyleElementVector.get (i));
                if not (styleValidationInterface.isValid.booleanValue) then
                    isValid := False;
                end if;
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("End: ") & Java_Image (isValid), CssStyleValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), CssStyleValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out CssStyleValidation) return Unbounded_String is
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), CssStyleValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out CssStyleValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out CssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out CssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      styleNode : Node_Access;
      size : Integer;
      styleDomNodeInterface : DomNodeInterface_Access;
      i : Integer;
   begin
        node := document.createElement (StylesData_Package.getInstance.NAME);
        styleNode := document.createElement (StyleData_Package.getInstance.NAME);
        node.appendChild (styleNode);
        size := This.cssStyleElementVector.size;
        for i in 0 .. (size) - 1 loop
            styleDomNodeInterface := DomNodeInterface_Access (This.cssStyleElementVector.get (i));
            styleNode.appendChild (styleDomNodeInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out CssStyleValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CssStyleValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out CssStyleValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CssStyleValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;



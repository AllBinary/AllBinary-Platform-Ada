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


package body org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package is

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

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out GenericCssStyleValidation'Class; document : Document_Access) is
      nodeList : NodeList_Access;
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        nodeList := document.getElementsByTagName (StylesData_Package.getInstance.NAME);
   end Initialize;

   function Create (document : Document_Access) return GenericCssStyleValidation_Access is
      This : constant GenericCssStyleValidation_Access := new GenericCssStyleValidation;
   begin
      GenericCssStyleValidation_Package.Initialize (This.all, document);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out GenericCssStyleValidation'Class; hashMap : HashMap_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.getFormData (hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access) return GenericCssStyleValidation_Access is
      This : constant GenericCssStyleValidation_Access := new GenericCssStyleValidation;
   begin
      GenericCssStyleValidation_Package.Initialize (This.all, hashMap);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out GenericCssStyleValidation; hashMap : HashMap_Access) is
   begin
        null;
   end getFormData;

   function isValid (This : in out GenericCssStyleValidation) return Boolean is
      isValid : Boolean;
   begin
        begin
            isValid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("End: ") & Java_Image (isValid), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            return isValid;
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out GenericCssStyleValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out GenericCssStyleValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out GenericCssStyleValidation; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, BodyData_Package.getInstance.NAME, StringUtil_Package.getInstance.EMPTY_STRING);
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out GenericCssStyleValidation; document : Document_Access) is
      Java_Result : constant Node_Access := GenericCssStyleValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out GenericCssStyleValidation; document : Document_Access) is
      Java_Result : constant Node_Access := GenericCssStyleValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;



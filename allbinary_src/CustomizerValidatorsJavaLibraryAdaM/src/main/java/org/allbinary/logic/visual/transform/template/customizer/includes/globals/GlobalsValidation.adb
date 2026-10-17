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


package body org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package is

   procedure Initialize_Fields (This : in out GlobalsValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GlobalsValidation'Class; storeName : Unbounded_String) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.storeFrontInterface := StoreFrontFactory_Package.getInstance (storeName);
   end Initialize;

   function Create (storeName : Unbounded_String) return GlobalsValidation_Access is
      This : constant GlobalsValidation_Access := new GlobalsValidation;
   begin
      GlobalsValidation_Package.Initialize (This.all, storeName);
      return This;
   end Create;

   procedure Initialize (This : in out GlobalsValidation'Class; document_Param : access Document'Class) is
      document : Document_Access := Document_Access (document_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end Initialize;

   function Create (document_Param : access Document'Class) return GlobalsValidation_Access is
      This : constant GlobalsValidation_Access := new GlobalsValidation;
   begin
      GlobalsValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   function isValid (This : in out GlobalsValidation) return Boolean is
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
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), GlobalsValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out GlobalsValidation) return Unbounded_String is
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), GlobalsValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out GlobalsValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out GlobalsValidation; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out GlobalsValidation; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := document.createElement (GlobalsData_Package.NAME);
        node.appendChild (StoreFrontView_Package.Create (This.storeFrontInterface).toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out GlobalsValidation; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := GlobalsValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out GlobalsValidation; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := GlobalsValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package;



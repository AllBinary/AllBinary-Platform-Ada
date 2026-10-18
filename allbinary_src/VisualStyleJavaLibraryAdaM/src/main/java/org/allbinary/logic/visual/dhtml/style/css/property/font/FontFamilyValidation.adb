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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out FontFamilyValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out FontFamilyValidation'Class) is
   begin
        FontFamilyView_Package.Initialize (This);
        Initialize_Fields (This);
   end Initialize;

   function Create return FontFamilyValidation_Access is
      This : constant FontFamilyValidation_Access := new FontFamilyValidation;
   begin
      FontFamilyValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out FontFamilyValidation'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        FontFamilyView_Package.Initialize (This, node);
        Initialize_Fields (This);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return FontFamilyValidation_Access is
      This : constant FontFamilyValidation_Access := new FontFamilyValidation;
   begin
      FontFamilyValidation_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out FontFamilyValidation) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("FontFamilyValidation"), FontFamilyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("CssValidation: ") & Java_Image (valid), FontFamilyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate data"), FontFamilyValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   --  throws Exception
   function validationInfo (This : in out FontFamilyValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Css Font Family Property Validation Error"));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation info error"), FontFamilyValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Data");
                end;
        end;
   end validationInfo;

   --  throws Exception
   function toValidationInfoDoc (This : in out FontFamilyValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out FontFamilyValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out FontFamilyValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := FontFamilyValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package;



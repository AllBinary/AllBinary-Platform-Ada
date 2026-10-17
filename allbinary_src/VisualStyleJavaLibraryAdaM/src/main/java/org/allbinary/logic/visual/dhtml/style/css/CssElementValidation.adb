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


package body org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package is

   procedure Initialize_Fields (This : in out CssElementValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CssElementValidation'Class) is
   begin
        CssElementView_Package.Initialize (This);
        Initialize_Fields (This);
   end Initialize;

   function Create return CssElementValidation_Access is
      This : constant CssElementValidation_Access := new CssElementValidation;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CssElementValidation'Class; node : Node_Access) is
   begin
        CssElementView_Package.Initialize (This, node);
        Initialize_Fields (This);
   end Initialize;

   function Create (node : Node_Access) return CssElementValidation_Access is
      This : constant CssElementValidation_Access := new CssElementValidation;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   function isValid (This : in out CssElementValidation) return Boolean is
      valid : Boolean;
   begin
        begin
            valid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("CssElementValidation"), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("CssElementValidation: ") & Java_Image (valid), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate data"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out CssElementValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.getValue);
            stringBuffer.append (To_Unbounded_String (" Css Style is not valid."));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation info error"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Data");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out CssElementValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out CssElementValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out CssElementValidation) is
      Java_Result : constant Boolean := CssElementValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out CssElementValidation) is
      Java_Result : constant Unbounded_String := CssElementValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out CssElementValidation) is
      Java_Result : constant Document_Access := CssElementValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out CssElementValidation; document : Document_Access) is
      Java_Result : constant Node_Access := CssElementValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package;



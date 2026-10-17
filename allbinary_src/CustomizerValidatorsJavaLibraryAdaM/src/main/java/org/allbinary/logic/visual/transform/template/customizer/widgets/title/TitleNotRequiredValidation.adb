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


package body org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package is

   procedure Initialize_Fields (This : in out TitleNotRequiredValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TitleNotRequiredValidation'Class) is
   begin
        TitleView_Package.Initialize (This);
        Initialize_Fields (This);
   end Initialize;

   function Create return TitleNotRequiredValidation_Access is
      This : constant TitleNotRequiredValidation_Access := new TitleNotRequiredValidation;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TitleNotRequiredValidation'Class; node : Node_Access) is
   begin
        TitleView_Package.Initialize (This, node);
        Initialize_Fields (This);
   end Initialize;

   function Create (node : Node_Access) return TitleNotRequiredValidation_Access is
      This : constant TitleNotRequiredValidation_Access := new TitleNotRequiredValidation;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TitleNotRequiredValidation'Class; hashMap : HashMap_Access) is
   begin
        TitleView_Package.Initialize (This, hashMap);
        Initialize_Fields (This);
   end Initialize;

   function Create (hashMap : HashMap_Access) return TitleNotRequiredValidation_Access is
      This : constant TitleNotRequiredValidation_Access := new TitleNotRequiredValidation;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   function isValid (This : in out TitleNotRequiredValidation) return Boolean is
      valid : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            valid := True;
            if not (StringValidationUtil_Package.getInstance.isValidNotRequired (This.getTitle, 0, TitleData_Package.getInstance.MAXLEN)) then
                valid := False;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Title: "));
                stringBuffer.append (This.getTitle);
                stringBuffer.append (To_Unbounded_String ("End: "));
                stringBuffer.appendboolean (valid);
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
        end;
   end isValid;

   function validationInfo (This : in out TitleNotRequiredValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Title is not valid."));
            return stringBuffer.toString;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out TitleNotRequiredValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out TitleNotRequiredValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out TitleNotRequiredValidation) is
      Java_Result : constant Boolean := TitleNotRequiredValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out TitleNotRequiredValidation) is
      Java_Result : constant Unbounded_String := TitleNotRequiredValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out TitleNotRequiredValidation) is
      Java_Result : constant Document_Access := TitleNotRequiredValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out TitleNotRequiredValidation; document : Document_Access) is
      Java_Result : constant Node_Access := TitleNotRequiredValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package;



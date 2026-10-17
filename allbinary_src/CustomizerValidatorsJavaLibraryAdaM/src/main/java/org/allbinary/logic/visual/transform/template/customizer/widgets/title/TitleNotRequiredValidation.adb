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
      TitleNotRequiredValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out TitleNotRequiredValidation'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        TitleView_Package.Initialize (This, node);
        Initialize_Fields (This);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return TitleNotRequiredValidation_Access is
      This : constant TitleNotRequiredValidation_Access := new TitleNotRequiredValidation;
   begin
      TitleNotRequiredValidation_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TitleNotRequiredValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        TitleView_Package.Initialize (This, hashMap);
        Initialize_Fields (This);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return TitleNotRequiredValidation_Access is
      This : constant TitleNotRequiredValidation_Access := new TitleNotRequiredValidation;
   begin
      TitleNotRequiredValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function isValid (This : in out TitleNotRequiredValidation) return Boolean is
      valid : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (This.commonStrings.START, TitleNotRequiredValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
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
                This.logUtil.putF (stringBuffer.toString, TitleNotRequiredValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), TitleNotRequiredValidation_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
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
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), TitleNotRequiredValidation_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out TitleNotRequiredValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out TitleNotRequiredValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out TitleNotRequiredValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TitleNotRequiredValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleNotRequiredValidation_Package;



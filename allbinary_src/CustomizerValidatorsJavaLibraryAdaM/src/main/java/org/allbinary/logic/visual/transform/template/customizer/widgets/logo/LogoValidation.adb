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


package body org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package is

   procedure Initialize_Fields (This : in out LogoValidation'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.logoFileItem := null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LogoValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.isFile := False;
        This.logoAbPath := null;
        This.logoFile := Null_Unbounded_String;
   end Initialize;

   function Create return LogoValidation_Access is
      This : constant LogoValidation_Access := new LogoValidation;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out LogoValidation'Class; node : Node_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.isFile := False;
        This.logoAbPath := AbPath_Package.Create (DomSearchHelper_Package.getNode (LogoData_Package.getInstance.IMAGEPATH, node.getChildNodes).getNodeValue, StringUtil_Package.getInstance.EMPTY_STRING);
        This.logoFile := DomSearchHelper_Package.getNode (LogoData_Package.getInstance.IMAGEFILENAME, node.getChildNodes).getNodeValue;
   end Initialize;

   function Create (node : Node_Access) return LogoValidation_Access is
      This : constant LogoValidation_Access := new LogoValidation;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out LogoValidation'Class; hashMap : HashMap_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.isFile := True;
        This.getFormData (hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access) return LogoValidation_Access is
      This : constant LogoValidation_Access := new LogoValidation;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   --  throws Exception
   procedure getFormData (This : in out LogoValidation; hashMap : HashMap_Access) is
      stringBuffer : StringMaker_Access;
   begin
        This.logoFileItem := FileItem_Access (hashMap.get (LogoData_Package.getInstance.IMAGE));
        This.logoAbPath := AbPath_Package.Create (Unbounded_String (hashMap.get (LogoData_Package.getInstance.IMAGEPATH)), StringUtil_Package.getInstance.EMPTY_STRING);
        if (This.logoFileItem) /= (null) then
            This.logoFile := HttpRequestUtil_Package.getInstance.generateFileName (This.logoFileItem.getName);
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("HashMap: "));
            stringBuffer.append (hashMap.toString);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "LogoFileName: "));
            stringBuffer.append (This.logoFile);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("getFormData()"));
        end if;
   end getFormData;

   function isValid (This : in out LogoValidation) return Boolean is
      valid : Boolean;
      fileData : FileData_Access;
   begin
        begin
            valid := True;
            fileData := FileData_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("LogoValidation"), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.logoAbPath.toString, 0, 512)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("logoPath is invalid: ") & This.logoAbPath.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.logoFile, fileData.MINLEN, fileData.MAXLEN)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    This.logUtil.putF (To_Unbounded_String ("logoFile is invalid: ") & This.logoFile, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                return False;
            end if;
            if This.isFile then
                if (This.logoFileItem) = (null) then
                    return False;
                end if;
                if ((This.logoFileItem.getSize) > (fileData.MAXIMAGEFILESIZE)) or else ((This.logoFileItem.getSize) < (fileData.MINIMAGEFILESIZE)) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        This.logUtil.putF (To_Unbounded_String ("Image File Is Not The Right Size. ") & Java_Image (fileData.MINIMAGEFILESIZE) & To_Unbounded_String ("< > ") & Java_Image (fileData.MAXIMAGEFILESIZE), This'Unchecked_Access, This.commonStrings.IS_VALID);
                    end if;
                    return False;
                end if;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Logo Validation: ") & Java_Image (valid), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            return valid;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
        end;
   end isValid;

   function validationInfo (This : in out LogoValidation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Logo is not valid."));
            return stringBuffer.toString;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out LogoValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out LogoValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   function toHashMap (This : in out LogoValidation) return HashMap_Access is
      stringUtil : StringUtil_Access;
      hashMap : HashMap_Access;
   begin
        stringUtil := StringUtil_Package.getInstance;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (LogoData_Package.getInstance.IMAGE, stringUtil.EMPTY_STRING);
        if (This.logoFile) /= (Null_Unbounded_String) then
            hashMap.put (LogoData_Package.getInstance.IMAGEPATH, This.logoAbPath.toString);
            hashMap.put (LogoData_Package.getInstance.IMAGEFILENAME, This.logoFile);
        else
            hashMap.put (LogoData_Package.getInstance.IMAGEPATH, null);
            hashMap.put (LogoData_Package.getInstance.IMAGEFILENAME, This.logoFile);
        end if;
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out LogoValidation; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := This.toHashMap;
        return ModDomHelper_Package.createNameValueNodes (document, LogoData_Package.getInstance.NAME, hashMap);
   end toXmlNode;

   --  throws Exception
   procedure processLogoFile (This : in out LogoValidation) is
      stringBuffer : StringMaker_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Processing logoFile: "));
            stringBuffer.append (This.logoAbPath.toString);
            stringBuffer.append (This.logoFile);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("processLogoFile()"));
        end if;
        LogoImageFileUtil_Package.Create (This.logoAbPath, This.logoFile).saveFiles (This.logoFileItem);
   end processLogoFile;

   procedure isValid (This : in out LogoValidation) is
      Java_Result : constant Boolean := LogoValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out LogoValidation) is
      Java_Result : constant Unbounded_String := LogoValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out LogoValidation) is
      Java_Result : constant Document_Access := LogoValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out LogoValidation; document : Document_Access) is
      Java_Result : constant Node_Access := LogoValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toHashMap (This : in out LogoValidation) is
      Java_Result : constant HashMap_Access := LogoValidation'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out LogoValidation; document : Document_Access) is
      Java_Result : constant Node_Access := LogoValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoValidation_Package;



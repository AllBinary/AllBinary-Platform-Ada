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


with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.Encoder_Package; use org.allbinary.logic.control.crypt.Encoder_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.OutputTypeData_Package; use org.allbinary.logic.io.OutputTypeData_Package;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package; use org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
with org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package; use org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;
with org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package; use org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfo_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package Encoder_Package renames Standard.org.allbinary.logic.control.crypt.Encoder_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package OutputTypeData_Package renames Standard.org.allbinary.logic.io.OutputTypeData_Package;
   package AbFilePath_Package renames Standard.org.allbinary.logic.io.path.AbFilePath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoDataData_Package renames Standard.org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;
   package TransformInfoObjectConfig_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfig_Package;
   package TransformInfoObjectConfigAndManipulatorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory_Package;
   package TransformInfoTemplateData_Package renames Standard.org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;
   package TransformInfoObjectData_Package renames Standard.org.allbinary.logic.visual.transform.info.viewObject.TransformInfoObjectData_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out TransformInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      This.isChild_Field := False;
      This.name := Null_Unbounded_String;
      This.storeName := Null_Unbounded_String;
      This.objectFileName := Null_Unbounded_String;
      This.anyType := null;
      This.objectConfigFileName := Null_Unbounded_String;
      This.objectConfigInterface := null;
      This.template := Null_Unbounded_String;
      This.templateFileName := Null_Unbounded_String;
      This.dataFileName := Null_Unbounded_String;
      This.data := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TransformInfo_Access is
      This : constant TransformInfo_Access := new TransformInfo;
   begin
      TransformInfo_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfo'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        TransformInfo'Class (This).setName (name);
   end Initialize;

   function Create (name : Unbounded_String) return TransformInfo_Access is
      This : constant TransformInfo_Access := new TransformInfo;
   begin
      TransformInfo_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfo'Class; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        TransformInfo'Class (This).setName (name);
        TransformInfo'Class (This).setObjectFile (objectFileName);
        TransformInfo'Class (This).setObjectConfigFile (objectConfigFileName);
        TransformInfo'Class (This).setTemplateFile (templateFileName);
        TransformInfo'Class (This).setDataFile (dataFileName);
   end Initialize;

   function Create (name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) return TransformInfo_Access is
      This : constant TransformInfo_Access := new TransformInfo;
   begin
      TransformInfo_Package.Initialize (This.all, name, objectFileName, objectConfigFileName, templateFileName, dataFileName);
      return This;
   end Create;

   --  throws Exception
   procedure override (This : in out TransformInfo; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      transformInfoData : TransformInfoData_Access;
      stringValidationUtil : StringValidationUtil_Access;
      aName : Unbounded_String;
      stringBuffer : StringMaker_Access;
      aStoreName : Unbounded_String;
      aObjectFileName : Unbounded_String;
      fileAbPath : AbPath_Access;
      aObject : Unbounded_String;
      fileDataString : Unbounded_String;
      objectConfigFileName : Unbounded_String;
      type_Id : Unbounded_String;
      aTemplateFileName : Unbounded_String;
      aTemplate : Unbounded_String;
      aDataFileName : Unbounded_String;
      aData : Unbounded_String;
   begin
        transformInfoData := TransformInfoData_Package.getInstance;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        aName := Java_Unbox (hashMap.get (transformInfoData.NAME));
        if not (stringValidationUtil.isEmpty (aName)) then
            This.name := aName;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo properties overridden for: "));
            stringBuffer.append (TransformInfo'Class (This).getName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & " properties: "));
            stringBuffer.append (hashMap.toString);
            This.logUtil.putF (stringBuffer.toString, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override(HashMap hashMap)"));
        end if;
        aStoreName := Java_Unbox (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if not (stringValidationUtil.isEmpty (aStoreName)) then
            This.storeName := aStoreName;
        end if;
        aObjectFileName := Java_Unbox (hashMap.get (transformInfoData.OBJECTFILENAME));
        if not (stringValidationUtil.isEmpty (aObjectFileName)) then
            This.objectFileName := aObjectFileName;
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
        stringBuffer.append (This.storeName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        fileAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        aObject := Java_Unbox (hashMap.get (transformInfoData.OBJECT));
        if not (stringValidationUtil.isEmpty (aObject)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override view Object for: ") & TransformInfo'Class (This).getName, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            fileDataString := CryptFileReader_Package.Create (TransformInfoObjectData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectData_Package.getInstance.ENCRYPTED_EXTENSION).get (AbPath_Package.Create (fileAbPath.toString, aObject));
            if (fileDataString) /= (Null_Unbounded_String) then
                This.anyType := Java_Box (fileDataString);
            end if;
        end if;
        if not (stringValidationUtil.isEmpty (Java_Unbox (hashMap.get (transformInfoData.OBJECTCONFIG)))) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override ObjectConfig for: ") & TransformInfo'Class (This).getName, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            TransformInfo'Class (This).setObjectConfig (Java_Unbox (hashMap.get (transformInfoData.OBJECTCONFIG)));
        end if;
        objectConfigFileName := Java_Unbox (hashMap.get (transformInfoData.OBJECTCONFIGFILENAME));
        if not (stringValidationUtil.isEmpty (objectConfigFileName)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override ObjectConfig File for: ") & TransformInfo'Class (This).getName, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            TransformInfo'Class (This).setObjectConfigFile (objectConfigFileName);
        end if;
        type_Id := Java_Unbox (hashMap.get (OutputTypeData_Package.getInstance.NAME));
        if not (stringValidationUtil.isEmpty (type_Id)) then
            if (TransformInfo'Class (This).getObjectConfigInterface) = (null) then
                TransformInfo'Class (This).setObjectConfigInterface (TransformInfoObjectConfig_Package.Create (TransformInfo_Access'(This'Unchecked_Access)));
            end if;
            TransformInfo'Class (This).getObjectConfigInterface.setOutputTypeName (type_Id);
        end if;
        aTemplateFileName := Java_Unbox (hashMap.get (transformInfoData.TEMPLATEFILENAME));
        if not (stringValidationUtil.isEmpty (aTemplateFileName)) then
            This.templateFileName := aTemplateFileName;
        end if;
        aTemplate := Java_Unbox (hashMap.get (transformInfoData.TEMPLATE));
        if not (stringValidationUtil.isEmpty (aTemplate)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override Template for: ") & TransformInfo'Class (This).getName, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            fileDataString := CryptFileReader_Package.Create (TransformInfoTemplateData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION).get (AbPath_Package.Create (fileAbPath.toString, aTemplate));
            if not (stringValidationUtil.isEmpty (fileDataString)) then
                This.template := fileDataString;
            end if;
        end if;
        aDataFileName := Java_Unbox (hashMap.get (transformInfoData.DATAFILENAME));
        if not (stringValidationUtil.isEmpty (aDataFileName)) then
            This.dataFileName := aDataFileName;
        end if;
        aData := Java_Unbox (hashMap.get (transformInfoData.DATA));
        if not (stringValidationUtil.isEmpty (aData)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override Data for: ") & TransformInfo'Class (This).getName, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            fileDataString := CryptFileReader_Package.Create (TransformInfoDataData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoDataData_Package.getInstance.ENCRYPTED_EXTENSION).get (AbPath_Package.Create (fileAbPath.toString, aData));
            if not (stringValidationUtil.isEmpty (fileDataString)) then
                This.data := fileDataString;
            end if;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Name: "));
            stringBuffer.append (aName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Temp Object File: "));
            stringBuffer.append (aObject);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Temp Object Config File: "));
            stringBuffer.append (TransformInfo'Class (This).getObjectConfigFilePath.toString);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Temp Template File: "));
            stringBuffer.append (aTemplate);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Temp Data File: "));
            stringBuffer.append (aData);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Store Name: "));
            stringBuffer.append (aStoreName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "ObjectFile: "));
            stringBuffer.append (TransformInfo'Class (This).getObjectFile);
            stringBuffer.append (To_Unbounded_String ("->TransformInfo"));
            This.logUtil.putF (stringBuffer.toString, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("TransformInfoInterface(HashMap)"));
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
            This.logUtil.putF (TransformInfo'Class (This).log, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("override"));
        end if;
   end override;

   function log (This : in out TransformInfo) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Name: "));
        stringBuffer.append (This.name);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Object File: "));
        stringBuffer.append (This.objectFileName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Object Config File Path: "));
        stringBuffer.append (TransformInfo'Class (This).getObjectConfigFile);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Template File: "));
        stringBuffer.append (This.templateFileName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Data File: "));
        stringBuffer.append (This.dataFileName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Store Name: "));
        stringBuffer.append (This.storeName);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (TransformInfo'Class (This).getObjectFile);
        stringBuffer.append (To_Unbounded_String ("->TransformInfo"));
        stringBuffer.append (To_Unbounded_String ("TransformInfoInterface(HashMap)"));
        return stringBuffer.toString;
   end log;

   procedure setName (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setStoreName (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   function getStoreName (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.storeName;
   end getStoreName;

   procedure setObject (This : in out TransformInfo; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        This.anyType := anyType;
   end setObject;

   procedure setObjectFile (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.objectFileName := value;
   end setObjectFile;

   procedure setTemplate (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.template := value;
   end setTemplate;

   procedure setTemplateFile (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.templateFileName := value;
   end setTemplateFile;

   --  throws Exception
   procedure setObjectConfigFileName (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.objectConfigFileName := value;
   end setObjectConfigFileName;

   --  throws Exception
   procedure setObjectConfigFile (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.objectConfigFileName := value;
        TransformInfo'Class (This).setObjectConfigInterface (TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (This.abeClientInformation, TransformInfo_Access'(This'Unchecked_Access), TransformInfo'Class (This).getObjectConfigFilePath));
   end setObjectConfigFile;

   --  throws Exception
   procedure setObjectConfig (This : in out TransformInfo; value : Unbounded_String) is
      document : Document_Access;
   begin
        document := DomDocumentHelper_Package.create (value);
        TransformInfo'Class (This).setObjectConfigInterface (TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (This.abeClientInformation, TransformInfo_Access'(This'Unchecked_Access), document));
   end setObjectConfig;

   procedure setDataFile (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.dataFileName := value;
   end setDataFile;

   procedure setData (This : in out TransformInfo; value : Unbounded_String) is
   begin
        This.data := value;
   end setData;

   function getName (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getObject (This : in out TransformInfo) return Java_Object_Access is
   begin
        return This.anyType;
   end getObject;

   function getObjectFile (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.objectFileName;
   end getObjectFile;

   function getTemplate (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.template;
   end getTemplate;

   function getTemplateFile (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.templateFileName;
   end getTemplateFile;

   --  throws Exception
   function getTemplateFilePath (This : in out TransformInfo) return AbPath_Access is
   begin
        return AbPath_Access (AbFilePath_Package.Create (TransformInfo'Class (This).getTemplateFile));
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfo) return AbPath_Access is
   begin
        return AbPath_Access (AbFilePath_Package.Create (TransformInfo'Class (This).getObjectConfigFile));
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfo) return AbPath_Access is
   begin
        return AbPath_Access (AbFilePath_Package.Create (TransformInfo'Class (This).getDataFile));
   end getDataFilePath;

   function getObjectConfigFile (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.objectConfigFileName;
   end getObjectConfigFile;

   function getData (This : in out TransformInfo) return Unbounded_String is
      stringValidationUtil : StringValidationUtil_Access;
      dataFileString : Unbounded_String;
      fileData : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        dataFileString := TransformInfo'Class (This).getDataFile;
        if not (stringValidationUtil.isEmpty (dataFileString)) then
            begin
                fileData := CryptFileReader_Package.Create (TransformInfoDataData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoDataData_Package.getInstance.ENCRYPTED_EXTENSION).get (TransformInfo'Class (This).getDataFilePath);
                if not (stringValidationUtil.isEmpty (This.data)) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        This.logUtil.putF (To_Unbounded_String ("Data File overriding existing data: ") & Java_Image (TransformInfo'Class (This).getDataFilePath), TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getData()"));
                    end if;
                end if;
                This.data := fileData;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    This.logUtil.put (To_Unbounded_String ("Could Not Load Data from: ") & Java_Image (TransformInfo'Class (This).getDataFile), TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getData()"), e);
                end if;
                    end;
            end;
        end if;
        begin
            if not (stringValidationUtil.isEmpty (This.data)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    This.logUtil.putF (To_Unbounded_String ("Data: ") & XmlDocumentHelper_Package.toString (DomDocumentHelper_Package.create (This.data)), TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getData()"));
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Name: "));
                    stringBuffer.append (This.name);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Empty Data For: "));
                    stringBuffer.append (dataFileString);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Path: "));
                    stringBuffer.append (TransformInfo'Class (This).getDataFilePath.toFileSystemString);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                        This.logUtil.putF (stringBuffer.toString, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getData()"));
                    end if;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Could Not Preview Data: ") & This.data, TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getData()"), e);
            end if;
                end;
        end;
        return This.data;
   end getData;

   --  throws Exception
   function getDataDocument (This : in out TransformInfo) return Document_Access is
      localData : Unbounded_String;
      stringValidationUtil : StringValidationUtil_Access;
      document : Document_Access;
   begin
        localData := TransformInfo'Class (This).getData;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if stringValidationUtil.isEmpty (localData) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.putF (To_Unbounded_String ("No Data So Creating New Document"), TransformInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getDataDocument()"));
            end if;
            return DomDocumentHelper_Package.create;
        else
            document := DomDocumentHelper_Package.create (localData);
            return document;
        end if;
   end getDataDocument;

   function getDataFile (This : in out TransformInfo) return Unbounded_String is
   begin
        return This.dataFileName;
   end getDataFile;

   function toHashMap (This : in out TransformInfo) return HashMap_Access is
      transformInfoData : TransformInfoData_Access;
      hashMap : HashMap_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        transformInfoData := TransformInfoData_Package.getInstance;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (transformInfoData.NAME, Java_Box (This.name));
        hashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (This.storeName));
        hashMap.put (transformInfoData.OBJECTFILENAME, Java_Box (This.objectFileName));
        hashMap.put (transformInfoData.OBJECT, This.anyType);
        hashMap.put (transformInfoData.OBJECTCONFIGFILENAME, TransformInfo'Class (This).getObjectConfigFile);
        hashMap.put (transformInfoData.OBJECTCONFIG, Encoder_Package.encode (TransformInfo'Class (This).getObjectConfigInterface.toString.getBytes));
        hashMap.put (transformInfoData.TEMPLATEFILENAME, Java_Box (This.templateFileName));
        hashMap.put (transformInfoData.TEMPLATE, Java_Box (This.template));
        hashMap.put (transformInfoData.DATAFILENAME, Java_Box (This.dataFileName));
        hashMap.put (transformInfoData.DATA, Encoder_Package.encode (This.data.getBytes));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        hashMap.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (time));
        return hashMap;
   end toHashMap;

   function toVector (This : in out TransformInfo) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vector.add (This.name);
        vector.add (This.storeName);
        vector.add (This.objectFileName);
        vector.add (This.anyType);
        vector.add (TransformInfo'Class (This).getObjectConfigFile);
        vector.add (Encoder_Package.encode (TransformInfo'Class (This).getObjectConfigInterface.toString.getBytes));
        vector.add (This.templateFileName);
        vector.add (This.template);
        vector.add (This.dataFileName);
        vector.add (Encoder_Package.encode (This.data.getBytes));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        vector.add (time);
        vector.add (time);
        return vector;
   end toVector;

   function getKey (This : in out TransformInfo) return Java_Object_Access is
   begin
        return Java_Box (TransformInfo'Class (This).getName);
   end getKey;

   procedure setChild (This : in out TransformInfo) is
   begin
        This.isChild_Field := True;
   end setChild;

   function isChild (This : in out TransformInfo) return Boolean is
   begin
        return This.isChild_Field;
   end isChild;

   function getObjectConfigInterface (This : in out TransformInfo) return TransformInfoObjectConfigInterface_Access is
   begin
        return This.objectConfigInterface;
   end getObjectConfigInterface;

   procedure setObjectConfigInterface (This : in out TransformInfo; objectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class) is
      objectConfigInterface : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigInterface_Access (objectConfigInterface_Param);
   begin
        This.objectConfigInterface := objectConfigInterface;
   end setObjectConfigInterface;

   procedure setObject (This : in out TransformInfo; Value : Unbounded_String) is
   begin
      TransformInfo'Class (This).setObject (Java_Box (Value));
   end setObject;

end org.allbinary.logic.visual.transform.info.TransformInfo_Package;



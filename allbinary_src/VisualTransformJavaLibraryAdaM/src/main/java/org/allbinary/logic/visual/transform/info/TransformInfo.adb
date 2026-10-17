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


package body org.allbinary.logic.visual.transform.info.TransformInfo_Package is

   procedure Initialize_Fields (This : in out TransformInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      This.isChild := False;
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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfo'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
   end Initialize;

   function Create (name : Unbounded_String) return TransformInfo_Access is
      This : constant TransformInfo_Access := new TransformInfo;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformInfo'Class; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setName (name);
        This.setObjectFile (objectFileName);
        This.setObjectConfigFile (objectConfigFileName);
        This.setTemplateFile (templateFileName);
        This.setDataFile (dataFileName);
   end Initialize;

   function Create (name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) return TransformInfo_Access is
      This : constant TransformInfo_Access := new TransformInfo;
   begin
      Initialize (This.all, name, objectFileName, objectConfigFileName, templateFileName, dataFileName);
      return This;
   end Create;

   --  throws Exception
   procedure override (This : in out TransformInfo; hashMap : HashMap_Access) is
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
        aName := Unbounded_String (hashMap.get (transformInfoData.NAME));
        if not (stringValidationUtil.isEmpty (aName)) then
            This.name := aName;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("TransformInfo properties overridden for: "));
            stringBuffer.append (This.getName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & " properties: "));
            stringBuffer.append (hashMap.toString);
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("override(HashMap hashMap)"));
        end if;
        aStoreName := Unbounded_String (hashMap.get (StoreFrontData_Package.getInstance.NAME));
        if not (stringValidationUtil.isEmpty (aStoreName)) then
            This.storeName := aStoreName;
        end if;
        aObjectFileName := Unbounded_String (hashMap.get (transformInfoData.OBJECTFILENAME));
        if not (stringValidationUtil.isEmpty (aObjectFileName)) then
            This.objectFileName := aObjectFileName;
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (This.storeName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        fileAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        aObject := Unbounded_String (hashMap.get (transformInfoData.OBJECT));
        if not (stringValidationUtil.isEmpty (aObject)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override view Object for: ") & This.getName, This'Unchecked_Access, To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            fileDataString := CryptFileReader_Package.Create (TransformInfoObjectData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectData_Package.getInstance.ENCRYPTED_EXTENSION).get (AbPath_Package.Create (fileAbPath.toString, aObject));
            if (fileDataString) /= (Null_Unbounded_String) then
                This.anyType := fileDataString;
            end if;
        end if;
        if not (stringValidationUtil.isEmpty (Unbounded_String (hashMap.get (transformInfoData.OBJECTCONFIG)))) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override ObjectConfig for: ") & This.getName, This'Unchecked_Access, To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            This.setObjectConfig (Unbounded_String (hashMap.get (transformInfoData.OBJECTCONFIG)));
        end if;
        objectConfigFileName := Unbounded_String (hashMap.get (transformInfoData.OBJECTCONFIGFILENAME));
        if not (stringValidationUtil.isEmpty (objectConfigFileName)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override ObjectConfig File for: ") & This.getName, This'Unchecked_Access, To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            This.setObjectConfigFile (objectConfigFileName);
        end if;
        type_Id := Unbounded_String (hashMap.get (OutputTypeData_Package.getInstance.NAME));
        if not (stringValidationUtil.isEmpty (type_Id)) then
            if (This.getObjectConfigInterface) = (null) then
                This.setObjectConfigInterface (TransformInfoObjectConfig_Package.Create (This'Unchecked_Access));
            end if;
            This.getObjectConfigInterface.setOutputTypeName (type_Id);
        end if;
        aTemplateFileName := Unbounded_String (hashMap.get (transformInfoData.TEMPLATEFILENAME));
        if not (stringValidationUtil.isEmpty (aTemplateFileName)) then
            This.templateFileName := aTemplateFileName;
        end if;
        aTemplate := Unbounded_String (hashMap.get (transformInfoData.TEMPLATE));
        if not (stringValidationUtil.isEmpty (aTemplate)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override Template for: ") & This.getName, This'Unchecked_Access, To_Unbounded_String ("override(HashMap hashMap)"));
            end if;
            fileDataString := CryptFileReader_Package.Create (TransformInfoTemplateData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoTemplateData_Package.getInstance.ENCRYPTED_EXTENSION).get (AbPath_Package.Create (fileAbPath.toString, aTemplate));
            if not (stringValidationUtil.isEmpty (fileDataString)) then
                This.template := fileDataString;
            end if;
        end if;
        aDataFileName := Unbounded_String (hashMap.get (transformInfoData.DATAFILENAME));
        if not (stringValidationUtil.isEmpty (aDataFileName)) then
            This.dataFileName := aDataFileName;
        end if;
        aData := Unbounded_String (hashMap.get (transformInfoData.DATA));
        if not (stringValidationUtil.isEmpty (aData)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("TransformInfo override Data for: ") & This.getName, This'Unchecked_Access, To_Unbounded_String ("override(HashMap hashMap)"));
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
            stringBuffer.append (This.getObjectConfigFilePath.toString);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Temp Template File: "));
            stringBuffer.append (aTemplate);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Temp Data File: "));
            stringBuffer.append (aData);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Store Name: "));
            stringBuffer.append (aStoreName);
            stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "ObjectFile: "));
            stringBuffer.append (This.getObjectFile);
            stringBuffer.append (To_Unbounded_String ("->TransformInfo"));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("TransformInfoInterface(HashMap)"));
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
            This.logUtil.putF (This.log, This'Unchecked_Access, To_Unbounded_String ("override"));
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
        stringBuffer.append (This.getObjectConfigFile);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Template File: "));
        stringBuffer.append (This.templateFileName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Data File: "));
        stringBuffer.append (This.dataFileName);
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Store Name: "));
        stringBuffer.append (This.storeName);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (This.getObjectFile);
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

   procedure setObject (This : in out TransformInfo; anyType : Java_Object_Access) is
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
        This.setObjectConfigInterface (TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (This.abeClientInformation, This'Unchecked_Access, This.getObjectConfigFilePath));
   end setObjectConfigFile;

   --  throws Exception
   procedure setObjectConfig (This : in out TransformInfo; value : Unbounded_String) is
      document : Document_Access;
   begin
        document := DomDocumentHelper_Package.create (value);
        This.setObjectConfigInterface (TransformInfoObjectConfigAndManipulatorFactory_Package.getInstance.getInstance (This.abeClientInformation, This'Unchecked_Access, document));
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
        return AbFilePath_Package.Create (This.getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfo) return AbPath_Access is
   begin
        return AbFilePath_Package.Create (This.getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfo) return AbPath_Access is
   begin
        return AbFilePath_Package.Create (This.getDataFile);
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
        dataFileString := This.getDataFile;
        if not (stringValidationUtil.isEmpty (dataFileString)) then
            begin
                fileData := CryptFileReader_Package.Create (TransformInfoDataData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoDataData_Package.getInstance.ENCRYPTED_EXTENSION).get (This.getDataFilePath);
                if not (stringValidationUtil.isEmpty (This.data)) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        This.logUtil.putF (To_Unbounded_String ("Data File overriding existing data: ") & Java_Image (This.getDataFilePath), This'Unchecked_Access, To_Unbounded_String ("getData()"));
                    end if;
                end if;
                This.data := fileData;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    This.logUtil.put (To_Unbounded_String ("Could Not Load Data from: ") & Java_Image (This.getDataFile), This'Unchecked_Access, To_Unbounded_String ("getData()"), e);
                end if;
                    end;
            end;
        end if;
        begin
            if not (stringValidationUtil.isEmpty (This.data)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    This.logUtil.putF (To_Unbounded_String ("Data: ") & XmlDocumentHelper_Package.toString (DomDocumentHelper_Package.create (This.data)), This'Unchecked_Access, To_Unbounded_String ("getData()"));
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Name: "));
                    stringBuffer.append (This.name);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Empty Data For: "));
                    stringBuffer.append (dataFileString);
                    stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "Path: "));
                    stringBuffer.append (This.getDataFilePath.toFileSystemString);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("getData()"));
                    end if;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Could Not Preview Data: ") & This.data, This'Unchecked_Access, To_Unbounded_String ("getData()"), e);
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
        localData := This.getData;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if stringValidationUtil.isEmpty (localData) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.putF (To_Unbounded_String ("No Data So Creating New Document"), This'Unchecked_Access, To_Unbounded_String ("getDataDocument()"));
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
        hashMap.put (transformInfoData.NAME, This.name);
        hashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
        hashMap.put (transformInfoData.OBJECTFILENAME, This.objectFileName);
        hashMap.put (transformInfoData.OBJECT, This.anyType);
        hashMap.put (transformInfoData.OBJECTCONFIGFILENAME, This.getObjectConfigFile);
        hashMap.put (transformInfoData.OBJECTCONFIG, Encoder_Package.encode (This.getObjectConfigInterface.toString.getBytes));
        hashMap.put (transformInfoData.TEMPLATEFILENAME, This.templateFileName);
        hashMap.put (transformInfoData.TEMPLATE, This.template);
        hashMap.put (transformInfoData.DATAFILENAME, This.dataFileName);
        hashMap.put (transformInfoData.DATA, Encoder_Package.encode (This.data.getBytes));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        hashMap.put (EntryData_Package.getInstance.LASTMODIFIED, time);
        return hashMap;
   end toHashMap;

   function toVector (This : in out TransformInfo) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        vector := BasicArrayListD_Package.Create;
        vector.add (This.name);
        vector.add (This.storeName);
        vector.add (This.objectFileName);
        vector.add (This.anyType);
        vector.add (This.getObjectConfigFile);
        vector.add (Encoder_Package.encode (This.getObjectConfigInterface.toString.getBytes));
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
        return Java_Object_Access (This.getName);
   end getKey;

   procedure setChild (This : in out TransformInfo) is
   begin
        This.isChild := True;
   end setChild;

   function isChild (This : in out TransformInfo) return Boolean is
   begin
        return This.isChild;
   end isChild;

   function getObjectConfigInterface (This : in out TransformInfo) return TransformInfoObjectConfigInterface_Access is
   begin
        return This.objectConfigInterface;
   end getObjectConfigInterface;

   procedure setObjectConfigInterface (This : in out TransformInfo; objectConfigInterface : TransformInfoObjectConfigInterface_Access) is
   begin
        This.objectConfigInterface := objectConfigInterface;
   end setObjectConfigInterface;

   procedure log (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).log;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end log;

   procedure getStoreName (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getStoreName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreName;

   procedure getName (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getObject (This : in out TransformInfo) is
      Java_Result : constant Java_Object_Access := TransformInfo'Class (This).getObject;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObject;

   procedure getObjectFile (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getObjectFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectFile;

   procedure getTemplate (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getTemplate;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplate;

   procedure getTemplateFile (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getTemplateFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplateFile;

   procedure getTemplateFilePath (This : in out TransformInfo) is
      Java_Result : constant AbPath_Access := TransformInfo'Class (This).getTemplateFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplateFilePath;

   procedure getObjectConfigFilePath (This : in out TransformInfo) is
      Java_Result : constant AbPath_Access := TransformInfo'Class (This).getObjectConfigFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigFilePath;

   procedure getDataFilePath (This : in out TransformInfo) is
      Java_Result : constant AbPath_Access := TransformInfo'Class (This).getDataFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDataFilePath;

   procedure getObjectConfigFile (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getObjectConfigFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigFile;

   procedure getData (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getData;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getData;

   procedure getDataDocument (This : in out TransformInfo) is
      Java_Result : constant Document_Access := TransformInfo'Class (This).getDataDocument;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDataDocument;

   procedure getDataFile (This : in out TransformInfo) is
      Java_Result : constant Unbounded_String := TransformInfo'Class (This).getDataFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDataFile;

   procedure toHashMap (This : in out TransformInfo) is
      Java_Result : constant HashMap_Access := TransformInfo'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toVector (This : in out TransformInfo) is
      Java_Result : constant BasicArrayList_Access := TransformInfo'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure getKey (This : in out TransformInfo) is
      Java_Result : constant Java_Object_Access := TransformInfo'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

   procedure isChild (This : in out TransformInfo) is
      Java_Result : constant Boolean := TransformInfo'Class (This).isChild;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isChild;

   procedure getObjectConfigInterface (This : in out TransformInfo) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfo'Class (This).getObjectConfigInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigInterface;

end org.allbinary.logic.visual.transform.info.TransformInfo_Package;



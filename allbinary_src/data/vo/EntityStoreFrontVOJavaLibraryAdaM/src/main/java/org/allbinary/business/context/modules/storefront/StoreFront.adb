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
with org.allbinary.business.context.configuration.ContextConfiguration_Package; use org.allbinary.business.context.configuration.ContextConfiguration_Package;
with org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package; use org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.SpecialCharacterUtil_Package; use org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.apache.commons.lang3.StringEscapeUtils_Package; use org.apache.commons.lang3.StringEscapeUtils_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;

package body org.allbinary.business.context.modules.storefront.StoreFront_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ContextConfiguration_Package renames Standard.org.allbinary.business.context.configuration.ContextConfiguration_Package;
   package ContextConfigurationDomDocumentMapping_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
   package ContextConfigurationInterfaceFactory_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package SpecialCharacterUtil_Package renames Standard.org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringEscapeUtils_Package renames Standard.org.apache.commons.lang3.StringEscapeUtils_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   procedure Initialize_Fields (This : in out StoreFront'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.directory := Directory_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.abPathUtil := AbPathUtil_Package.getInstance;
      This.name := This.stringUtil.EMPTY_STRING;
      This.basketName := This.stringUtil.EMPTY_STRING;
      This.homeHostName := This.stringUtil.EMPTY_STRING;
      This.homeHostNamePath := This.abPathUtil.NO_ABPATH;
      This.hostName := This.stringUtil.EMPTY_STRING;
      This.hostNamePath := This.abPathUtil.NO_ABPATH;
      This.testHomeHostName := This.stringUtil.EMPTY_STRING;
      This.testHomeHostNamePath := This.abPathUtil.NO_ABPATH;
      This.testHostName := This.stringUtil.EMPTY_STRING;
      This.testHostNamePath := This.abPathUtil.NO_ABPATH;
      This.imagePath := This.abPathUtil.NO_ABPATH;
      This.staticPath := This.abPathUtil.NO_ABPATH;
      This.categoryPath := This.abPathUtil.NO_ABPATH;
      This.inventoryControl := This.stringUtil.EMPTY_STRING;
      
      This.subStores := This.stringUtil.EMPTY_STRING;
      This.tagLocation := This.stringUtil.EMPTY_STRING;
      This.packageLocation := This.stringUtil.EMPTY_STRING;
      This.ftp := This.stringUtil.EMPTY_STRING;
      This.ftpPath := This.abPathUtil.NO_ABPATH;
      This.ftpUserName := This.stringUtil.EMPTY_STRING;
      This.ftpPassword := This.stringUtil.EMPTY_STRING;
      This.testFtp := This.stringUtil.EMPTY_STRING;
      This.testFtpPath := This.abPathUtil.NO_ABPATH;
      This.testFtpUserName := This.stringUtil.EMPTY_STRING;
      This.testFtpPassword := This.stringUtil.EMPTY_STRING;
      This.timeCreated := This.stringUtil.EMPTY_STRING;
      This.lastModified := This.stringUtil.EMPTY_STRING;
      This.MINCHAR := 0;
      This.MINSTORENAMELENGTH := 1;
      This.MAXCHAR := 255;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.ONE_EMPTY_STRING_ARRAY := StringUtil_Package.getInstance.ONE_EMPTY_STRING_ARRAY;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFront'Class) is
   begin
      Initialize_Fields (This);
        This.contextConfigurationInterface := ContextConfigurationInterface_Access (ContextConfiguration_Package.Create);
   end Initialize;

   function Create return StoreFront_Access is
      This : constant StoreFront_Access := new StoreFront;
   begin
      StoreFront_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out StoreFront'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
      Initialize_Fields (This);
        StoreFront'Class (This).getFormData (RequestParams_Package.Create (request).toHashMap);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("TWB- needs update for adding and updating context configuration - currently defaults to admin context config"), StoreFront_Access'(This'Unchecked_Access), To_Unbounded_String ("StoreFront"));
        end if;
        StoreFront'Class (This).setContextConfigurationInterface (ContextConfigurationInterfaceFactory_Package.getInstance.getInstance (To_Unbounded_String ("Admin")));
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return StoreFront_Access is
      This : constant StoreFront_Access := new StoreFront;
   begin
      StoreFront_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out StoreFront'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      domDocumentString : Unbounded_String;
      document : Document_Access;
   begin
      Initialize_Fields (This);
        StoreFront'Class (This).getFormData (hashMap);
        domDocumentString := Java_Unbox (hashMap.get (StoreFrontData_Package.getInstance.CONFIGURATION));
        if (domDocumentString) = (Null_Unbounded_String) then
            document := DomDocumentHelper_Package.create (domDocumentString);
            StoreFront'Class (This).setContextConfigurationInterface (ContextConfigurationInterfaceFactory_Package.getInstance.getInstance (document));
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return StoreFront_Access is
      This : constant StoreFront_Access := new StoreFront;
   begin
      StoreFront_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function isColumn (This : in out StoreFront; columnName : Unbounded_String) return Boolean is
   begin
        if ((Java_Compare_To (columnName, StoreFrontData_Package.getInstance.NAME)) = (0)) or else ((Java_Compare_To (columnName, UserData_Package.MAINEMAIL)) = (0)) then
            return True;
        else
            return False;
        end if;
   end isColumn;

   --  throws Exception
   function createPath (This : in out StoreFront; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return AbPath_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return AbPath_Package.Create (StoreFront'Class (This).create (This.EMPTY_STRING, key, hashMap), StringUtil_Package.getInstance.EMPTY_STRING);
   end createPath;

   --  throws Exception
   function createPath (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return AbPath_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return AbPath_Package.Create (StoreFront'Class (This).create (append, key, hashMap), StringUtil_Package.getInstance.EMPTY_STRING);
   end createPath;

   function get (This : in out StoreFront; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Unbounded_String is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        return StoreFront'Class (This).create (This.EMPTY_STRING, key, hashMap);
   end get;

   function create (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) return Unbounded_String is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      path : Unbounded_String;
   begin
        path := Java_Unbox (hashMap.get (Java_Box (key)));
        if StringValidationUtil_Package.getInstance.isEmpty (path) then
            return This.EMPTY_STRING;
        else
            if StoreFront'Class (This).isColumn (path) then
                return Java_Image (Java_Unbox (hashMap.get (Java_Box (path)))) & append;
            else
                return path;
            end if;
        end if;
   end create;

   --  throws Exception
   procedure getFormData (This : in out StoreFront; storeHashMap_Param : access HashMap_Package.HashMap'Class) is
      storeHashMap : constant HashMap_Access := HashMap_Access (storeHashMap_Param);
      storeFrontData : StoreFrontData_Access;
   begin
        storeFrontData := StoreFrontData_Package.getInstance;
        This.name := Java_Unbox (storeHashMap.get (storeFrontData.NAME));
        This.basketName := Java_Unbox (storeHashMap.get (storeFrontData.NAME));
        This.homeHostName := Java_Unbox (storeHashMap.get (storeFrontData.HOMEHOSTNAME));
        This.homeHostNamePath := StoreFront'Class (This).createPath (storeFrontData.HOMEHOSTNAMEPATH, storeHashMap);
        This.hostName := Java_Unbox (storeHashMap.get (storeFrontData.HOSTNAME));
        This.hostNamePath := StoreFront'Class (This).createPath (storeFrontData.HOSTNAMEPATH, storeHashMap);
        This.testHomeHostName := Java_Unbox (storeHashMap.get (storeFrontData.TESTHOMEHOSTNAME));
        This.testHomeHostNamePath := StoreFront'Class (This).createPath (storeFrontData.TESTHOMEHOSTNAMEPATH, storeHashMap);
        This.testHostName := Java_Unbox (storeHashMap.get (storeFrontData.TESTHOSTNAME));
        This.testHostNamePath := StoreFront'Class (This).createPath (storeFrontData.TESTHOSTNAMEPATH, storeHashMap);
        This.imagePath := StoreFront'Class (This).createPath (StoreFront_Package.RESOURCES, storeFrontData.IMAGEPATH, storeHashMap);
        This.staticPath := StoreFront'Class (This).createPath (To_Unbounded_String (" Products") & Java_Image (AbPathData_Package.getInstance.SEPARATOR), storeFrontData.STATICPATH, storeHashMap);
        This.categoryPath := StoreFront'Class (This).createPath (StoreFront_Package.RESOURCES, storeFrontData.CATEGORYPATH, storeHashMap);
        This.inventoryControl := Java_Unbox (storeHashMap.get (storeFrontData.INVENTORYCONTROL));
        This.subStores := Java_Unbox (storeHashMap.get (storeFrontData.SUBSTORES));
        This.tagLocation := Java_Unbox (storeHashMap.get (storeFrontData.TAGLOCATION));
        This.packageLocation := Java_Unbox (storeHashMap.get (storeFrontData.PACKAGELOCATION));
        This.ftp := Java_Unbox (storeHashMap.get (storeFrontData.FTP));
        This.ftpPath := StoreFront'Class (This).createPath (storeFrontData.FTPPATH, storeHashMap);
        This.ftpUserName := Java_Unbox (storeHashMap.get (storeFrontData.FTPUSERNAME));
        This.ftpPassword := Java_Unbox (storeHashMap.get (storeFrontData.FTPPASSWORD));
        This.testFtp := Java_Unbox (storeHashMap.get (storeFrontData.TESTFTP));
        This.testFtpPath := StoreFront'Class (This).createPath (storeFrontData.TESTFTPPATH, storeHashMap);
        This.testFtpUserName := Java_Unbox (storeHashMap.get (storeFrontData.TESTFTPUSERNAME));
        This.testFtpPassword := Java_Unbox (storeHashMap.get (storeFrontData.TESTFTPPASSWORD));
        This.timeCreated := Java_Unbox (storeHashMap.get (EntryData_Package.getInstance.TIMECREATED));
        This.lastModified := Java_Unbox (storeHashMap.get (EntryData_Package.getInstance.LASTMODIFIED));
   end getFormData;

   function isNameValid (This : in out StoreFront) return Boolean is
      isEscapedCharactersContained : Boolean;
      storeNameEscaped : Unbounded_String;
      stringValidationUtil : StringValidationUtil_Access;
      isSpacesContained : Boolean;
      hashMap : HashMap_Access;
   begin
        if not (StringValidationUtil_Package.getInstance.isValidRequired (This.name, This.MINSTORENAMELENGTH, This.MAXCHAR)) then
            return False;
        else
            isEscapedCharactersContained := False;
            storeNameEscaped := StringEscapeUtils_Package.escapeHtml3 (This.name);
            if (Java_Compare_To (This.name, storeNameEscaped)) /= (0) then
                isEscapedCharactersContained := True;
            end if;
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            isSpacesContained := False;
            if stringValidationUtil.containsSpaces (This.name) then
                isSpacesContained := True;
            end if;
            if (isSpacesContained) or else (isEscapedCharactersContained) then
                hashMap := SpecialCharacterUtil_Package.getHashMap;
                hashMap.put (new Unbounded_String_Array'(0 => CommonSeps_Package.getInstance.SPACE), This.ONE_EMPTY_STRING_ARRAY);
                This.name := Replace_Package.Create (hashMap).all_Id (This.name);
            end if;
        end if;
        return True;
   end isNameValid;

   function isValid (This : in out StoreFront) return Boolean is
      valid : Boolean;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        valid := True;
        valid := StoreFront'Class (This).isNameValid;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (This.basketName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.homeHostName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.homeHostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.hostName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.hostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testHomeHostName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testHomeHostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testHostName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testHostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.imagePath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.staticPath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.categoryPath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.inventoryControl, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.subStores, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.tagLocation, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.packageLocation, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.ftp, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.ftpPath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.ftpUserName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.ftpPassword, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testFtp, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testFtpPath.toString, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testFtpUserName, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.testFtpPassword, This.MINCHAR, This.MAXCHAR)) then
            valid := False;
        end if;
        if (valid) = (True) then
            return True;
        else
            return False;
        end if;
   end isValid;

   function nameValidationInfo (This : in out StoreFront) return Unbounded_String is
      stringValidationUtil : StringValidationUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (This.name, This.MINCHAR, This.MAXCHAR)) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Name is invalid. Must be < "));
            stringBuffer.appendint (This.MAXCHAR);
            stringBuffer.append (To_Unbounded_String (" and > 0 characters.<br>"));
            return stringBuffer.toString;
        end if;
        return This.EMPTY_STRING;
   end nameValidationInfo;

   function validationInfo (This : in out StoreFront) return Unbounded_String is
      stringValidationUtil : StringValidationUtil_Access;
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (StoreFront'Class (This).nameValidationInfo);
            if not (stringValidationUtil.isValidRequired (This.basketName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Basket name is invalid. Must be < "));
                stringBuffer.appendint (This.MAXCHAR);
                stringBuffer.append (To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.homeHostName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Home host name is invalid. Must be < "));
                stringBuffer.appendint (This.MAXCHAR);
                stringBuffer.append (To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.homeHostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Home host name path is invalid. Must be < "));
                stringBuffer.appendint (This.MAXCHAR);
                stringBuffer.append (To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.hostName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Host name is invalid. Must be < "));
                stringBuffer.appendint (This.MAXCHAR);
                stringBuffer.append (To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.hostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Host name path is invalid. Must be < "));
                stringBuffer.appendint (This.MAXCHAR);
                stringBuffer.append (To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testHomeHostName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test home host name is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testHomeHostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test home host name path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testHostName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test host name is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testHostNamePath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test host name path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.imagePath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Image path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.staticPath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Static path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.categoryPath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Category path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.inventoryControl, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Inventory control is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.subStores, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Sub stores is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.tagLocation, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Tag location is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidRequired (This.packageLocation, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Package location is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.ftp, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Ftp is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.ftpPath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Ftp path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.ftpUserName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Ftp username is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.ftpPassword, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Ftp password is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testFtp, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test ftp is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testFtpPath.toString, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test ftp Path is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testFtpUserName, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test ftp username is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            if not (stringValidationUtil.isValidNotRequired (This.testFtpPassword, This.MINCHAR, This.MAXCHAR)) then
                stringBuffer.append (To_Unbounded_String ("Test ftp password is invalid. Must be < ") & Java_Image (This.MAXCHAR) & To_Unbounded_String (" and > 0 characters.<br>"));
            end if;
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), StoreFront_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Form");
                end;
        end;
   end validationInfo;

   function getTestHtmlPath (This : in out StoreFront) return Unbounded_String is
   begin
        return (org_Package.allbinary.globals.URLGLOBALS.getTestHtmlPath) + (StoreFront'Class (This).getCurrentHostNamePath);
   end getTestHtmlPath;

   function getCurrentHostName (This : in out StoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := This.EMPTY_STRING;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := StoreFront'Class (This).getTestHostName;
        else
            location := StoreFront'Class (This).getHostName;
        end if;
        return location;
   end getCurrentHostName;

   function getCurrentHostNamePath (This : in out StoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := This.EMPTY_STRING;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := StoreFront'Class (This).getTestHostNamePath;
        else
            location := StoreFront'Class (This).getHostNamePath;
        end if;
        return location;
   end getCurrentHostNamePath;

   function getCurrentHomeHostName (This : in out StoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := This.EMPTY_STRING;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := StoreFront'Class (This).getTestHomeHostName;
        else
            location := StoreFront'Class (This).getHomeHostName;
        end if;
        return location;
   end getCurrentHomeHostName;

   function getCurrentHomeHostNamePath (This : in out StoreFront) return Unbounded_String is
      location : Unbounded_String;
   begin
        location := This.EMPTY_STRING;
        if org_Package.allbinary.globals.URLGLOBALS.isTestingMode then
            location := StoreFront'Class (This).getTestHomeHostNamePath;
        else
            location := StoreFront'Class (This).getHomeHostNamePath;
        end if;
        return location;
   end getCurrentHomeHostNamePath;

   function getName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getBasketName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.basketName;
   end getBasketName;

   function getHomeHostName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.homeHostName;
   end getHomeHostName;

   function getHomeHostNamePath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.homeHostNamePath.toString;
   end getHomeHostNamePath;

   function getHostName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.hostName;
   end getHostName;

   function getHostNamePath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.hostNamePath.toString;
   end getHostNamePath;

   function getTestHomeHostName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testHomeHostName;
   end getTestHomeHostName;

   function getTestHomeHostNamePath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testHomeHostNamePath.toString;
   end getTestHomeHostNamePath;

   function getTestHostName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testHostName;
   end getTestHostName;

   function getTestHostNamePath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testHostNamePath.toString;
   end getTestHostNamePath;

   function getStaticPath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.staticPath.toString;
   end getStaticPath;

   function getCategoryPath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.categoryPath.toString;
   end getCategoryPath;

   function getInventoryControl (This : in out StoreFront) return Unbounded_String is
   begin
        return This.inventoryControl;
   end getInventoryControl;

   --  throws Exception
   function getSubStores (This : in out StoreFront) return BasicArrayList_Access is
      tokenizer : Tokenizer_Access;
      subStoreVector : BasicArrayList_Access;
   begin
        begin
            tokenizer := Tokenizer_Package.Create (CommonSeps_Package.getInstance.SEMICOLON);
            subStoreVector := tokenizer.getTokensFromString (This.subStores, BasicArrayListD_Package.Create);
            return subStoreVector;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getSubStores;

   function getTagLocation (This : in out StoreFront) return Unbounded_String is
   begin
        return This.tagLocation;
   end getTagLocation;

   function getPackageLocation (This : in out StoreFront) return Unbounded_String is
   begin
        return This.packageLocation;
   end getPackageLocation;

   function getFtp (This : in out StoreFront) return Unbounded_String is
   begin
        return This.ftp;
   end getFtp;

   function getFtpUserName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.ftpUserName;
   end getFtpUserName;

   function getFtpPassword (This : in out StoreFront) return Unbounded_String is
   begin
        return This.ftpPassword;
   end getFtpPassword;

   function getTestFtp (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testFtp;
   end getTestFtp;

   function getTestFtpUserName (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testFtpUserName;
   end getTestFtpUserName;

   function getTestFtpPassword (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testFtpPassword;
   end getTestFtpPassword;

   function getFtpPath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.ftpPath.toString;
   end getFtpPath;

   function getTestFtpPath (This : in out StoreFront) return Unbounded_String is
   begin
        return This.testFtpPath.toString;
   end getTestFtpPath;

   function getTimeCreated (This : in out StoreFront) return Unbounded_String is
   begin
        return This.timeCreated;
   end getTimeCreated;

   function getLastModified (This : in out StoreFront) return Unbounded_String is
   begin
        return This.lastModified;
   end getLastModified;

   procedure setName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setBasketName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.basketName := value;
   end setBasketName;

   procedure setHomeHostName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.homeHostName := value;
   end setHomeHostName;

   --  throws Exception
   procedure setHomeHostNamePath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.homeHostNamePath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setHomeHostNamePath;

   procedure setHostName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.hostName := value;
   end setHostName;

   --  throws Exception
   procedure setHostNamePath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.hostNamePath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setHostNamePath;

   procedure setTestHomeHostName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testHomeHostName := value;
   end setTestHomeHostName;

   --  throws Exception
   procedure setTestHomeHostNamePath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testHomeHostNamePath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setTestHomeHostNamePath;

   procedure setTestHostName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testHostName := value;
   end setTestHostName;

   --  throws Exception
   procedure setTestHostNamePath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testHostNamePath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setTestHostNamePath;

   --  throws Exception
   procedure setImagePath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.imagePath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setImagePath;

   --  throws Exception
   procedure setStaticPath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.staticPath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setStaticPath;

   --  throws Exception
   procedure setCategoryPath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.categoryPath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setCategoryPath;

   procedure setSubStores (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.subStores := value;
   end setSubStores;

   procedure setTagLocation (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.tagLocation := value;
   end setTagLocation;

   procedure setPackageLocation (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.packageLocation := value;
   end setPackageLocation;

   procedure setInventoryControl (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.inventoryControl := value;
   end setInventoryControl;

   procedure getPackageLocation (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.packageLocation := value;
   end getPackageLocation;

   procedure setFtp (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.ftp := value;
   end setFtp;

   procedure setFtpUserName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.ftpUserName := value;
   end setFtpUserName;

   procedure setFtpPassword (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.ftpPassword := value;
   end setFtpPassword;

   procedure setTestFtp (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testFtp := value;
   end setTestFtp;

   procedure setTestFtpUserName (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testFtpUserName := value;
   end setTestFtpUserName;

   procedure setTestFtpPassword (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testFtpPassword := value;
   end setTestFtpPassword;

   procedure setTimeCreated (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.timeCreated := value;
   end setTimeCreated;

   procedure setLastModified (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.lastModified := value;
   end setLastModified;

   --  throws Exception
   procedure setFtpPath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.ftpPath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setFtpPath;

   --  throws Exception
   procedure setTestFtpPath (This : in out StoreFront; value : Unbounded_String) is
   begin
        This.testFtpPath := AbPath_Package.Create (value, StringUtil_Package.getInstance.EMPTY_STRING);
   end setTestFtpPath;

   --  throws Exception
   function createDirectories (This : in out StoreFront) return Boolean is
      storeAbPath : AbPath_Access;
   begin
        storeAbPath := AbPath_Package.Create ((URLGLOBALS_Package.getWebappPath) + (StoreFront'Class (This).getCurrentHomeHostNamePath), StringUtil_Package.getInstance.EMPTY_STRING);
        if not (This.directory.create (storeAbPath)) then
            return False;
        end if;
        if not (This.directory.create (AbPath_Package.Create ((storeAbPath) + (StoreFront'Class (This).getCategoryPath), StringUtil_Package.getInstance.EMPTY_STRING))) then
            return False;
        end if;
        if not (This.directory.create (AbPath_Package.Create ((storeAbPath) + (StoreFront'Class (This).getStaticPath), StringUtil_Package.getInstance.EMPTY_STRING))) then
            return False;
        end if;
        return True;
   end createDirectories;

   --  throws Exception
   procedure install (This : in out StoreFront; current : Integer; total : Integer) is
      stringBuffer : StringMaker_Access;
      viewPath : Unbounded_String;
      fromDirectoryAbPath : AbPath_Access;
      fromSpecialDirectoryAbPath : AbPath_Access;
      toDirectoryAbPath : AbPath_Access;
      viewTotal : Integer;
      installTotal : Integer;
      file : AbFile_Access;
      halfViewTotal : Integer;
   begin
        begin
            if not (StoreFront'Class (This).createDirectories) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to create store directories")));
            end if;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (URLGLOBALS_Package.getMainPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
            viewPath := stringBuffer.toString;
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (viewPath);
            stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.INSTALLPATH);
            fromDirectoryAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (viewPath);
            stringBuffer.append (To_Unbounded_String ("special"));
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            fromSpecialDirectoryAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (viewPath);
            stringBuffer.append (StoreFront'Class (This).getName);
            stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
            toDirectoryAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
            if (current) = (0) then
                if not (This.directory.create (toDirectoryAbPath)) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Unable to create store view directory: ") & toDirectoryAbPath.toString));
                end if;
            end if;
            viewTotal := (((total) * (85))) / (100);
            installTotal := (((total) * (93))) / (100);
            if (current) < (viewTotal) then
                file := AbFile_Package.createAbFileFromAbPath (fromSpecialDirectoryAbPath);
                if file.isDirectory then
                    halfViewTotal := (viewTotal) / (2);
                    if (current) < (halfViewTotal) then
                        StoreFront'Class (This).installViews (fromSpecialDirectoryAbPath, toDirectoryAbPath, current, halfViewTotal);
                    elsif (current) < (viewTotal) then
                        StoreFront'Class (This).installViews (fromDirectoryAbPath, toDirectoryAbPath, (current) - (halfViewTotal), (viewTotal) - (halfViewTotal));
                    end if;
                else
                    StoreFront'Class (This).installViews (fromDirectoryAbPath, toDirectoryAbPath, current, viewTotal);
                end if;
            elsif (current) < (installTotal) then
                StoreFront'Class (This).installResources (fromDirectoryAbPath, (current) - (viewTotal), (installTotal) - (viewTotal));
            else
                StoreFront'Class (This).installMedia (fromDirectoryAbPath, (current) - (installTotal), (total) - (installTotal));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFront_Access'(This'Unchecked_Access), To_Unbounded_String ("install()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end install;

   --  throws Exception
   procedure installViews (This : in out StoreFront; fromDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; toDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; current : Integer; total : Integer) is
      fromDirectoryAbPath : constant AbPath_Access := AbPath_Access (fromDirectoryAbPath_Param);
      toDirectoryAbPath : constant AbPath_Access := AbPath_Access (toDirectoryAbPath_Param);
   begin
        FileUtil_Package.getInstance.copyDirectoryPortion (fromDirectoryAbPath, toDirectoryAbPath, True, False, current, total);
   end installViews;

   --  throws Exception
   procedure installResources (This : in out StoreFront; fromDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; current : Integer; total : Integer) is
      fromDirectoryAbPath : constant AbPath_Access := AbPath_Access (fromDirectoryAbPath_Param);
      stringBuffer : StringMaker_Access;
      installCategoryAbPath : AbPath_Access;
      categoryAbPath : AbPath_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fromDirectoryAbPath.toString);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (To_Unbounded_String ("Resources"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        installCategoryAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (StoreFront'Class (This).getCurrentHomeHostNamePath);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (StoreFront'Class (This).getCategoryPath);
        categoryAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        FileUtil_Package.getInstance.copyDirectoryPortion (installCategoryAbPath, categoryAbPath, True, False, current, total);
   end installResources;

   --  throws Exception
   procedure installMedia (This : in out StoreFront; fromDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; current : Integer; total : Integer) is
      fromDirectoryAbPath : constant AbPath_Access := AbPath_Access (fromDirectoryAbPath_Param);
      stringBuffer : StringMaker_Access;
      viewStoreImagesDirectoryAbPath : AbPath_Access;
      storeAbPath : AbPath_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fromDirectoryAbPath.toString);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.TEMPLATEPATH);
        stringBuffer.append (To_Unbounded_String ("images"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        viewStoreImagesDirectoryAbPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        storeAbPath := AbPath_Package.Create ((URLGLOBALS_Package.getWebappPath) + (StoreFront'Class (This).getCurrentHomeHostNamePath), StringUtil_Package.getInstance.EMPTY_STRING);
        FileUtil_Package.getInstance.copyDirectoryPortion (viewStoreImagesDirectoryAbPath, storeAbPath, True, False, current, total);
   end installMedia;

   --  throws Exception
   function toVector (This : in out StoreFront) return BasicArrayList_Access is
      dataVector : BasicArrayList_Access;
      contextConfigurationDomDocumentMapping : ContextConfigurationDomDocumentMapping_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        dataVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        dataVector.add (This.name);
        dataVector.add (This.homeHostName);
        dataVector.add (This.homeHostNamePath.toString);
        dataVector.add (This.hostName);
        dataVector.add (This.hostNamePath.toString);
        dataVector.add (This.testHomeHostName);
        dataVector.add (This.testHomeHostNamePath.toString);
        dataVector.add (This.testHostName);
        dataVector.add (This.testHostNamePath.toString);
        dataVector.add (This.imagePath.toString);
        dataVector.add (This.staticPath.toString);
        dataVector.add (This.categoryPath.toString);
        dataVector.add (This.inventoryControl);
        contextConfigurationDomDocumentMapping := ContextConfigurationDomDocumentMapping_Package.Create (StoreFront'Class (This).getContextConfigurationInterface);
        dataVector.add (contextConfigurationDomDocumentMapping.toDomDocumentString);
        dataVector.add (This.subStores);
        dataVector.add (This.tagLocation);
        dataVector.add (This.packageLocation);
        dataVector.add (This.ftp);
        dataVector.add (This.ftpPath.toString);
        dataVector.add (This.ftpUserName);
        dataVector.add (This.ftpPassword);
        dataVector.add (This.testFtp);
        dataVector.add (This.testFtpPath.toString);
        dataVector.add (This.testFtpUserName);
        dataVector.add (This.testFtpPassword);
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        dataVector.add (time);
        dataVector.add (time);
        return dataVector;
   end toVector;

   --  throws Exception
   function toHashMap (This : in out StoreFront) return HashMap_Access is
      storeFrontData : StoreFrontData_Access;
      dataHashMap : HashMap_Access;
      contextConfigurationDomDocumentMapping : ContextConfigurationDomDocumentMapping_Access;
      calendar : Calendar_Access;
      time : Unbounded_String;
   begin
        storeFrontData := StoreFrontData_Package.getInstance;
        dataHashMap := StdUtil_Package.getInstance.createHashMap;
        dataHashMap.put (storeFrontData.NAME, Java_Box (This.name));
        dataHashMap.put (storeFrontData.HOMEHOSTNAME, Java_Box (This.homeHostName));
        dataHashMap.put (storeFrontData.HOMEHOSTNAMEPATH, Java_Box (This.homeHostNamePath.toString));
        dataHashMap.put (storeFrontData.HOSTNAME, Java_Box (This.hostName));
        dataHashMap.put (storeFrontData.HOSTNAMEPATH, Java_Box (This.hostNamePath.toString));
        dataHashMap.put (storeFrontData.TESTHOMEHOSTNAME, Java_Box (This.testHomeHostName));
        dataHashMap.put (storeFrontData.TESTHOMEHOSTNAMEPATH, Java_Box (This.testHomeHostNamePath.toString));
        dataHashMap.put (storeFrontData.TESTHOSTNAME, Java_Box (This.testHostName));
        dataHashMap.put (storeFrontData.TESTHOSTNAMEPATH, Java_Box (This.testHostNamePath.toString));
        dataHashMap.put (storeFrontData.IMAGEPATH, Java_Box (This.imagePath.toString));
        dataHashMap.put (storeFrontData.STATICPATH, Java_Box (This.staticPath.toString));
        dataHashMap.put (storeFrontData.CATEGORYPATH, Java_Box (This.categoryPath.toString));
        dataHashMap.put (storeFrontData.INVENTORYCONTROL, Java_Box (This.inventoryControl));
        contextConfigurationDomDocumentMapping := ContextConfigurationDomDocumentMapping_Package.Create (StoreFront'Class (This).getContextConfigurationInterface);
        dataHashMap.put (storeFrontData.CONFIGURATION, contextConfigurationDomDocumentMapping.toDomDocumentString);
        dataHashMap.put (storeFrontData.SUBSTORES, Java_Box (This.subStores));
        dataHashMap.put (storeFrontData.TAGLOCATION, Java_Box (This.tagLocation));
        dataHashMap.put (storeFrontData.PACKAGELOCATION, Java_Box (This.packageLocation));
        dataHashMap.put (storeFrontData.FTP, Java_Box (This.ftp));
        dataHashMap.put (storeFrontData.FTPPATH, Java_Box (This.ftpPath.toString));
        dataHashMap.put (storeFrontData.FTPUSERNAME, Java_Box (This.ftpUserName));
        dataHashMap.put (storeFrontData.FTPPASSWORD, Java_Box (This.ftpPassword));
        dataHashMap.put (storeFrontData.TESTFTP, Java_Box (This.testFtp));
        dataHashMap.put (storeFrontData.TESTFTPPATH, Java_Box (This.testFtpPath.toString));
        dataHashMap.put (storeFrontData.TESTFTPUSERNAME, Java_Box (This.testFtpUserName));
        dataHashMap.put (storeFrontData.TESTFTPPASSWORD, Java_Box (This.testFtpPassword));
        calendar := Calendar_Package.getInstance;
        time := Java_New_String (calendar.getTimeInMillis.toString);
        dataHashMap.put (EntryData_Package.getInstance.LASTMODIFIED, Java_Box (time));
        return dataHashMap;
   end toHashMap;

   function getKey (This : in out StoreFront) return Java_Object_Access is
   begin
        return Java_Box (StoreFront'Class (This).getName);
   end getKey;

   function getContextConfigurationInterface (This : in out StoreFront) return ContextConfigurationInterface_Access is
   begin
        return This.contextConfigurationInterface;
   end getContextConfigurationInterface;

   procedure setContextConfigurationInterface (This : in out StoreFront; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) is
      contextConfigurationInterface : constant ContextConfigurationInterface_Access := ContextConfigurationInterface_Access (contextConfigurationInterface_Param);
   begin
        This.contextConfigurationInterface := contextConfigurationInterface;
   end setContextConfigurationInterface;

   procedure isColumn (This : in out StoreFront; columnName : Unbounded_String) is
      Java_Result : constant Boolean := StoreFront'Class (This).isColumn (columnName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isColumn;

   procedure createPath (This : in out StoreFront; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant AbPath_Access := StoreFront'Class (This).createPath (key, hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPath;

   procedure createPath (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant AbPath_Access := StoreFront'Class (This).createPath (append, key, hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPath;

   procedure get (This : in out StoreFront; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Unbounded_String := StoreFront'Class (This).get (key, hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure create (This : in out StoreFront; append : Unbounded_String; key : Unbounded_String; hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant Unbounded_String := StoreFront'Class (This).create (append, key, hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

begin
   null;
   RESOURCES := To_Unbounded_String (" Resources") & Java_Image (AbPathData_Package.getInstance.SEPARATOR);

end org.allbinary.business.context.modules.storefront.StoreFront_Package;



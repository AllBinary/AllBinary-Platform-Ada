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


package body org.allbinary.business.installer.InitializerDatabase_Package is

   procedure Initialize_Fields (This : in out InitializerDatabase'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.adminDbUserName := Null_Unbounded_String;
      This.adminDbPassword := Null_Unbounded_String;
      This.adminJdbcDriver := Null_Unbounded_String;
      This.adminSchema := Null_Unbounded_String;
      This.adminServer := Null_Unbounded_String;
      This.adminPort := Null_Unbounded_String;
      This.initDb := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InitializerDatabase'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; map_Param : access Map_Package.Map'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      map : constant Map_Access := Map_Access (map_Param);
      stringBuffer : StringMaker_Access;
      hashMap : HashMap_Access;
      keys : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      key : Unbounded_String;
      values : Unbounded_String_Array_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        keys := map.keySet;
        keyArray := keys.toArray;
        size := keyArray'Length;
        for index in 0 .. (size) - 1 loop
            key := Unbounded_String (keyArray (index));
            values := Unbounded_String_Array_Access (map.get (key));
            hashMap.put (Java_New_String (key), Java_New_String (values (0)));
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("key: "));
            stringBuffer.append (key);
            stringBuffer.append (To_Unbounded_String (" Value: "));
            stringBuffer.append (values (0));
            This.logUtil.putF (stringBuffer.toString, InitializerDatabase_Access'(This'Unchecked_Access), To_Unbounded_String ("getFormData()"));
        end loop;
        This.getFormData (abeClientInformation, hashMap);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; map_Param : access Map_Package.Map'Class) return InitializerDatabase_Access is
      This : constant InitializerDatabase_Access := new InitializerDatabase;
   begin
      InitializerDatabase_Package.Initialize (This.all, abeClientInformation_Param, map_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InitializerDatabase'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; initHashMap_Param : access HashMap_Package.HashMap'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      initHashMap : constant HashMap_Access := HashMap_Access (initHashMap_Param);
   begin
      Initialize_Fields (This);
        This.getFormData (abeClientInformation, initHashMap);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; initHashMap_Param : access HashMap_Package.HashMap'Class) return InitializerDatabase_Access is
      This : constant InitializerDatabase_Access := new InitializerDatabase;
   begin
      InitializerDatabase_Package.Initialize (This.all, abeClientInformation_Param, initHashMap_Param);
      return This;
   end Create;

   procedure getFormData (This : in out InitializerDatabase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      initializerData : InitializerData_Access;
      dbConnectionInfo : DbConnectionInfo_Access;
      adminDbName : Unbounded_String;
   begin
        begin
            initializerData := InitializerData_Package.getInstance;
            This.setAdminDbUserName (Unbounded_String (hashMap.get (initializerData.DBUSER)));
            This.setAdminDbPassword (Unbounded_String (hashMap.get (initializerData.DBPASSWORD)));
            This.setAdminJdbcDriver (Unbounded_String (hashMap.get (initializerData.ADMINJDBCDRIVER)));
            This.setAdminSchema (Unbounded_String (hashMap.get (initializerData.ADMINSCHEMA)));
            This.setAdminServer (Unbounded_String (hashMap.get (initializerData.ADMINSERVER)));
            This.setAdminPort (Unbounded_String (hashMap.get (initializerData.ADMINPORT)));
            dbConnectionInfo := DbConnectionInfo_Package.Create;
            adminDbName := StringUtil_Package.getInstance.EMPTY_STRING;
            dbConnectionInfo.setJdbcDriver (This.getAdminJdbcDriver);
            dbConnectionInfo.setName (adminDbName);
            dbConnectionInfo.setUserName (This.getAdminDbUserName);
            dbConnectionInfo.setPassword (This.getAdminDbPassword);
            dbConnectionInfo.setSchema (This.getAdminSchema);
            dbConnectionInfo.setServer (This.getAdminServer);
            dbConnectionInfo.setPort (This.getAdminPort);
            This.initDb := DynamicInitDb_Package.Create (abeClientInformation, DatabaseConnectionInfoInterface_Access (dbConnectionInfo));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to get form data"), InitializerDatabase_Access'(This'Unchecked_Access), To_Unbounded_String ("getFormData()"), e);
                end;
        end;
   end getFormData;

   function isJdbcDriverValid (This : in out InitializerDatabase; jdbcDriverClassPathString : Unbounded_String) return Boolean is
      commonStrings : CommonStrings_Access;
   begin
        begin
            Class_Package.forName (jdbcDriverClassPathString).newInstance;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADERERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, InitializerDatabase_Access'(This'Unchecked_Access), commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isJdbcDriverValid;

   function isValid (This : in out InitializerDatabase) return Boolean is
      isValid : Boolean;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        isValid := True;
        if not (This.isJdbcDriverValid (This.adminJdbcDriver)) then
            isValid := False;
        end if;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (This.adminDbUserName, InitializerDatabase_Package.MIN, InitializerDatabase_Package.MAX)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.adminDbPassword, InitializerDatabase_Package.MINPASSWORD, InitializerDatabase_Package.MAX)) then
            isValid := False;
        end if;
        return isValid;
   end isValid;

   function getJdbcDriverValidationInfo (This : in out InitializerDatabase; jdbcDriver : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("The JDBC driver ("));
        stringBuffer.append (jdbcDriver);
        stringBuffer.append (To_Unbounded_String (") you have provided is not valid.<br/>"));
        return stringBuffer.toString;
   end getJdbcDriverValidationInfo;

   function getInvalidInfo (This : in out InitializerDatabase) return Unbounded_String is
      isValid : Boolean;
      isJdbcDriversValid : Boolean;
      stringBuffer : StringMaker_Access;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        isValid := True;
        isJdbcDriversValid := True;
        stringBuffer := StringMaker_Package.Create;
        if not (This.isJdbcDriverValid (This.adminJdbcDriver)) then
            isJdbcDriversValid := False;
            stringBuffer.append (This.getJdbcDriverValidationInfo (This.getAdminJdbcDriver));
        end if;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (This.adminDbUserName, InitializerDatabase_Package.MIN, InitializerDatabase_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Admin username should be < ") & Java_Image (InitializerDatabase_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (InitializerDatabase_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.adminDbPassword, InitializerDatabase_Package.MINPASSWORD, InitializerDatabase_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Admin password should be < ") & Java_Image (InitializerDatabase_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (InitializerDatabase_Package.MINPASSWORD) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (isJdbcDriversValid) then
            stringBuffer.append (InitializerData_Package.getInstance.getJdbcDriverSolutionInfo);
        end if;
        return stringBuffer.toString;
   end getInvalidInfo;

   function createUsers (This : in out InitializerDatabase) return Boolean is
   begin
        begin
            This.initDb.addUsers;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to Create Users"), InitializerDatabase_Access'(This'Unchecked_Access), To_Unbounded_String ("createUsers()"), e);
            return False;
                end;
        end;
   end createUsers;

   function createDatabases (This : in out InitializerDatabase) return Boolean is
   begin
        begin
            This.initDb.addDatabases;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to Create Databases"), InitializerDatabase_Access'(This'Unchecked_Access), To_Unbounded_String ("createDatabases()"), e);
            return False;
                end;
        end;
   end createDatabases;

   function createTables (This : in out InitializerDatabase) return Boolean is
   begin
        begin
            This.initDb.addTables;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to Create Tables"), InitializerDatabase_Access'(This'Unchecked_Access), To_Unbounded_String ("createTables()"), e);
            return False;
                end;
        end;
   end createTables;

   function getAdminDbUserName (This : in out InitializerDatabase) return Unbounded_String is
   begin
        return This.adminDbUserName;
   end getAdminDbUserName;

   procedure setAdminDbUserName (This : in out InitializerDatabase; adminDbUserName : Unbounded_String) is
   begin
        This.adminDbUserName := adminDbUserName;
   end setAdminDbUserName;

   function getAdminDbPassword (This : in out InitializerDatabase) return Unbounded_String is
   begin
        return This.adminDbPassword;
   end getAdminDbPassword;

   procedure setAdminDbPassword (This : in out InitializerDatabase; adminDbPassword : Unbounded_String) is
   begin
        This.adminDbPassword := adminDbPassword;
   end setAdminDbPassword;

   function getAdminJdbcDriver (This : in out InitializerDatabase) return Unbounded_String is
   begin
        return This.adminJdbcDriver;
   end getAdminJdbcDriver;

   procedure setAdminJdbcDriver (This : in out InitializerDatabase; adminJdbcDriver : Unbounded_String) is
   begin
        This.adminJdbcDriver := adminJdbcDriver;
   end setAdminJdbcDriver;

   function getAdminSchema (This : in out InitializerDatabase) return Unbounded_String is
   begin
        return This.adminSchema;
   end getAdminSchema;

   procedure setAdminSchema (This : in out InitializerDatabase; adminSchema : Unbounded_String) is
   begin
        This.adminSchema := adminSchema;
   end setAdminSchema;

   function getAdminServer (This : in out InitializerDatabase) return Unbounded_String is
   begin
        return This.adminServer;
   end getAdminServer;

   procedure setAdminServer (This : in out InitializerDatabase; adminServer : Unbounded_String) is
   begin
        This.adminServer := adminServer;
   end setAdminServer;

   function getAdminPort (This : in out InitializerDatabase) return Unbounded_String is
   begin
        return This.adminPort;
   end getAdminPort;

   procedure setAdminPort (This : in out InitializerDatabase; adminPort : Unbounded_String) is
   begin
        This.adminPort := adminPort;
   end setAdminPort;

   procedure isJdbcDriverValid (This : in out InitializerDatabase; jdbcDriverClassPathString : Unbounded_String) is
      Java_Result : constant Boolean := InitializerDatabase'Class (This).isJdbcDriverValid (jdbcDriverClassPathString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isJdbcDriverValid;

   procedure getJdbcDriverValidationInfo (This : in out InitializerDatabase; jdbcDriver : Unbounded_String) is
      Java_Result : constant Unbounded_String := InitializerDatabase'Class (This).getJdbcDriverValidationInfo (jdbcDriver);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getJdbcDriverValidationInfo;

begin
   null;
   MAXDB := 30;
   MAX := 16;
   MIN := 4;
   MINPASSWORD := 0;

end org.allbinary.business.installer.InitializerDatabase_Package;



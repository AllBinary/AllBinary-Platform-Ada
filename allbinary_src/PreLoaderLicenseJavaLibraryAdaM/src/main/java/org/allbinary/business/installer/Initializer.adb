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


with org.allbinary.business.init.db.HistoryDbInitInfo_Package; use org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.init.db.LogDbInitInfo_Package; use org.allbinary.business.init.db.LogDbInitInfo_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package; use org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.installer.InitializerData_Package; use org.allbinary.business.installer.InitializerData_Package;

package body org.allbinary.business.installer.Initializer_Package is

   package HistoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.HistoryDbInitInfo_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package LogDbInitInfo_Package renames Standard.org.allbinary.business.init.db.LogDbInitInfo_Package;
   package StaticPagesDbInitInfo_Package renames Standard.org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out Initializer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.userJdbcDriver := Null_Unbounded_String;
      This.userName := Null_Unbounded_String;
      This.userUserName := Null_Unbounded_String;
      This.userPassword := Null_Unbounded_String;
      This.userSchema := Null_Unbounded_String;
      This.userServer := Null_Unbounded_String;
      This.userPort := Null_Unbounded_String;
      This.historyJdbcDriver := Null_Unbounded_String;
      This.historyName := Null_Unbounded_String;
      This.historyUserName := Null_Unbounded_String;
      This.historyPassword := Null_Unbounded_String;
      This.historySchema := Null_Unbounded_String;
      This.historyServer := Null_Unbounded_String;
      This.historyPort := Null_Unbounded_String;
      This.logJdbcDriver := Null_Unbounded_String;
      This.logName := Null_Unbounded_String;
      This.logUserName := Null_Unbounded_String;
      This.logPassword := Null_Unbounded_String;
      This.logSchema := Null_Unbounded_String;
      This.logServer := Null_Unbounded_String;
      This.logPort := Null_Unbounded_String;
      This.inventoryJdbcDriver := Null_Unbounded_String;
      This.inventoryName := Null_Unbounded_String;
      This.inventoryUserName := Null_Unbounded_String;
      This.inventoryPassword := Null_Unbounded_String;
      This.inventorySchema := Null_Unbounded_String;
      This.inventoryServer := Null_Unbounded_String;
      This.inventoryPort := Null_Unbounded_String;
      This.staticPagesJdbcDriver := Null_Unbounded_String;
      This.staticPagesName := Null_Unbounded_String;
      This.staticPagesUserName := Null_Unbounded_String;
      This.staticPagesPassword := Null_Unbounded_String;
      This.staticPagesSchema := Null_Unbounded_String;
      This.staticPagesServer := Null_Unbounded_String;
      This.staticPagesPort := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out Initializer'Class; map_Param : access Map_Package.Map'Class) is
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
            key := Java_Unbox (keyArray (index));
            values := Unbounded_String_Array_Access (map.get (Java_Box (key)));
            hashMap.put (Java_New_String (key), Java_New_String (values (0)));
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (To_Unbounded_String ("key: "));
            stringBuffer.append (key);
            stringBuffer.append (To_Unbounded_String (" Value: "));
            stringBuffer.append (values (0));
            This.logUtil.putF (stringBuffer.toString, Initializer_Access'(This'Unchecked_Access), To_Unbounded_String ("getFormData()"));
        end loop;
        Initializer'Class (This).getFormData (hashMap);
   end Initialize;

   function Create (map_Param : access Map_Package.Map'Class) return Initializer_Access is
      This : constant Initializer_Access := new Initializer;
   begin
      Initializer_Package.Initialize (This.all, map_Param);
      return This;
   end Create;

   procedure Initialize (This : in out Initializer'Class; initHashMap_Param : access HashMap_Package.HashMap'Class) is
      initHashMap : constant HashMap_Access := HashMap_Access (initHashMap_Param);
   begin
      Initialize_Fields (This);
        Initializer'Class (This).getFormData (initHashMap);
   end Initialize;

   function Create (initHashMap_Param : access HashMap_Package.HashMap'Class) return Initializer_Access is
      This : constant Initializer_Access := new Initializer;
   begin
      Initializer_Package.Initialize (This.all, initHashMap_Param);
      return This;
   end Create;

   procedure getFormData (This : in out Initializer; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      initializerData : InitializerData_Access;
   begin
        begin
            initializerData := InitializerData_Package.getInstance;
            This.userJdbcDriver := Java_Unbox (hashMap.get (initializerData.CUSTOMERJDBCDRIVER));
            This.userName := Java_Unbox (hashMap.get (initializerData.CUSTOMERNAME));
            This.userUserName := Java_Unbox (hashMap.get (initializerData.CUSTOMERUSERNAME));
            This.userPassword := Java_Unbox (hashMap.get (initializerData.CUSTOMERPASSWORD));
            This.userSchema := Java_Unbox (hashMap.get (initializerData.CUSTOMERSCHEMA));
            This.userServer := Java_Unbox (hashMap.get (initializerData.CUSTOMERSERVER));
            This.userPort := Java_Unbox (hashMap.get (initializerData.CUSTOMERPORT));
            This.historyJdbcDriver := Java_Unbox (hashMap.get (initializerData.HISTORYJDBCDRIVER));
            This.historyName := Java_Unbox (hashMap.get (initializerData.HISTORYNAME));
            This.historyUserName := Java_Unbox (hashMap.get (initializerData.HISTORYUSERNAME));
            This.historyPassword := Java_Unbox (hashMap.get (initializerData.HISTORYPASSWORD));
            This.historySchema := Java_Unbox (hashMap.get (initializerData.HISTORYSCHEMA));
            This.historyServer := Java_Unbox (hashMap.get (initializerData.HISTORYSERVER));
            This.historyPort := Java_Unbox (hashMap.get (initializerData.HISTORYPORT));
            This.logJdbcDriver := Java_Unbox (hashMap.get (initializerData.LOGJDBCDRIVER));
            This.logName := Java_Unbox (hashMap.get (initializerData.LOGNAME));
            This.logUserName := Java_Unbox (hashMap.get (initializerData.LOGUSERNAME));
            This.logPassword := Java_Unbox (hashMap.get (initializerData.LOGPASSWORD));
            This.logSchema := Java_Unbox (hashMap.get (initializerData.LOGSCHEMA));
            This.logServer := Java_Unbox (hashMap.get (initializerData.LOGSERVER));
            This.logPort := Java_Unbox (hashMap.get (initializerData.LOGPORT));
            This.inventoryJdbcDriver := Java_Unbox (hashMap.get (initializerData.INVENTORYJDBCDRIVER));
            This.inventoryName := Java_Unbox (hashMap.get (initializerData.INVENTORYNAME));
            This.inventoryUserName := Java_Unbox (hashMap.get (initializerData.INVENTORYUSERNAME));
            This.inventoryPassword := Java_Unbox (hashMap.get (initializerData.INVENTORYPASSWORD));
            This.inventorySchema := Java_Unbox (hashMap.get (initializerData.INVENTORYSCHEMA));
            This.inventoryServer := Java_Unbox (hashMap.get (initializerData.INVENTORYSERVER));
            This.inventoryPort := Java_Unbox (hashMap.get (initializerData.INVENTORYPORT));
            This.staticPagesJdbcDriver := Java_Unbox (hashMap.get (initializerData.STATICPAGESJDBCDRIVER));
            This.staticPagesName := Java_Unbox (hashMap.get (initializerData.STATICPAGESNAME));
            This.staticPagesUserName := Java_Unbox (hashMap.get (initializerData.STATICPAGESUSERNAME));
            This.staticPagesPassword := Java_Unbox (hashMap.get (initializerData.STATICPAGESPASSWORD));
            This.staticPagesSchema := Java_Unbox (hashMap.get (initializerData.STATICPAGESSCHEMA));
            This.staticPagesServer := Java_Unbox (hashMap.get (initializerData.STATICPAGESSERVER));
            This.staticPagesPort := Java_Unbox (hashMap.get (initializerData.STATICPAGESPORT));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Unable to get form data"), Initializer_Access'(This'Unchecked_Access), To_Unbounded_String ("getFormData()"), e);
                end;
        end;
   end getFormData;

   function isJdbcDriverValid (This : in out Initializer; jdbcDriverClassPathString : Unbounded_String) return Boolean is
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, Initializer_Access'(This'Unchecked_Access), commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isJdbcDriverValid;

   function isValid (This : in out Initializer) return Boolean is
      isValid : Boolean;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        isValid := True;
        if not (Initializer'Class (This).isJdbcDriverValid (This.userJdbcDriver)) then
            isValid := False;
        end if;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (This.userName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.userUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.userPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.historyJdbcDriver)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.historyName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.historyUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.historyPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.logJdbcDriver)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.logName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.logUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.logPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.inventoryJdbcDriver)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.inventoryName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.inventoryUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.inventoryPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.staticPagesJdbcDriver)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.staticPagesName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidRequired (This.staticPagesUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.staticPagesPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            isValid := False;
        end if;
        return isValid;
   end isValid;

   function getJdbcDriverValidationInfo (This : in out Initializer; jdbcDriver : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("The JDBC driver ("));
        stringBuffer.append (jdbcDriver);
        stringBuffer.append (To_Unbounded_String (") you have provided is not valid.<br/>"));
        return stringBuffer.toString;
   end getJdbcDriverValidationInfo;

   function getJdbcDriverSolutionInfo (This : in out Initializer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>"));
        stringBuffer.append (To_Unbounded_String ("1. A JDBC driver you specified is not in your classpath.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>"));
        stringBuffer.append (To_Unbounded_String ("2. The JDBC driver you specified does not exit.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution: Get a JDBC driver. <br/>"));
        stringBuffer.append (To_Unbounded_String ("3. The JDBC driver you specified is not valid.<br/>"));
        stringBuffer.append (To_Unbounded_String ("Solution: Use a valid JDBC driver.<p/>"));
        return stringBuffer.toString;
   end getJdbcDriverSolutionInfo;

   function getInvalidInfo (This : in out Initializer) return Unbounded_String is
      isJdbcDriversValid : Boolean;
      stringBuffer : StringMaker_Access;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        isJdbcDriversValid := True;
        stringBuffer := StringMaker_Package.Create;
        if not (Initializer'Class (This).isJdbcDriverValid (This.userJdbcDriver)) then
            isJdbcDriversValid := False;
            stringBuffer.append (Initializer'Class (This).getJdbcDriverValidationInfo (This.userJdbcDriver));
        end if;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (This.userName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            stringBuffer.append (To_Unbounded_String ("User db name should be < ") & Java_Image (Initializer_Package.MAXDB) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.userUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("User db username should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.userPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("User DB password should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MINPASSWORD) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.historyJdbcDriver)) then
            isJdbcDriversValid := False;
            stringBuffer.append (Initializer'Class (This).getJdbcDriverValidationInfo (This.historyJdbcDriver));
        end if;
        if not (stringValidationUtil.isValidRequired (This.historyName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            stringBuffer.append (To_Unbounded_String ("History db should be < ") & Java_Image (Initializer_Package.MAXDB) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.historyUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("History db username should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.historyPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("History db password should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MINPASSWORD) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.logJdbcDriver)) then
            isJdbcDriversValid := False;
            stringBuffer.append (Initializer'Class (This).getJdbcDriverValidationInfo (This.logJdbcDriver));
        end if;
        if not (stringValidationUtil.isValidRequired (This.logName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            stringBuffer.append (To_Unbounded_String ("Log db should be < ") & Java_Image (Initializer_Package.MAXDB) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.logUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Log db username should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.logPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Log db password should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MINPASSWORD) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.inventoryJdbcDriver)) then
            isJdbcDriversValid := False;
            stringBuffer.append (Initializer'Class (This).getJdbcDriverValidationInfo (This.inventoryJdbcDriver));
        end if;
        if not (stringValidationUtil.isValidRequired (This.inventoryName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            stringBuffer.append (To_Unbounded_String ("Inventory db should be < ") & Java_Image (Initializer_Package.MAXDB) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.inventoryUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Inventory db username should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.inventoryPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Inventory DB password should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MINPASSWORD) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (Initializer'Class (This).isJdbcDriverValid (This.staticPagesJdbcDriver)) then
            isJdbcDriversValid := False;
            stringBuffer.append (Initializer'Class (This).getJdbcDriverValidationInfo (This.staticPagesJdbcDriver));
        end if;
        if not (stringValidationUtil.isValidRequired (This.staticPagesName, Initializer_Package.MIN, Initializer_Package.MAXDB)) then
            stringBuffer.append (To_Unbounded_String ("Static Pages db should be < ") & Java_Image (Initializer_Package.MAXDB) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.staticPagesUserName, Initializer_Package.MIN, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Static Pages db username should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MIN) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (stringValidationUtil.isValidNotRequired (This.staticPagesPassword, Initializer_Package.MINPASSWORD, Initializer_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Static Pages DB password should be < ") & Java_Image (Initializer_Package.MAX) & To_Unbounded_String (" and > ") & Java_Image (Initializer_Package.MINPASSWORD) & To_Unbounded_String (" characters in length.<br />"));
        end if;
        if not (isJdbcDriversValid) then
            stringBuffer.append (Initializer'Class (This).getJdbcDriverSolutionInfo);
        end if;
        return stringBuffer.toString;
   end getInvalidInfo;

   --  throws Exception
   procedure set (This : in out Initializer) is
      userDbInitInfo : UserDbInitInfo_Access;
      historyDbInitInfo : HistoryDbInitInfo_Access;
      logDbInitInfo : LogDbInitInfo_Access;
      staticPagesDbInitInfo : StaticPagesDbInitInfo_Access;
      inventoryDbInitInfo : InventoryDbInitInfo_Access;
   begin
        This.logUtil.putF (To_Unbounded_String ("Creating DB connection files"), Initializer_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
        userDbInitInfo := UserDbInitInfo_Package.Create (False);
        userDbInitInfo.setJdbcDriver (This.userJdbcDriver);
        userDbInitInfo.setName (This.userName);
        userDbInitInfo.setUserName (This.userUserName);
        userDbInitInfo.setPassword (This.userPassword);
        userDbInitInfo.setSchema (This.userSchema);
        userDbInitInfo.setServer (This.userServer);
        userDbInitInfo.setPort (This.userPort);
        userDbInitInfo.setHasRead (True);
        userDbInitInfo.write;
        historyDbInitInfo := HistoryDbInitInfo_Package.Create (False);
        historyDbInitInfo.setJdbcDriver (This.historyJdbcDriver);
        historyDbInitInfo.setName (This.historyName);
        historyDbInitInfo.setUserName (This.historyUserName);
        historyDbInitInfo.setPassword (This.historyPassword);
        historyDbInitInfo.setSchema (This.historySchema);
        historyDbInitInfo.setServer (This.historyServer);
        historyDbInitInfo.setPort (This.historyPort);
        historyDbInitInfo.setHasRead (True);
        historyDbInitInfo.write;
        logDbInitInfo := LogDbInitInfo_Package.Create (False);
        logDbInitInfo.setJdbcDriver (This.logJdbcDriver);
        logDbInitInfo.setName (This.logName);
        logDbInitInfo.setUserName (This.logUserName);
        logDbInitInfo.setPassword (This.logPassword);
        logDbInitInfo.setSchema (This.logSchema);
        logDbInitInfo.setServer (This.logServer);
        logDbInitInfo.setPort (This.logPort);
        logDbInitInfo.setHasRead (True);
        logDbInitInfo.write;
        staticPagesDbInitInfo := StaticPagesDbInitInfo_Package.Create (False);
        staticPagesDbInitInfo.setJdbcDriver (This.staticPagesJdbcDriver);
        staticPagesDbInitInfo.setName (This.staticPagesName);
        staticPagesDbInitInfo.setUserName (This.staticPagesUserName);
        staticPagesDbInitInfo.setPassword (This.staticPagesPassword);
        staticPagesDbInitInfo.setSchema (This.staticPagesSchema);
        staticPagesDbInitInfo.setServer (This.staticPagesServer);
        staticPagesDbInitInfo.setPort (This.staticPagesPort);
        staticPagesDbInitInfo.setHasRead (True);
        staticPagesDbInitInfo.write;
        inventoryDbInitInfo := InventoryDbInitInfo_Package.Create (False);
        inventoryDbInitInfo.setJdbcDriver (This.inventoryJdbcDriver);
        inventoryDbInitInfo.setName (This.inventoryName);
        inventoryDbInitInfo.setUserName (This.inventoryUserName);
        inventoryDbInitInfo.setPassword (This.inventoryPassword);
        inventoryDbInitInfo.setSchema (This.inventorySchema);
        inventoryDbInitInfo.setServer (This.inventoryServer);
        inventoryDbInitInfo.setPort (This.inventoryPort);
        inventoryDbInitInfo.setHasRead (True);
        inventoryDbInitInfo.write;
        This.logUtil.putF (To_Unbounded_String ("Created DB connection files"), Initializer_Access'(This'Unchecked_Access), To_Unbounded_String ("set()"));
   end set;

   procedure isJdbcDriverValid (This : in out Initializer; jdbcDriverClassPathString : Unbounded_String) is
      Java_Result : constant Boolean := Initializer'Class (This).isJdbcDriverValid (jdbcDriverClassPathString);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isJdbcDriverValid;

   procedure getJdbcDriverValidationInfo (This : in out Initializer; jdbcDriver : Unbounded_String) is
      Java_Result : constant Unbounded_String := Initializer'Class (This).getJdbcDriverValidationInfo (jdbcDriver);
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

end org.allbinary.business.installer.Initializer_Package;



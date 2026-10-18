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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.user.CreateUserFactory_Package; use org.allbinary.business.user.CreateUserFactory_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.business.user.role.UserRoleFactory_Package; use org.allbinary.business.user.role.UserRoleFactory_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.data.tables.user.UserEntity_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package CreateUserFactory_Package renames Standard.org.allbinary.business.user.CreateUserFactory_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package UserRoleFactory_Package renames Standard.org.allbinary.business.user.role.UserRoleFactory_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out UserEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("user");
      This.COMMAND_SUCCESS_FOR_USER := To_Unbounded_String ("Command Success for user: ");
      This.PASSWORD_LABEL := To_Unbounded_String (" Password: ");
      This.EQUALS := To_Unbounded_String ("==");
      This.COMMAND_SUCCESS_BUT_LOGIN_FAILED := To_Unbounded_String ("Command Success but login failed for user: ");
      This.INVALID_PASSWORD_LABEL := To_Unbounded_String (" Password: " & ASCII.LF & """");
      This.NOT_EQUAL := To_Unbounded_String ("""!=""");
      This.END_QUOTES := CommonSeps_Package.getInstance.QUOTE;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        UserEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return UserEntity_Access is
      This : constant UserEntity_Access := new UserEntity;
   begin
      UserEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out UserEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, UserEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, UserEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   --  throws Exception
   function getAdministrators (This : in out UserEntity) return BasicArrayList_Access is
   begin
        return UserEntity'Class (This).getUsersWithRole (UserRoleFactory_Package.getInstance.ADMINISTRATOR);
   end getAdministrators;

   --  throws Exception
   function getStoreManagers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      keysAndValues : HashMap_Access;
      usersVector : BasicArrayList_Access;
      usersHashMapVector : BasicArrayList_Access;
      size : Integer;
      userHashMap : HashMap_Access;
      i : Integer;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        usersVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        keysAndValues.put (Java_Box (UserRoleData_Package.NAME.toString), Java_Box (UserRoleFactory_Package.getInstance.STOREMANAGER.toString));
        keysAndValues.put (UserData_Package.PERMISSIONS, Java_Box (storeFrontInterface.getName));
        usersHashMapVector := AbSqlBean (This).getRows (keysAndValues);
        size := usersHashMapVector.size;
        for i in 0 .. (size) - 1 loop
            userHashMap := HashMap_Access (usersHashMapVector.get (i));
            if (userHashMap) /= (null) then
                usersVector.add (Java_Object_Access (User_Package.Create (userHashMap)));
            end if;
        end loop;
        return usersVector;
   end getStoreManagers;

   --  throws Exception
   function getCustomers (This : in out UserEntity) return BasicArrayList_Access is
   begin
        return UserEntity'Class (This).getUsersWithRole (UserRoleFactory_Package.getInstance.CUSTOMER);
   end getCustomers;

   --  throws Exception
   function getUsersWithRole (This : in out UserEntity; userRole_Param : access UserRole_Package.UserRole'Class) return BasicArrayList_Access is
      userRole : constant UserRole_Access := UserRole_Access (userRole_Param);
      keysAndValues : HashMap_Access;
      usersVector : BasicArrayList_Access;
      usersHashMapVector : BasicArrayList_Access;
      size : Integer;
      userHashMap : HashMap_Access;
      index : Integer;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        usersVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        keysAndValues.put (Java_Box (UserRoleData_Package.NAME.toString), Java_Box (userRole.toString));
        usersHashMapVector := AbSqlBean (This).getRows (keysAndValues);
        size := usersHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            userHashMap := HashMap_Access (usersHashMapVector.get (index));
            if (userHashMap) /= (null) then
                usersVector.add (Java_Object_Access (User_Package.Create (userHashMap)));
            end if;
        end loop;
        return usersVector;
   end getUsersWithRole;

   --  throws Exception
   function getUsers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      keysAndValues : HashMap_Access;
      usersVector : BasicArrayList_Access;
      usersHashMapVector : BasicArrayList_Access;
      size : Integer;
      userHashMap : HashMap_Access;
      index : Integer;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        usersVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeFrontInterface.getName));
        usersHashMapVector := AbSqlBean (This).getRows (keysAndValues);
        size := usersHashMapVector.size;
        for index in 0 .. (size) - 1 loop
            userHashMap := HashMap_Access (usersHashMapVector.get (index));
            if (userHashMap) /= (null) then
                usersVector.add (Java_Object_Access (User_Package.Create (userHashMap)));
            end if;
        end loop;
        return usersVector;
   end getUsers;

   --  throws Exception
   function getUser (This : in out UserEntity; userName : Unbounded_String) return UserInterface_Access is
      row : HashMap_Access;
      userHashMap : HashMap_Access;
   begin
        row := StdUtil_Package.getInstance.createHashMap;
        row.put (UserData_Package.USERNAME, Java_Box (userName));
        userHashMap := AbSqlBean (This).getRow (row);
        if (userHashMap) /= (null) then
            return CreateUserFactory_Package.getInstance (userHashMap);
        else
            return null;
        end if;
   end getUser;

   procedure deleteWhere (This : in out UserEntity; key : Unbounded_String; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (key, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, UserEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("deleteWhere"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, UserEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("deleteWhere"), e);
            end if;
                end;
        end;
   end deleteWhere;

   function login (This : in out UserEntity; userName : Unbounded_String; password : Unbounded_String) return Unbounded_String is
      isUserNameAndPasswordCorrect : Integer;
      result : Unbounded_String;
      encryption : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        begin
            isUserNameAndPasswordCorrect := 0;
            result := AbSqlBean (This).getField (UserData_Package.USERNAME, userName, UserData_Package.PASSWORD);
            encryption := AbSqlBean (This).getField (UserData_Package.USERNAME, userName, EntryData_Package.getInstance.ENCRYPTION);
            if ((encryption) /= (Null_Unbounded_String)) and then ((Java_Compare_To (encryption, This.stringUtil.EMPTY_STRING)) /= (0)) then
                isUserNameAndPasswordCorrect := Java_Compare_To (result, SuperCrypt_Package.Create (encryption.intValue).encrypt (password));
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    This.logUtil.putF (To_Unbounded_String ("Command Success but login failed for user: ") & userName & To_Unbounded_String (" because user did not exist"), UserEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("login"));
                end if;
                return GLOBALS2_Package.LOGINFAILED;
            end if;
            if (isUserNameAndPasswordCorrect) = (0) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (This.COMMAND_SUCCESS_FOR_USER);
                    stringBuffer.append (userName);
                    stringBuffer.append (This.PASSWORD_LABEL);
                    stringBuffer.append (password);
                    stringBuffer.append (This.EQUALS);
                    stringBuffer.append (result);
                    This.logUtil.putF (stringBuffer.toString, UserEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("login"));
                end if;
                return GLOBALS2_Package.LOGINSUCCESS;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (This.COMMAND_SUCCESS_BUT_LOGIN_FAILED);
                    stringBuffer.append (userName);
                    stringBuffer.append (This.INVALID_PASSWORD_LABEL);
                    stringBuffer.append (SuperCrypt_Package.Create (encryption.intValue).encrypt (password));
                    stringBuffer.append (This.NOT_EQUAL);
                    stringBuffer.append (result);
                    stringBuffer.append (This.END_QUOTES);
                    This.logUtil.putF (stringBuffer.toString, UserEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("login"));
                end if;
                return GLOBALS2_Package.LOGINFAILED;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, UserEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("login"), e);
            end if;
            return To_Unbounded_String ("Error");
                end;
        end;
   end login;

   procedure update (This : in out UserEntity; userName : Unbounded_String; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (UserData_Package.USERNAME, userName, updatedValues);
   end update;

   function dropTables (This : in out UserEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTables;

   function createTableStatement (This : in out UserEntity) return Unbounded_String is
      entryData : EntryData_Access;
      stringBuffer : StringMaker_Access;
   begin
        entryData := EntryData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (UserData_Package.USERNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (UserData_Package.PREFIXNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.FIRSTNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.LASTNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.MIDDLENAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.SUFFIXNAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.COMPANY).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.POSITIONATCOMPANY).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.MAINEMAIL).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (UserData_Package.SECONDARYEMAIL).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.HOMEPHONE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.CELLPHONE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.WORKPHONE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.OTHERCONTACT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.ELECTRONICDEVICE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.FAX).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserRoleData_Package.NAME.toString).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (UserData_Package.CONFIGURATION).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (UserData_Package.PERMISSIONS).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (entryData.ENCRYPTION).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (UserData_Package.SECRET).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (UserData_Package.PASSWORD).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (entryData.ENABLE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN).append (entryData.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (UserData_Package.USERNAME).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out UserEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (UserEntity'Class (This).createTableStatement);
   end createTable;

   procedure getStoreManagers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant BasicArrayList_Access := UserEntity'Class (This).getStoreManagers (storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreManagers;

   procedure getUsersWithRole (This : in out UserEntity; userRole_Param : access UserRole_Package.UserRole'Class) is
      Java_Result : constant BasicArrayList_Access := UserEntity'Class (This).getUsersWithRole (userRole_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsersWithRole;

   procedure getUsers (This : in out UserEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant BasicArrayList_Access := UserEntity'Class (This).getUsers (storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsers;

   procedure getUser (This : in out UserEntity; userName : Unbounded_String) is
      Java_Result : constant UserInterface_Access := UserEntity'Class (This).getUser (userName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUser;

   procedure login (This : in out UserEntity; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Unbounded_String := UserEntity'Class (This).login (userName, password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end login;

end org.allbinary.data.tables.user.UserEntity_Package;



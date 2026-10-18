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


package body org.allbinary.business.init.db.DbConnectionInfo_Package is

   procedure Initialize_Fields (This : in out DbConnectionInfo'Class) is
   begin
      null;
      This.jdbcDriver := Null_Unbounded_String;
      This.name := Null_Unbounded_String;
      This.userName := Null_Unbounded_String;
      This.password := Null_Unbounded_String;
      This.schema := Null_Unbounded_String;
      This.server := Null_Unbounded_String;
      This.port := Null_Unbounded_String;
      This.url := Null_Unbounded_String;
      This.host := Null_Unbounded_String;
      This.SCHEMA_SEP := To_Unbounded_String ("://");
      This.USER_NAME_KEY := To_Unbounded_String ("?user=");
      This.PASSWORD_KEY := To_Unbounded_String ("&password=");
   end Initialize_Fields;


   procedure Initialize (This : in out DbConnectionInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DbConnectionInfo_Access is
      This : constant DbConnectionInfo_Access := new DbConnectionInfo;
   begin
      DbConnectionInfo_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateUrl (This : in out DbConnectionInfo) is
      stringBuffer : StringMaker_Access;
   begin
        DbConnectionInfo'Class (This).updateHost;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (DbConnectionInfo'Class (This).getHost);
        stringBuffer.append (DbConnectionInfo'Class (This).getName);
        stringBuffer.append (DbConnectionInfo'Class (This).getUserNameKey);
        stringBuffer.append (DbConnectionInfo'Class (This).getUserName);
        stringBuffer.append (DbConnectionInfo'Class (This).getPasswordKey);
        stringBuffer.append (DbConnectionInfo'Class (This).getPassword);
        This.url := stringBuffer.toString;
   end updateUrl;

   function getUrl (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.url;
   end getUrl;

   function getJdbcDriver (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.jdbcDriver;
   end getJdbcDriver;

   function getName (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getUserName (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function getPassword (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.password;
   end getPassword;

   procedure updateHost (This : in out DbConnectionInfo) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (DbConnectionInfo'Class (This).getSchema);
        stringBuffer.append (This.SCHEMA_SEP);
        stringBuffer.append (DbConnectionInfo'Class (This).getServer);
        if ((DbConnectionInfo'Class (This).getPort) /= (null)) and then ((DbConnectionInfo'Class (This).getPort.length) > (1)) then
            stringBuffer.append (CommonSeps_Package.getInstance.COLON);
            stringBuffer.append (DbConnectionInfo'Class (This).getPort);
        end if;
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        This.host := stringBuffer.toString;
   end updateHost;

   function getHost (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.host;
   end getHost;

   function getSchema (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.schema;
   end getSchema;

   function getServer (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.server;
   end getServer;

   function getPort (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.port;
   end getPort;

   procedure setJdbcDriver (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.jdbcDriver := value;
   end setJdbcDriver;

   procedure setName (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.name := value;
        DbConnectionInfo'Class (This).updateUrl;
   end setName;

   procedure setUserName (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.userName := value;
        DbConnectionInfo'Class (This).updateUrl;
   end setUserName;

   procedure setPassword (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.password := value;
        DbConnectionInfo'Class (This).updateUrl;
   end setPassword;

   procedure setSchema (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.schema := value;
        DbConnectionInfo'Class (This).updateUrl;
   end setSchema;

   procedure setServer (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.server := value;
        DbConnectionInfo'Class (This).updateUrl;
   end setServer;

   procedure setPort (This : in out DbConnectionInfo; value : Unbounded_String) is
   begin
        This.port := value;
        DbConnectionInfo'Class (This).updateUrl;
   end setPort;

   function getUserNameKey (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.USER_NAME_KEY;
   end getUserNameKey;

   function getPasswordKey (This : in out DbConnectionInfo) return Unbounded_String is
   begin
        return This.PASSWORD_KEY;
   end getPasswordKey;

end org.allbinary.business.init.db.DbConnectionInfo_Package;



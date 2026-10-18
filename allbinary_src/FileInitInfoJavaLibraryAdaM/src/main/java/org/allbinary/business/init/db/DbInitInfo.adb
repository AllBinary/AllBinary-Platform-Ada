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


with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;

package body org.allbinary.business.init.db.DbInitInfo_Package is

   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbDataInputStream_Package renames Standard.org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileInputStream_Package renames Standard.org.allbinary.logic.io.AbFileInputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package DatabaseEncoder_Package renames Standard.org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
   package WeakCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
   procedure Initialize_Fields (This : in out DbInitInfo'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.directory := Directory_Package.getInstance;
      This.httpData := HttpData_Package.getInstance;
      This.GET_URL := To_Unbounded_String ("getUrl");
      This.PACKAGE_Id := FREEBLISKET_PATH_GLOBALS_Package.getInstance.DBINITPATH;
      
      This.hasRead := False;
   end Initialize_Fields;


   procedure Initialize (This : in out DbInitInfo'Class; initFileName : Unbounded_String; read : Boolean) is
   begin
        DbConnectionInfo_Package.Initialize (This);
        Initialize_Fields (This);
        This.initFileName := initFileName;
        if read then
            DbInitInfo'Class (This).updateIfNeeded;
        else
            DbInitInfo'Class (This).setHasRead (True);
        end if;
   end Initialize;

   function Create (initFileName : Unbounded_String; read : Boolean) return DbInitInfo_Access is
      This : constant DbInitInfo_Access := new DbInitInfo;
   begin
      DbInitInfo_Package.Initialize (This.all, initFileName, read);
      return This;
   end Create;

   function getUrl (This : in out DbInitInfo) return Unbounded_String is
      url : Unbounded_String;
   begin
        url := DbConnectionInfo (This).getUrl;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
            PreLogUtil_Package.put (Java_Image (This.httpData.URL_LABEL) & url, DbInitInfo_Access'(This'Unchecked_Access), This.GET_URL);
        end if;
        return url;
   end getUrl;

   --  throws Exception
   procedure write (This : in out DbInitInfo) is
      PATH : AbPath_Access;
      FILEABPATH : AbPath_Access;
      newFile : AbFile_Access;
      dataOutputStream : AbDataOutputStream_Access;
      cryptedJdbcDriver : Short_Short_Integer_Array_Access;
      cryptedName : Short_Short_Integer_Array_Access;
      cryptedUserName : Short_Short_Integer_Array_Access;
      cryptedPassword : Short_Short_Integer_Array_Access;
      cryptedSchema : Short_Short_Integer_Array_Access;
      cryptedServer : Short_Short_Integer_Array_Access;
      cryptedPort : Short_Short_Integer_Array_Access;
   begin
        PATH := AbPath_Package.Create (Java_Image (URLGLOBALS_Package.getWebappPath) & This.PACKAGE_Id, StringUtil_Package.getInstance.EMPTY_STRING);
        This.directory.create (PATH);
        FILEABPATH := AbPath_Package.Create (Java_Image (URLGLOBALS_Package.getWebappPath) & This.PACKAGE_Id, This.initFileName);
        begin
            newFile := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
            newFile.createNewFile;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (newFile);
            begin
                cryptedJdbcDriver := WeakCrypt_Package.Create (1).encrypt (DbInitInfo'Class (This).getJdbcDriver).getBytes;
                cryptedName := WeakCrypt_Package.Create (2).encrypt (DbInitInfo'Class (This).getName).getBytes;
                cryptedUserName := WeakCrypt_Package.Create (3).encrypt (DbInitInfo'Class (This).getUserName).getBytes;
                cryptedPassword := WeakCrypt_Package.Create (4).encrypt (DbInitInfo'Class (This).getPassword).getBytes;
                cryptedSchema := WeakCrypt_Package.Create (5).encrypt (DbInitInfo'Class (This).getSchema).getBytes;
                cryptedServer := WeakCrypt_Package.Create (6).encrypt (DbInitInfo'Class (This).getServer).getBytes;
                cryptedPort := WeakCrypt_Package.Create (7).encrypt (DbInitInfo'Class (This).getPort).getBytes;
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedJdbcDriver));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedName));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedUserName));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedPassword));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedSchema));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedServer));
                dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedPort));
                This.hasRead := False;
            end;
            --  finally
            begin
                StreamUtil_Package.getInstance.close (dataOutputStream);
            end;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("Failed Write: ") & FILEABPATH.toString, DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("write"), e);
            end if;
                end;
        end;
   end write;

   --  throws Exception
   procedure load (This : in out DbInitInfo) is
      FILEABPATH : AbPath_Access;
      file : AbFile_Access;
      iFile : AbFileInputStream_Access;
      iData : AbDataInputStream_Access;
      decryptedJdbcDriver : Unbounded_String;
      decryptedName : Unbounded_String;
      decryptedUserName : Unbounded_String;
      decryptedPassword : Unbounded_String;
      decryptedSchema : Unbounded_String;
      decryptedServer : Unbounded_String;
      decryptedPort : Unbounded_String;
      stringUtil : StringUtil_Access;
   begin
        FILEABPATH := AbPath_Package.Create (Java_Image (URLGLOBALS_Package.getWebappPath) & This.PACKAGE_Id, This.initFileName);
        begin
            file := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
            if file.isFile then
                iFile := AbFileInputStream_Package.Create (file);
                iData := AbDataInputStream_Package.Create (iFile);
                begin
                    decryptedJdbcDriver := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    decryptedName := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    decryptedUserName := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    decryptedPassword := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    decryptedSchema := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    decryptedServer := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    decryptedPort := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                    DbInitInfo'Class (This).setJdbcDriver (WeakCrypt_Package.Create (1).decrypt (decryptedJdbcDriver));
                    DbInitInfo'Class (This).setName (WeakCrypt_Package.Create (2).decrypt (decryptedName));
                    DbInitInfo'Class (This).setUserName (WeakCrypt_Package.Create (3).decrypt (decryptedUserName));
                    DbInitInfo'Class (This).setPassword (WeakCrypt_Package.Create (4).decrypt (decryptedPassword));
                    DbInitInfo'Class (This).setSchema (WeakCrypt_Package.Create (5).decrypt (decryptedSchema));
                    DbInitInfo'Class (This).setServer (WeakCrypt_Package.Create (6).decrypt (decryptedServer));
                    DbInitInfo'Class (This).setPort (WeakCrypt_Package.Create (7).decrypt (decryptedPort));
                    stringUtil := StringUtil_Package.getInstance;
                end;
                --  finally
                begin
                    StreamUtil_Package.getInstance.close (iData);
                end;
            else
                This.hasRead := False;
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Not a File - Failed Loading: ") & FILEABPATH.toString, DbInitInfo_Access'(This'Unchecked_Access), This.commonStrings.LOAD);
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (To_Unbounded_String ("Failed Loading: ") & FILEABPATH.toString, DbInitInfo_Access'(This'Unchecked_Access), This.commonStrings.LOAD, e);
            end if;
                end;
        end;
   end load;

   procedure setHasRead (This : in out DbInitInfo; value : Boolean) is
   begin
        This.hasRead := value;
   end setHasRead;

   procedure updateIfNeeded (This : in out DbInitInfo) is
   begin
        begin
            if not (This.hasRead) then
                This.hasRead := True;
                DbInitInfo'Class (This).load;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("updateIfNeeded"), e);
            end if;
                end;
        end;
   end updateIfNeeded;

   function getName (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
            PreLogUtil_Package.put (To_Unbounded_String ("Name: ") & DbConnectionInfo (This).getName, DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getName"));
        end if;
        return DbConnectionInfo (This).getName;
   end getName;

   function getUserName (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
            PreLogUtil_Package.put (To_Unbounded_String ("Name: ") & Java_Image (DbConnectionInfo (This).getUserName), DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getUserName"));
        end if;
        return DbConnectionInfo (This).getUserName;
   end getUserName;

   function getPassword (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo (This).getPassword;
   end getPassword;

   function getSchema (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo (This).getSchema;
   end getSchema;

   function getServer (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo (This).getServer;
   end getServer;

   function getPort (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo (This).getPort;
   end getPort;

end org.allbinary.business.init.db.DbInitInfo_Package;



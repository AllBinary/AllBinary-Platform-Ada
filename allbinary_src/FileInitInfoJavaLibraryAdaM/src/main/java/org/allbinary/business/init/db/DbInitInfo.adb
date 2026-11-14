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
with org.allbinary.logic.communication.http.HttpData_Package; use org.allbinary.logic.communication.http.HttpData_Package;
with org.allbinary.logic.communication.http.HttpData_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.logic.system.security.crypt.jcehelper.BaseSecretComposite_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

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
   subtype HttpData_Access is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access;
   function "=" (Left, Right : HttpData_Access) return Boolean renames org.allbinary.logic.communication.http.HttpData_Package_References."=";
   subtype HttpData_Access_Array is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array;
   function "=" (Left, Right : HttpData_Access_Array) return Boolean renames org.allbinary.logic.communication.http.HttpData_Package_References."=";
   subtype HttpData_Access_Array_Access is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array_Access;
   function "=" (Left, Right : HttpData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.HttpData_Package_References."=";
   subtype HttpData_Access_Array_Access_Array is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array_Access_Array;
   function "=" (Left, Right : HttpData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.HttpData_Package_References."=";
   subtype HttpData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HttpData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.HttpData_Package_References."=";
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   function "=" (Left, Right : Directory_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   function "=" (Left, Right : Directory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   function "=" (Left, Right : Directory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
        url := DbConnectionInfo_Package.DbConnectionInfo (This).getUrl;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
            PreLogUtil_Package.put (This.httpData.URL_LABEL & url, DbInitInfo_Access'(This'Unchecked_Access), This.GET_URL);
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
            declare Java_Result renames newFile.createNewFile; pragma Unreferenced (Java_Result); begin null; end;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (newFile);
            begin
                cryptedJdbcDriver := Java_Get_Bytes (WeakCrypt_Package.Create (1).encrypt (DbInitInfo'Class (This).getJdbcDriver));
                cryptedName := Java_Get_Bytes (WeakCrypt_Package.Create (2).encrypt (DbInitInfo'Class (This).getName));
                cryptedUserName := Java_Get_Bytes (WeakCrypt_Package.Create (3).encrypt (DbInitInfo'Class (This).getUserName));
                cryptedPassword := Java_Get_Bytes (WeakCrypt_Package.Create (4).encrypt (DbInitInfo'Class (This).getPassword));
                cryptedSchema := Java_Get_Bytes (WeakCrypt_Package.Create (5).encrypt (DbInitInfo'Class (This).getSchema));
                cryptedServer := Java_Get_Bytes (WeakCrypt_Package.Create (6).encrypt (DbInitInfo'Class (This).getServer));
                cryptedPort := Java_Get_Bytes (WeakCrypt_Package.Create (7).encrypt (DbInitInfo'Class (This).getPort));
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
                iFile := AbFileInputStream_Package.createFromAbFile (file);
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
            PreLogUtil_Package.put (To_Unbounded_String ("Name: ") & DbConnectionInfo_Package.DbConnectionInfo (This).getName, DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getName"));
        end if;
        return DbConnectionInfo_Package.DbConnectionInfo (This).getName;
   end getName;

   function getUserName (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
            PreLogUtil_Package.put (To_Unbounded_String ("Name: ") & Java_Image (DbConnectionInfo_Package.DbConnectionInfo (This).getUserName), DbInitInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("getUserName"));
        end if;
        return DbConnectionInfo_Package.DbConnectionInfo (This).getUserName;
   end getUserName;

   function getPassword (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo_Package.DbConnectionInfo (This).getPassword;
   end getPassword;

   function getSchema (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo_Package.DbConnectionInfo (This).getSchema;
   end getSchema;

   function getServer (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo_Package.DbConnectionInfo (This).getServer;
   end getServer;

   function getPort (This : in out DbInitInfo) return Unbounded_String is
   begin
        DbInitInfo'Class (This).updateIfNeeded;
        return DbConnectionInfo_Package.DbConnectionInfo (This).getPort;
   end getPort;

end org.allbinary.business.init.db.DbInitInfo_Package;



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


with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.io.AbDataInputStream_Package; use org.allbinary.logic.io.AbDataInputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package; use org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package; use org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
with org.allbinary.logic.system.security.crypt.WeakCrypt_Package; use org.allbinary.logic.system.security.crypt.WeakCrypt_Package;

package body org.allbinary.business.init.InstallerInfo_Package is

   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package AbDataInputStream_Package renames Standard.org.allbinary.logic.io.AbDataInputStream_Package;
   package AbDataOutputStream_Package renames Standard.org.allbinary.logic.io.AbDataOutputStream_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package DatabaseEncoder_Package renames Standard.org.allbinary.logic.system.security.crypt.DatabaseEncoder_Package;
   package WeakCrypt_Package renames Standard.org.allbinary.logic.system.security.crypt.WeakCrypt_Package;
   procedure Initialize_Fields (This : in out InstallerInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InstallerInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InstallerInfo_Access is
      This : constant InstallerInfo_Access := new InstallerInfo;
   begin
      InstallerInfo_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure write (This : in out InstallerInfo) is
      FILEABPATH : AbPath_Access;
      newFile : AbFile_Access;
      dataOutputStream : AbDataOutputStream_Access;
      cryptedUserName : Short_Short_Integer_Array_Access;
      cryptedPassword : Short_Short_Integer_Array_Access;
   begin
        FILEABPATH := AbPath_Package.Create ((URLGLOBALS_Package.getMainPath) + (InstallerInfo_Package.PACKAGE_Id), InstallerInfo_Package.INITFILENAME);
        begin
            newFile := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
            newFile.createNewFile;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (newFile);
            cryptedUserName := WeakCrypt_Package.Create (1).encrypt (InstallerInfo'Class (This).getUserName).getBytes;
            cryptedPassword := WeakCrypt_Package.Create (2).encrypt (InstallerInfo'Class (This).getPassword).getBytes;
            dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedUserName));
            dataOutputStream.writeUTF (DatabaseEncoder_Package.encode (cryptedPassword));
            InstallerInfo_Package.hasRead := False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADERERROR) then
                This.logUtil.putF (To_Unbounded_String ("Failed"), InstallerInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("write"));
            end if;
            Java_Throw (e);
                end;
        end;
   end write;

   --  throws Exception
   procedure read (This : in out InstallerInfo) is
      FILEABPATH : AbPath_Access;
      file : AbFile_Access;
      iFile : AbFileLocalInputStream_Access;
      iData : AbDataInputStream_Access;
      decryptedUserName : Unbounded_String;
      decryptedPassword : Unbounded_String;
   begin
        FILEABPATH := AbPath_Package.Create ((URLGLOBALS_Package.getMainPath) + (InstallerInfo_Package.PACKAGE_Id), InstallerInfo_Package.INITFILENAME);
        begin
            file := AbFile_Package.createAbFileFromAbPath (FILEABPATH);
            if file.isFile then
                iFile := AbFileLocalInputStream_Package.Create (file);
                iData := AbDataInputStream_Package.Create (iFile);
                decryptedUserName := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                decryptedPassword := Java_New_String (DatabaseEncoder_Package.decode (iData.readUTF));
                InstallerInfo'Class (This).setUserName (WeakCrypt_Package.Create (1).decrypt (decryptedUserName));
                InstallerInfo'Class (This).setPassword (WeakCrypt_Package.Create (2).decrypt (decryptedPassword));
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADER) then
                    This.logUtil.putF (To_Unbounded_String ("Not a File - Failed Loading: ") & FILEABPATH.toString, InstallerInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("read"));
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADERERROR) then
                This.logUtil.putF (To_Unbounded_String ("Failed"), InstallerInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("read"));
            end if;
                end;
        end;
   end read;

   procedure setHasRead (value : Boolean) is
   begin
        InstallerInfo_Package.hasRead := value;
   end setHasRead;

   procedure setUserName (This : in out InstallerInfo; userName : Unbounded_String) is
   begin
        InstallerInfo_Package.userName := userName;
   end setUserName;

   procedure setPassword (This : in out InstallerInfo; password : Unbounded_String) is
   begin
        InstallerInfo_Package.password := password;
   end setPassword;

   --  throws Exception
   procedure updateIfNeeded (This : in out InstallerInfo) is
   begin
        if not (InstallerInfo_Package.hasRead) then
            InstallerInfo_Package.hasRead := True;
            InstallerInfo'Class (This).read;
            if ((InstallerInfo_Package.userName) = (null)) or else ((InstallerInfo_Package.password) = (null)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRELOADER) then
                    This.logUtil.putF (To_Unbounded_String ("Failed"), InstallerInfo_Access'(This'Unchecked_Access), To_Unbounded_String ("updateIfNeeded"));
                end if;
            end if;
        end if;
   end updateIfNeeded;

   --  throws Exception
   function getUserName (This : in out InstallerInfo) return Unbounded_String is
   begin
        InstallerInfo'Class (This).updateIfNeeded;
        return InstallerInfo_Package.userName;
   end getUserName;

   --  throws Exception
   function getPassword (This : in out InstallerInfo) return Unbounded_String is
   begin
        InstallerInfo'Class (This).updateIfNeeded;
        return InstallerInfo_Package.password;
   end getPassword;

   --  throws Exception
   function isValid (This : in out InstallerInfo; userName : Unbounded_String; password : Unbounded_String) return Boolean is
   begin
        InstallerInfo'Class (This).updateIfNeeded;
        if ((((userName) /= (Null_Unbounded_String)) and then ((Java_Compare_To (userName, userName)) = (0))) and then ((password) /= (Null_Unbounded_String))) and then ((Java_Compare_To (password, password)) = (0)) then
            return True;
        end if;
        return False;
   end isValid;

   procedure isValid (This : in out InstallerInfo; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Boolean := InstallerInfo'Class (This).isValid (userName => userName, password => password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   instance := InstallerInfo_Package.Create;
   INITFILENAME := To_Unbounded_String ("installerdata.dat");
   PACKAGE_Id := PATH_GLOBALS_Package.getInstance.INIT_PATH;
   userName := StringUtil_Package.getInstance.EMPTY_STRING;
   password := StringUtil_Package.getInstance.EMPTY_STRING;
   hasRead := False;

end org.allbinary.business.init.InstallerInfo_Package;



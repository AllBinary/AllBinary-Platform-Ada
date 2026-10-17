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


package body org.allbinary.logic.io.file.FileUtil_Package is

   procedure Initialize_Fields (This : in out FileUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.directory := Directory_Package.getInstance;
      This.logConfigTypeFactory := LogConfigTypeFactory_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.streamUtil := StreamUtil_Package.getInstance;
      This.WRITE_LABEL := To_Unbounded_String ("Write file: ");
      This.DATA_LABEL := To_Unbounded_String (" data: ");
      This.WRITE_METHOD := To_Unbounded_String ("write");
   end Initialize_Fields;


   function getInstance return FileUtil_Access is
   begin
        return FileUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FileUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileUtil_Access is
      This : constant FileUtil_Access := new FileUtil;
   begin
      FileUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure write (This : in out FileUtil; inputStream : InputStream_Access; file : AbFile_Access) is
      dataOutputStream : AbDataOutputStream_Access;
   begin
        dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (file);
        This.write (inputStream, dataOutputStream);
   end write;

   --  throws Exception
   procedure write (This : in out FileUtil; inputStream : InputStream_Access; dataOutputStream_Param : AbDataOutputStream_Access) is
      dataOutputStream : AbDataOutputStream_Access := dataOutputStream_Param;
   begin
        begin
            dataOutputStream := AbDataOutputStream_Access (StreamUtil_Package.getInstance.get (inputStream, dataOutputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            dataOutputStream.flush;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (dataOutputStream);
        end;
   end write;

   --  throws Exception
   procedure write (This : in out FileUtil; inputStream : InputStream_Access; dataOutputStream_Param : AbDataOutputStream_Access; buffer : Short_Short_Integer_Array_Access) is
      dataOutputStream : AbDataOutputStream_Access := dataOutputStream_Param;
   begin
        begin
            dataOutputStream := AbDataOutputStream_Access (StreamUtil_Package.getInstance.get (inputStream, dataOutputStream, buffer));
            dataOutputStream.flush;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (dataOutputStream);
        end;
   end write;

   --  throws Exception
   procedure copy (This : in out FileUtil; dataInputStream : AbFileInputStream_Access; dataOutputStream_Param : AbDataOutputStream_Access) is
      dataOutputStream : AbDataOutputStream_Access := dataOutputStream_Param;
   begin
        begin
            dataOutputStream := AbDataOutputStream_Access (StreamUtil_Package.getInstance.get (dataInputStream, dataOutputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0)));
            dataOutputStream.flush;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (dataOutputStream);
            StreamUtil_Package.getInstance.close (dataInputStream);
        end;
   end copy;

   --  throws Exception
   function fixPath (This : in out FileUtil; file : AbFile_Access; path : AbPath_Access; realPath : AbPath_Access; cloud : Unbounded_String) return AbPath_Access is
      beginIndex : Integer;
      endIndex : Integer;
      fixedPathString : Unbounded_String;
      fixedPath : AbPath_Access;
      string_Id : Unbounded_String;
      outPath : AbPath_Access;
   begin
        beginIndex := (file.getPath.indexOf (cloud)) + (Length (cloud));
        endIndex := file.getPath.indexOf (file.getName);
        fixedPathString := Java_Image (realPath.toFileSystemString) & file.getPath.substring (beginIndex, endIndex);
        fixedPath := AbPath_Package.Create (fixedPathString, StringUtil_Package.getInstance.EMPTY_STRING);
        This.directory.create (fixedPath);
        string_Id := fixedPath.toFileSystemString;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
            This.logUtil.putF (string_Id, This'Unchecked_Access, To_Unbounded_String ("fixPath"));
        end if;
        outPath := AbPath_Package.Create (string_Id, file.getName);
        return outPath;
   end fixPath;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file : AbFile_Access; path : AbPath_Access; realPath : AbPath_Access; cloud : Unbounded_String) is
   begin
        This.copyToCloud (file, path, realPath, cloud, False, False);
   end copyToCloud;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file : AbFile_Access; path : AbPath_Access; realPath : AbPath_Access; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean) is
      outPath : AbPath_Access;
      outFile : AbFile_Access;
      stringBuffer : StringMaker_Access;
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStream : AbFileInputStream_Access;
   begin
        begin
            outPath := This.fixPath (file, path, realPath, cloud);
            outFile := AbFile_Package.createAbFileFromAbPath (outPath);
            if not (This.copyPrepare (file, outFile, overwriteNewer, overwriteAll)) then
                return;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Out File: "));
                    stringBuffer.append (outFile.getPath);
                    stringBuffer.append (To_Unbounded_String (" In File: "));
                    stringBuffer.append (file.getPath);
                    stringBuffer.append (To_Unbounded_String (" to cloud."));
                    This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyToCloud"));
                end if;
            end if;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (outFile);
            fileInputStream := AbFileLocalInputStream_Package.Create (file);
            This.copy (fileInputStream, dataOutputStream);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILEERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Error Copying File File: "));
                stringBuffer.append (file.toString);
                stringBuffer.append (To_Unbounded_String (" to cloud."));
                This.logUtil.put (stringBuffer.toString, getInstance, To_Unbounded_String ("copyToCloud"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end copyToCloud;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file : AbFile_Access; outFile : AbFile_Access) is
   begin
        This.copyToCloud (file, outFile, False, False);
   end copyToCloud;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file : AbFile_Access; outFile : AbFile_Access; overwriteNewer : Boolean; overwriteAll : Boolean) is
      stringBuffer : StringMaker_Access;
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStream : AbFileInputStream_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if not (This.copyPrepare (file, outFile, overwriteNewer, overwriteAll)) then
                return;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (To_Unbounded_String ("Out File: "));
                    stringBuffer.append (outFile.getPath);
                    stringBuffer.append (To_Unbounded_String (" In File: "));
                    stringBuffer.append (file.getPath);
                    stringBuffer.append (To_Unbounded_String (" to cloud."));
                    This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyToCloud"));
                end if;
            end if;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (outFile);
            fileInputStream := AbFileLocalInputStream_Package.Create (file);
            This.copy (fileInputStream, dataOutputStream);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILEERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Error Copying File File: "));
                stringBuffer.append (file.toString);
                stringBuffer.append (To_Unbounded_String (" to cloud."));
                This.logUtil.put (stringBuffer.toString, getInstance, To_Unbounded_String ("copyToCloud"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end copyToCloud;

   --  throws Exception
   function copyPrepare (This : in out FileUtil; fromFile : AbFile_Access; toFile : AbFile_Access; overwriteNewer : Boolean; overwriteAll : Boolean) return Boolean is
      stringBuffer : StringMaker_Access;
   begin
        if toFile.exists then
            stringBuffer := StringMaker_Package.Create;
            if overwriteAll then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (To_Unbounded_String ("Overwriting File: "));
                    stringBuffer.append (toFile.getPath);
                    This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyFile"));
                end if;
                toFile.delete;
                toFile.createNewFile;
            elsif ((toFile.lastModified) < (fromFile.lastModified)) and then (overwriteNewer) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (To_Unbounded_String ("Newer by: "));
                    stringBuffer.appendlong (Long_Long_Integer ((fromFile.lastModified) - (toFile.lastModified)));
                    stringBuffer.append (To_Unbounded_String ("ms "));
                    stringBuffer.append (To_Unbounded_String ("Copying File: "));
                    stringBuffer.append (toFile.getPath);
                    This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyFile"));
                end if;
                toFile.delete;
                toFile.createNewFile;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                    stringBuffer.delete (0, stringBuffer.length);
                    stringBuffer.append (To_Unbounded_String ("File Already Exists"));
                    if overwriteNewer then
                        stringBuffer.append (To_Unbounded_String (" And Is Not Older"));
                    else
                        stringBuffer.append (To_Unbounded_String (" And Not A In Overwrite Mode"));
                    end if;
                    stringBuffer.append (CommonLabels_Package.getInstance.COLON_SEP);
                    stringBuffer.append (toFile.getPath);
                    This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyFile"));
                end if;
                return False;
            end if;
        else
            toFile.createNewFile;
        end if;
        return True;
   end copyPrepare;

   --  throws Exception
   procedure copyFile (This : in out FileUtil; fromFile : AbFile_Access; toFile : AbFile_Access) is
   begin
        This.copyFile (fromFile, toFile, False, False);
   end copyFile;

   --  throws Exception
   procedure copyFile (This : in out FileUtil; fromFile : AbFile_Access; toFile : AbFile_Access; overwriteNewer : Boolean; overwriteAll : Boolean) is
      stringBuffer : StringMaker_Access;
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStream : AbFileInputStream_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Copying "));
                stringBuffer.appendlong (Long_Long_Integer (fromFile.length));
                stringBuffer.append (To_Unbounded_String (" bytes from File: "));
                stringBuffer.append (fromFile.getPath);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (toFile.getPath);
                This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyFile"));
            end if;
            if not (This.copyPrepare (fromFile, toFile, overwriteNewer, overwriteAll)) then
                return;
            end if;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (toFile);
            fileInputStream := AbFileInputStream_Package.Create (fromFile);
            This.copy (fileInputStream, dataOutputStream);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILEERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Error Copying File fromFile: "));
                stringBuffer.append (fromFile.toString);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (toFile.toString);
                This.logUtil.put (stringBuffer.toString, getInstance, To_Unbounded_String ("copyFile"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end copyFile;

   function getNewDirectory (fromFile : AbFile_Access) return Unbounded_String is
      newDirectory : Unbounded_String;
      separatorChar : Unbounded_String;
      lastIndex : Integer;
   begin
        newDirectory := fromFile.getPath;
        separatorChar := FilePathData_Package.getInstance.PATH_START;
        if AbIOSystem_Package.getInstance.isType (To_Unbounded_String ("com.vobject.appengine.java.io")) then
            separatorChar := AbPathData_Package.getInstance.SEPARATOR;
        end if;
        lastIndex := newDirectory.lastIndexOf (separatorChar);
        if (lastIndex) >= (Length (newDirectory)) then
            newDirectory := Unbounded_Slice (newDirectory, (0) + 1, (Length (newDirectory)) - (1));
            lastIndex := newDirectory.lastIndexOf (separatorChar);
        end if;
        return Unbounded_Slice (newDirectory, (lastIndex) + 1, Length (newDirectory));
   end getNewDirectory;

   --  throws Exception
   procedure copyDirectoryPortion (This : in out FileUtil; fromDirectoryAbPath : AbPath_Access; toDirectoryAbPath : AbPath_Access; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) is
      file : AbFile_Access;
      fileList : BasicArrayList_Access;
      size : Integer;
      stringBuffer : StringMaker_Access;
      portion : Integer;
      start : Integer;
      end_Id : Integer;
      nextFile : AbFile_Access;
      path : Unbounded_String;
      beginIndex : Integer;
      newPath : Unbounded_String;
      toFile : AbFile_Access;
      index : Integer;
   begin
        file := AbFile_Package.createAbFileFromAbPath (fromDirectoryAbPath);
        if not (file.isDirectory) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not a directory: ") & Java_Image (file.getPath)));
        end if;
        fileList := This.directory.search (file, True);
        size := fileList.size;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Searched: "));
        stringBuffer.append (file.getPath);
        stringBuffer.append (To_Unbounded_String (" Total: "));
        stringBuffer.appendint (size);
        portion := ((size) / (total)) + (1);
        start := (portion) * (current);
        end_Id := (start) + (portion);
        if (end_Id) > (size) then
            end_Id := size;
        end if;
        stringBuffer.append (To_Unbounded_String (" Section: "));
        stringBuffer.appendint (start);
        stringBuffer.append (To_Unbounded_String (" - "));
        stringBuffer.appendint (end_Id);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
            This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copySomeFilesToDirectory()"));
        end if;
        nextFile := null;
        for index in start .. (end_Id) - 1 loop
            nextFile := AbFile_Access (fileList.get (index));
            if nextFile.isDirectory then
                null;
            else
                path := AbPath_Package.Create (nextFile.getPath, StringUtil_Package.getInstance.EMPTY_STRING).getPath;
                beginIndex := fromDirectoryAbPath.getPath.length;
                if (path.indexOf (URLGLOBALS.getWebappPath)) < (0) then
                    beginIndex := (beginIndex) - (AbPath_Package.Create (URLGLOBALS.getWebappPath, StringUtil_Package.getInstance.EMPTY_STRING).getPath.length);
                end if;
                newPath := Java_Image (toDirectoryAbPath.toFileSystemString) & path.substring (beginIndex);
                toFile := AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (newPath, StringUtil_Package.getInstance.EMPTY_STRING));
                This.copyFile (nextFile, toFile, overwriteNewer, overwriteAll);
            end if;
        end loop;
   end copyDirectoryPortion;

   --  throws Exception
   procedure copyDirectory (This : in out FileUtil; fromFile : AbFile_Access; to : AbFile_Access) is
      stringBuffer : StringMaker_Access;
      newDirectory : Unbounded_String;
      newDirectoryAbPath : AbPath_Access;
      fileArray : AbFile_Access_Array_Access;
      size : Integer;
      file : AbFile_Access;
      index : Integer;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Copying Directory from: "));
                stringBuffer.append (fromFile.getPath);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (to.getPath);
                This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyDirectory"));
            end if;
            newDirectory := FileUtil_Package.getNewDirectory (fromFile);
            newDirectoryAbPath := AbPath_Package.Create (Java_Image ((to.getPath) + (AbPathData_Package.getInstance.SEPARATOR)) & newDirectory, StringUtil_Package.getInstance.EMPTY_STRING);
            if not (This.directory.create (newDirectoryAbPath)) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed to create directory: ") & Java_Image (newDirectoryAbPath)));
            end if;
            fileArray := FileWrapperUtil_Package.wrapFiles (fromFile.listFiles);
            size := fileArray'Length;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Copying "));
                stringBuffer.appendint (size);
                stringBuffer.append (To_Unbounded_String (" files from: "));
                stringBuffer.append (fromFile.getPath);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (to.getPath);
                This.logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("copyDirectory"));
            end if;
            file := null;
            for index in 0 .. (size) - 1 loop
                file := fileArray (index);
                if file.isFile then
                    This.copyFile (file, AbFile_Package.createAbFilePathAndName (newDirectoryAbPath.toString, file.getName));
                elsif file.isDirectory then
                    This.copyDirectory (file, AbFile_Package.createAbFileFromAbPath (newDirectoryAbPath));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("File Copy Error")));
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILEERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Error Copying Directory fromFile: "));
                stringBuffer.append (fromFile.toString);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (to.toString);
                This.logUtil.put (stringBuffer.toString, getInstance, To_Unbounded_String ("copyDirectory"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end copyDirectory;

   --  throws Exception
   function copy (This : in out FileUtil; fromAbPath : AbPath_Access; to : AbPath_Access) return Boolean is
      COPY : Unbounded_String;
      stringBuffer : StringMaker_Access;
      fromLocationFile : AbFile_Access;
      toLocationFile : AbFile_Access;
      fileArray : AbFile_Access_Array_Access;
      file : AbFile_Access;
      aFile : AbFile_Access;
      index : Integer;
   begin
        COPY := To_Unbounded_String ("copy");
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Copying AbPaths from: "));
                stringBuffer.append (fromAbPath.toString);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (to.toString);
                This.logUtil.putF (stringBuffer.toString, getInstance, COPY);
            end if;
            if (fromAbPath) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Cannot Copy From A Null Location")));
            end if;
            if (to) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Cannot Copy To A Null Location")));
            end if;
            fromLocationFile := AbFile_Package.createAbFileFromAbPath (fromAbPath);
            toLocationFile := AbFile_Package.createAbFileFromAbPath (to);
            if fromLocationFile.isFile then
                if toLocationFile.isDirectory then
                    file := AbFile_Package.createAbFileWithChild (toLocationFile, fromLocationFile.getName);
                    This.copyFile (fromLocationFile, file);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Copied file="));
                        stringBuffer.append (fromLocationFile.getName);
                        stringBuffer.append (To_Unbounded_String (" from: "));
                        stringBuffer.append (fromLocationFile.getPath);
                        stringBuffer.append (To_Unbounded_String (" to: "));
                        stringBuffer.append (toLocationFile.getPath);
                        This.logUtil.putF (stringBuffer.toString, getInstance, COPY);
                    end if;
                else
                    This.copyFile (fromLocationFile, toLocationFile);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Copied file with new name "));
                        stringBuffer.append (To_Unbounded_String (" from: "));
                        stringBuffer.append (fromLocationFile.getPath);
                        stringBuffer.append (To_Unbounded_String (" to: "));
                        stringBuffer.append (toLocationFile.getPath);
                        This.logUtil.putF (stringBuffer.toString, getInstance, COPY);
                    end if;
                end if;
            elsif (fromLocationFile.isDirectory) and then (toLocationFile.isDirectory) then
                if (fromAbPath.toFileSystemString.charAt ((fromAbPath.toFileSystemString.length) - (1))) = (java_Package.io.File.separatorChar) then
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                        This.logUtil.putF (To_Unbounded_String ("Copying subdirectories"), getInstance, COPY);
                    end if;
                    fileArray := FileWrapperUtil_Package.wrapFiles (fromLocationFile.listFiles);
                    for index in 0 .. (fileArray'Length) - 1 loop
                        file := fileArray (index);
                        if file.isFile then
                            aFile := AbFile_Package.createAbFileWithChild (toLocationFile, file.getName);
                            This.copyFile (file, aFile);
                        elsif file.isDirectory then
                            This.copyDirectory (file, toLocationFile);
                        else
                            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("File Copy Error")));
                        end if;
                    end loop;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                        This.logUtil.putF (To_Unbounded_String ("Copied subdirectories"), getInstance, COPY);
                    end if;
                else
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                        This.logUtil.putF (To_Unbounded_String ("Copyinhg directory"), getInstance, COPY);
                    end if;
                    This.copyDirectory (fromLocationFile, toLocationFile);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILE) then
                        This.logUtil.putF (To_Unbounded_String ("Copied directory"), getInstance, COPY);
                    end if;
                end if;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (This.logConfigTypeFactory.FILEERROR) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Error Copying fromAbPath: "));
                stringBuffer.append (fromAbPath.toString);
                stringBuffer.append (To_Unbounded_String (" to: "));
                stringBuffer.append (to.toString);
                This.logUtil.put (stringBuffer.toString, getInstance, COPY, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end copy;

   function shouldSkip (This : in out FileUtil; file : AbFile_Access; skipFiles : Unbounded_String_Array_Access) return Boolean is
      size : Integer;
      skipFile : Unbounded_String;
      index : Integer;
   begin
        size := skipFiles'Length;
        skipFile := Null_Unbounded_String;
        for index in 0 .. (size) - 1 loop
            skipFile := skipFiles (index);
            if (file.getPath.compareTo (skipFile)) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end shouldSkip;

   --  throws Exception
   procedure write (This : in out FileUtil; filePath : Unbounded_String; string_Id : Unbounded_String) is
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStreamFactory : FileStreamFactory_Access;
      fileOutputStream : OutputStream_Access;
   begin
        dataOutputStream := null;
        begin
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.WRITE_LABEL).append (filePath).append (This.DATA_LABEL).append (string_Id).toString, This'Unchecked_Access, This.WRITE_METHOD);
            fileInputStreamFactory := FileStreamFactory_Package.getInstance;
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, filePath);
            dataOutputStream := AbDataOutputStream_Package.Create (fileOutputStream);
            dataOutputStream.write (string_Id.getBytes, 0, Length (string_Id));
            dataOutputStream.flush;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (dataOutputStream);
        end;
   end write;

   function loadFileAsList (This : in out FileUtil; file : AbFile_Access; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access is
   begin
        return FileUtil2_Package.getInstance.loadFileAsList (file, max, byteArray1);
   end loadFileAsList;

   procedure fixPath (This : in out FileUtil; file : AbFile_Access; path : AbPath_Access; realPath : AbPath_Access; cloud : Unbounded_String) is
      Java_Result : constant AbPath_Access := FileUtil'Class (This).fixPath (file, path, realPath, cloud);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end fixPath;

   procedure copyPrepare (This : in out FileUtil; fromFile : AbFile_Access; toFile : AbFile_Access; overwriteNewer : Boolean; overwriteAll : Boolean) is
      Java_Result : constant Boolean := FileUtil'Class (This).copyPrepare (fromFile, toFile, overwriteNewer, overwriteAll);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyPrepare;

   procedure getNewDirectory (fromFile : AbFile_Access) is
      Java_Result : constant Unbounded_String := getNewDirectory (fromFile);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNewDirectory;

   procedure copy (This : in out FileUtil; fromAbPath : AbPath_Access; to : AbPath_Access) is
      Java_Result : constant Boolean := FileUtil'Class (This).copy (fromAbPath, to);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copy;

   procedure shouldSkip (This : in out FileUtil; file : AbFile_Access; skipFiles : Unbounded_String_Array_Access) is
      Java_Result : constant Boolean := FileUtil'Class (This).shouldSkip (file, skipFiles);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldSkip;

   procedure loadFileAsList (This : in out FileUtil; file : AbFile_Access; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) is
      Java_Result : constant BasicArrayList_Access := FileUtil'Class (This).loadFileAsList (file, max, byteArray1);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsList;

begin
   null;
   instance := FileUtil_Package.Create;

end org.allbinary.logic.io.file.FileUtil_Package;



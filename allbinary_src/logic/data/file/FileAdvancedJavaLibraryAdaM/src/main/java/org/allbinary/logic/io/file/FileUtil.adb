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


with java.io.OutputStream_Package; use java.io.OutputStream_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.io.AbFileLocalInputStream_Package; use org.allbinary.logic.io.AbFileLocalInputStream_Package;
with org.allbinary.logic.io.AbIOSystem_Package; use org.allbinary.logic.io.AbIOSystem_Package;
with org.allbinary.logic.io.DataOutputStreamFactory_Package; use org.allbinary.logic.io.DataOutputStreamFactory_Package;
with org.allbinary.logic.io.FileStreamFactory_Package; use org.allbinary.logic.io.FileStreamFactory_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.logic.io.file.FilePathData_Package; use org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.file.FileWrapperUtil_Package; use org.allbinary.logic.io.file.FileWrapperUtil_Package;
with org.allbinary.logic.io.file.FileUtil2_Package; use org.allbinary.logic.io.file.FileUtil2_Package;

package body org.allbinary.logic.io.file.FileUtil_Package is

   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package AbFileLocalInputStream_Package renames Standard.org.allbinary.logic.io.AbFileLocalInputStream_Package;
   package AbIOSystem_Package renames Standard.org.allbinary.logic.io.AbIOSystem_Package;
   package DataOutputStreamFactory_Package renames Standard.org.allbinary.logic.io.DataOutputStreamFactory_Package;
   package FileStreamFactory_Package renames Standard.org.allbinary.logic.io.FileStreamFactory_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
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
   procedure write (This : in out FileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; file_Param : access AbFile_Package.AbFile'Class) is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      file : constant AbFile_Access := AbFile_Access (file_Param);
      dataOutputStream : AbDataOutputStream_Access;
   begin
        dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (file);
        FileUtil'Class (This).write (inputStream, dataOutputStream);
   end write;

   --  throws Exception
   procedure write (This : in out FileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; dataOutputStream_Param : access AbDataOutputStream_Package.AbDataOutputStream'Class) is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      dataOutputStream : AbDataOutputStream_Access := AbDataOutputStream_Access (dataOutputStream_Param);
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
   procedure write (This : in out FileUtil; inputStream_Param : access InputStream_Package.InputStream'Class; dataOutputStream_Param : access AbDataOutputStream_Package.AbDataOutputStream'Class; buffer : Short_Short_Integer_Array_Access) is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
      dataOutputStream : AbDataOutputStream_Access := AbDataOutputStream_Access (dataOutputStream_Param);
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
   procedure copy (This : in out FileUtil; dataInputStream_Param : access AbFileInputStream_Package.AbFileInputStream'Class; dataOutputStream_Param : access AbDataOutputStream_Package.AbDataOutputStream'Class) is
      dataInputStream : constant AbFileInputStream_Access := AbFileInputStream_Access (dataInputStream_Param);
      dataOutputStream : AbDataOutputStream_Access := AbDataOutputStream_Access (dataOutputStream_Param);
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
   function fixPath (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String) return AbPath_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      path : constant AbPath_Access := AbPath_Access (path_Param);
      realPath : constant AbPath_Access := AbPath_Access (realPath_Param);
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
            This.logUtil.putF (string_Id, FileUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("fixPath"));
        end if;
        outPath := AbPath_Package.Create (string_Id, file.getName);
        return outPath;
   end fixPath;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      path : constant AbPath_Access := AbPath_Access (path_Param);
      realPath : constant AbPath_Access := AbPath_Access (realPath_Param);
   begin
        FileUtil'Class (This).copyToCloud (file, path, realPath, cloud, False, False);
   end copyToCloud;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      path : constant AbPath_Access := AbPath_Access (path_Param);
      realPath : constant AbPath_Access := AbPath_Access (realPath_Param);
      outPath : AbPath_Access;
      outFile : AbFile_Access;
      stringBuffer : StringMaker_Access;
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStream : AbFileInputStream_Access;
   begin
        begin
            outPath := FileUtil'Class (This).fixPath (file, path, realPath, cloud);
            outFile := AbFile_Package.createAbFileFromAbPath (outPath);
            if not (FileUtil'Class (This).copyPrepare (file, outFile, overwriteNewer, overwriteAll)) then
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
            fileInputStream := AbFileInputStream_Access (AbFileLocalInputStream_Package.Create (file));
            FileUtil'Class (This).copy (fileInputStream, dataOutputStream);
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
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; outFile_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      outFile : constant AbFile_Access := AbFile_Access (outFile_Param);
   begin
        FileUtil'Class (This).copyToCloud (file, outFile, False, False);
   end copyToCloud;

   --  throws Exception
   procedure copyToCloud (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; outFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
      outFile : constant AbFile_Access := AbFile_Access (outFile_Param);
      stringBuffer : StringMaker_Access;
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStream : AbFileInputStream_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            if not (FileUtil'Class (This).copyPrepare (file, outFile, overwriteNewer, overwriteAll)) then
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
            fileInputStream := AbFileInputStream_Access (AbFileLocalInputStream_Package.Create (file));
            FileUtil'Class (This).copy (fileInputStream, dataOutputStream);
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
   function copyPrepare (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean) return Boolean is
      fromFile : constant AbFile_Access := AbFile_Access (fromFile_Param);
      toFile : constant AbFile_Access := AbFile_Access (toFile_Param);
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
   procedure copyFile (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class) is
      fromFile : constant AbFile_Access := AbFile_Access (fromFile_Param);
      toFile : constant AbFile_Access := AbFile_Access (toFile_Param);
   begin
        FileUtil'Class (This).copyFile (fromFile, toFile, False, False);
   end copyFile;

   --  throws Exception
   procedure copyFile (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean) is
      fromFile : constant AbFile_Access := AbFile_Access (fromFile_Param);
      toFile : constant AbFile_Access := AbFile_Access (toFile_Param);
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
            if not (FileUtil'Class (This).copyPrepare (fromFile, toFile, overwriteNewer, overwriteAll)) then
                return;
            end if;
            dataOutputStream := DataOutputStreamFactory_Package.getInstance.getInstanceForAbFile (toFile);
            fileInputStream := AbFileInputStream_Package.Create (fromFile);
            FileUtil'Class (This).copy (fileInputStream, dataOutputStream);
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

   function getNewDirectory (fromFile_Param : access AbFile_Package.AbFile'Class) return Unbounded_String is
      fromFile : constant AbFile_Access := AbFile_Access (fromFile_Param);
      newDirectory : Unbounded_String;
      separatorChar : Unbounded_String;
      lastIndex : Integer;
   begin
        newDirectory := fromFile.getPath;
        separatorChar := FilePathData_Package.getInstance.PATH_START;
        if AbIOSystem_Package.getInstance.isType (To_Unbounded_String ("com.vobject.appengine.java.io")) then
            separatorChar := AbPathData_Package.getInstance.SEPARATOR;
        end if;
        lastIndex := Java_Last_Index_Of (newDirectory, Java_Image (separatorChar));
        if (lastIndex) >= (Length (newDirectory)) then
            newDirectory := Unbounded_Slice (newDirectory, (0) + 1, (Length (newDirectory)) - (1));
            lastIndex := Java_Last_Index_Of (newDirectory, Java_Image (separatorChar));
        end if;
        return Unbounded_Slice (newDirectory, (lastIndex) + 1, Length (newDirectory));
   end getNewDirectory;

   --  throws Exception
   procedure copyDirectoryPortion (This : in out FileUtil; fromDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; toDirectoryAbPath_Param : access AbPath_Package.AbPath'Class; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) is
      fromDirectoryAbPath : constant AbPath_Access := AbPath_Access (fromDirectoryAbPath_Param);
      toDirectoryAbPath : constant AbPath_Access := AbPath_Access (toDirectoryAbPath_Param);
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
                if (path.indexOf (URLGLOBALS_Package.getWebappPath)) < (0) then
                    beginIndex := (beginIndex) - (AbPath_Package.Create (URLGLOBALS_Package.getWebappPath, StringUtil_Package.getInstance.EMPTY_STRING).getPath.length);
                end if;
                newPath := Java_Image (toDirectoryAbPath.toFileSystemString) & path.substring (beginIndex);
                toFile := AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (newPath, StringUtil_Package.getInstance.EMPTY_STRING));
                FileUtil'Class (This).copyFile (nextFile, toFile, overwriteNewer, overwriteAll);
            end if;
        end loop;
   end copyDirectoryPortion;

   --  throws Exception
   procedure copyDirectory (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; to_Param : access AbFile_Package.AbFile'Class) is
      fromFile : constant AbFile_Access := AbFile_Access (fromFile_Param);
      to : constant AbFile_Access := AbFile_Access (to_Param);
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
                    FileUtil'Class (This).copyFile (file, AbFile_Package.createAbFilePathAndName (newDirectoryAbPath.toString, file.getName));
                elsif file.isDirectory then
                    FileUtil'Class (This).copyDirectory (file, AbFile_Package.createAbFileFromAbPath (newDirectoryAbPath));
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
   function copy (This : in out FileUtil; fromAbPath_Param : access AbPath_Package.AbPath'Class; to_Param : access AbPath_Package.AbPath'Class) return Boolean is
      fromAbPath : constant AbPath_Access := AbPath_Access (fromAbPath_Param);
      to : constant AbPath_Access := AbPath_Access (to_Param);
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
                    FileUtil'Class (This).copyFile (fromLocationFile, file);
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
                    FileUtil'Class (This).copyFile (fromLocationFile, toLocationFile);
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
                            FileUtil'Class (This).copyFile (file, aFile);
                        elsif file.isDirectory then
                            FileUtil'Class (This).copyDirectory (file, toLocationFile);
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
                    FileUtil'Class (This).copyDirectory (fromLocationFile, toLocationFile);
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

   function shouldSkip (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; skipFiles : Unbounded_String_Array_Access) return Boolean is
      file : constant AbFile_Access := AbFile_Access (file_Param);
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
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.WRITE_LABEL).append (filePath).append (This.DATA_LABEL).append (string_Id).toString, FileUtil_Access'(This'Unchecked_Access), This.WRITE_METHOD);
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

   function loadFileAsList (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) return BasicArrayList_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return FileUtil2_Package.getInstance.loadFileAsList (file, max, byteArray1);
   end loadFileAsList;

   procedure fixPath (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; path_Param : access AbPath_Package.AbPath'Class; realPath_Param : access AbPath_Package.AbPath'Class; cloud : Unbounded_String) is
      Java_Result : constant AbPath_Access := FileUtil'Class (This).fixPath (file_Param, path_Param, realPath_Param, cloud);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end fixPath;

   procedure copyPrepare (This : in out FileUtil; fromFile_Param : access AbFile_Package.AbFile'Class; toFile_Param : access AbFile_Package.AbFile'Class; overwriteNewer : Boolean; overwriteAll : Boolean) is
      Java_Result : constant Boolean := FileUtil'Class (This).copyPrepare (fromFile_Param, toFile_Param, overwriteNewer, overwriteAll);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copyPrepare;

   procedure getNewDirectory (fromFile_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant Unbounded_String := getNewDirectory (fromFile_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNewDirectory;

   procedure copy (This : in out FileUtil; fromAbPath_Param : access AbPath_Package.AbPath'Class; to_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Boolean := FileUtil'Class (This).copy (fromAbPath_Param, to_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end copy;

   procedure shouldSkip (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; skipFiles : Unbounded_String_Array_Access) is
      Java_Result : constant Boolean := FileUtil'Class (This).shouldSkip (file_Param, skipFiles);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldSkip;

   procedure loadFileAsList (This : in out FileUtil; file_Param : access AbFile_Package.AbFile'Class; max : Integer; byteArray1 : Short_Short_Integer_Array_Access) is
      Java_Result : constant BasicArrayList_Access := FileUtil'Class (This).loadFileAsList (file_Param, max, byteArray1);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end loadFileAsList;

begin
   null;
   instance := FileUtil_Package.Create;

end org.allbinary.logic.io.file.FileUtil_Package;



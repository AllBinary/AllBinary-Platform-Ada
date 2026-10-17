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


package body org.allbinary.logic.io.file.directory.Directory_Package is

   procedure Initialize_Fields (This : in out Directory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return Directory_Access is
   begin
        return Directory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out Directory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Directory_Access is
      This : constant Directory_Access := new Directory;
   begin
      Directory_Package.Initialize (This.all);
      return This;
   end Create;

   function create (This : in out Directory; directoryAbPath_Param : access AbPath'Class) return Boolean is
      directoryAbPath : AbPath_Access := AbPath_Access (directoryAbPath_Param);
   begin
        return This.create (directoryAbPath.toFileSystemString);
   end create;

   --  throws Exception
   procedure remove (This : in out Directory; existingDirectoryAbPath_Param : access AbPath'Class) is
      existingDirectoryAbPath : AbPath_Access := AbPath_Access (existingDirectoryAbPath_Param);
   begin
        This.remove (existingDirectoryAbPath.toFileSystemString);
   end remove;

   function create (This : in out Directory; directory : Unbounded_String) return Boolean is
      directoryFile : AbFile_Access;
   begin
        begin
            directoryFile := FileFactory_Package.getInstance.getInstance (directory);
            if not (directoryFile.isDirectory) then
                PreLogUtil_Package.put (To_Unbounded_String ("Creating Directories: ") & directory, Directory_Access'(This'Unchecked_Access), To_Unbounded_String ("create"));
                if not (directoryFile.mkdirs) then
                    return False;
                end if;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (To_Unbounded_String ("Error Creating Directories: ") & directory, Directory_Access'(This'Unchecked_Access), To_Unbounded_String ("create"), e);
            return False;
                end;
        end;
   end create;

   --  throws Exception
   procedure remove (This : in out Directory; existingDirectory : Unbounded_String) is
      existingDirectoryFile : AbFile_Access;
   begin
        existingDirectoryFile := FileFactory_Package.getInstance.getInstance (existingDirectory);
        if existingDirectoryFile.isDirectory then
            if (existingDirectoryFile.list'Length) > (0) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Did not remove category: ") & existingDirectory & To_Unbounded_String (" because files exist")));
            elsif existingDirectoryFile.delete then
                PreLogUtil_Package.put (To_Unbounded_String ("Successfully Removed: ") & existingDirectory, To_Unbounded_String ("Directory"), To_Unbounded_String ("remove"));
            end if;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Category Directory Is Missing:") & existingDirectory));
        end if;
   end remove;

   function search (This : in out Directory; fileFilter_Param : access FileFilter'Class; file_Param : access AbFile'Class) return BasicArrayList_Access is
      fileFilter : FileFilter_Access := FileFilter_Access (fileFilter_Param);
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.search (fileFilter, file, False);
   end search;

   function search (This : in out Directory; fileFilter_Param : access FileFilter'Class; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access is
      fileFilter : FileFilter_Access := FileFilter_Access (fileFilter_Param);
      file : AbFile_Access := AbFile_Access (file_Param);
      fileList : BasicArrayList_Access;
      recursiveFileList : BasicArrayList_Access;
      fileArray : Java_Object_Access_Array_Access;
      files : AbFile_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        fileList := BasicArrayListD_Package.Create;
        recursiveFileList := null;
        if file.isDirectory then
            fileArray := file.listFilesFileFilter (fileFilter);
            if (fileArray) = (null) then
                return fileList;
            end if;
            files := FileWrapperUtil_Package.wrapFiles (fileArray);
            if (files) = (null) then
                return fileList;
            end if;
            size := files'Length;
            for index in 0 .. (size) - 1 loop
                fileList.add (files (index));
                if isRecursiveSearch then
                    recursiveFileList := This.search (fileFilter, files (index), isRecursiveSearch);
                    fileList.addAllList (recursiveFileList);
                end if;
            end loop;
        end if;
        return fileList;
   end search;

   function search (This : in out Directory; file_Param : access AbFile'Class) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.search (file, False);
   end search;

   function search (This : in out Directory; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      fileList : BasicArrayList_Access;
      recursiveFileList : BasicArrayList_Access;
      fileArray : Java_Object_Access_Array_Access;
      files : AbFile_Access_Array_Access;
      index : Integer;
   begin
        fileList := BasicArrayListD_Package.Create;
        recursiveFileList := null;
        if file.isDirectory then
            fileArray := file.listFiles;
            if (fileArray) = (null) then
                return fileList;
            end if;
            files := FileWrapperUtil_Package.wrapFiles (fileArray);
            if (files) = (null) then
                return fileList;
            end if;
            for index in 0 .. (files'Length) - 1 loop
                fileList.add (files (index));
                if isRecursiveSearch then
                    recursiveFileList := This.search (files (index), isRecursiveSearch);
                    fileList.addAllList (recursiveFileList);
                end if;
            end loop;
        end if;
        return fileList;
   end search;

   function search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile'Class) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.search (searchValue, file, False);
   end search;

   function search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      fileList : BasicArrayList_Access;
      recursiveFileList : BasicArrayList_Access;
      fileArray : Java_Object_Access_Array_Access;
      files : AbFile_Access_Array_Access;
      index : Integer;
   begin
        fileList := BasicArrayListD_Package.Create;
        recursiveFileList := null;
        if file.isDirectory then
            fileArray := file.listFiles;
            if (fileArray) = (null) then
                return fileList;
            end if;
            files := FileWrapperUtil_Package.wrapFiles (fileArray);
            if (files) = (null) then
                return fileList;
            end if;
            for index in 0 .. (files'Length) - 1 loop
                if (files (index).getPath.indexOf (searchValue)) >= (0) then
                    fileList.add (files (index));
                end if;
                if isRecursiveSearch then
                    recursiveFileList := This.search (searchValue, files (index), isRecursiveSearch);
                    fileList.addAllList (recursiveFileList);
                end if;
            end loop;
        end if;
        return fileList;
   end search;

   function search (This : in out Directory; level : Integer; file_Param : access AbFile'Class) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return This.search (level, file, False);
   end search;

   function search (This : in out Directory; level : Integer; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) return BasicArrayList_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      fileList : BasicArrayList_Access;
      recursiveFileList : BasicArrayList_Access;
      fileArray : Java_Object_Access_Array_Access;
      files : AbFile_Access_Array_Access;
      index : Integer;
   begin
        fileList := BasicArrayListD_Package.Create;
        recursiveFileList := null;
        if file.isDirectory then
            fileArray := file.listFiles;
            if (fileArray) = (null) then
                return fileList;
            end if;
            files := FileWrapperUtil_Package.wrapFiles (fileArray);
            if (files) = (null) then
                return fileList;
            end if;
            for index in 0 .. (files'Length) - 1 loop
                fileList.add (files (index));
                if (level) <= (0) then
                    return fileList;
                end if;
                recursiveFileList := This.search ((level) - (1), files (index), isRecursiveSearch);
                fileList.addAllList (recursiveFileList);
            end loop;
        end if;
        return fileList;
   end search;

   procedure create (This : in out Directory; directoryAbPath_Param : access AbPath'Class) is
      Java_Result : constant Boolean := Directory'Class (This).create (directoryAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure create (This : in out Directory; directory : Unbounded_String) is
      Java_Result : constant Boolean := Directory'Class (This).create (directory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure search (This : in out Directory; fileFilter_Param : access FileFilter'Class; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (fileFilter_Param, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; fileFilter_Param : access FileFilter'Class; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (fileFilter_Param, file_Param, isRecursiveSearch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (file_Param, isRecursiveSearch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (searchValue, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; searchValue : Unbounded_String; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (searchValue, file_Param, isRecursiveSearch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; level : Integer; file_Param : access AbFile'Class) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (level, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure search (This : in out Directory; level : Integer; file_Param : access AbFile'Class; isRecursiveSearch : Boolean) is
      Java_Result : constant BasicArrayList_Access := Directory'Class (This).search (level, file_Param, isRecursiveSearch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

begin
   null;
   instance := Directory_Package.Create;

end org.allbinary.logic.io.file.directory.Directory_Package;



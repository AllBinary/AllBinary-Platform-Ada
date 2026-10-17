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


package body org.allbinary.logic.io.file.AbFile_Package is

   procedure Initialize_Fields (This : in out AbFile'Class) is
   begin
      null;
      
   end Initialize_Fields;


   --  throws Exception
   function createAbFileWithChild (file : AbFile_Access; childPathName : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.Create (File_Package.Create (file.getFile, childPathName));
   end createAbFileWithChild;

   --  throws Exception
   function createAbFile (filePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.Create (File_Package.Create (AbPath_Package.Create (filePath, StringUtil_Package.getInstance.EMPTY_STRING).toFileSystemString));
   end createAbFile;

   --  throws Exception
   function createAbFilePathAndName (filePath : Unbounded_String; fileName : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.Create (File_Package.Create (AbPath_Package.Create (filePath, StringUtil_Package.getInstance.EMPTY_STRING).toFileSystemString, fileName));
   end createAbFilePathAndName;

   function createAbFileFromAbPath (abPath : AbPath_Access) return AbFile_Access is
   begin
        return AbFile_Package.Create (File_Package.Create (abPath.toFileSystemString));
   end createAbFileFromAbPath;

   function createAbFileFromRawPath (filePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.Create (File_Package.Create (filePath));
   end createAbFileFromRawPath;

   procedure Initialize (This : in out AbFile'Class; file : File_Access) is
   begin
      Initialize_Fields (This);
        This.file := file;
   end Initialize;

   function Create (file : File_Access) return AbFile_Access is
      This : constant AbFile_Access := new AbFile;
   begin
      AbFile_Package.Initialize (This.all, file);
      return This;
   end Create;

   function getFile (This : in out AbFile) return File_Access is
   begin
        return This.file;
   end getFile;

   function getName (This : in out AbFile) return Unbounded_String is
   begin
        return This.file.getName;
   end getName;

   function getParent (This : in out AbFile) return Unbounded_String is
   begin
        return This.file.getParent;
   end getParent;

   function getParentFile (This : in out AbFile) return File_Access is
   begin
        return This.file.getParentFile;
   end getParentFile;

   function getPath (This : in out AbFile) return Unbounded_String is
   begin
        return This.file.getPath;
   end getPath;

   function isAbsolute (This : in out AbFile) return Boolean is
   begin
        return This.file.isAbsolute;
   end isAbsolute;

   function getAbsolutePath (This : in out AbFile) return Unbounded_String is
   begin
        return This.file.getAbsolutePath;
   end getAbsolutePath;

   function getAbsoluteFile (This : in out AbFile) return File_Access is
   begin
        return This.file.getAbsoluteFile;
   end getAbsoluteFile;

   --  throws IOException
   function getCanonicalPath (This : in out AbFile) return Unbounded_String is
   begin
        return This.file.getCanonicalPath;
   end getCanonicalPath;

   --  throws IOException
   function getCanonicalFile (This : in out AbFile) return File_Access is
   begin
        return This.file.getCanonicalFile;
   end getCanonicalFile;

   function toURI (This : in out AbFile) return URI_Access is
   begin
        return This.file.toURI;
   end toURI;

   function canRead (This : in out AbFile) return Boolean is
   begin
        return This.file.canRead;
   end canRead;

   function canWrite (This : in out AbFile) return Boolean is
   begin
        return This.file.canWrite;
   end canWrite;

   function exists (This : in out AbFile) return Boolean is
   begin
        return This.file.exists;
   end exists;

   function isDirectory (This : in out AbFile) return Boolean is
   begin
        return This.file.isDirectory;
   end isDirectory;

   function isFile (This : in out AbFile) return Boolean is
   begin
        return This.file.isFile;
   end isFile;

   function isHidden (This : in out AbFile) return Boolean is
   begin
        return This.file.isHidden;
   end isHidden;

   function lastModified (This : in out AbFile) return Long_Long_Integer is
   begin
        return This.file.lastModified;
   end lastModified;

   function length (This : in out AbFile) return Long_Long_Integer is
   begin
        return Long_Long_Integer (This.file.length);
   end length;

   --  throws IOException
   function createNewFile (This : in out AbFile) return Boolean is
   begin
        return This.file.createNewFile;
   end createNewFile;

   --  throws IOException
   function delete (This : in out AbFile) return Boolean is
   begin
        return This.file.delete;
   end delete;

   procedure deleteOnExit (This : in out AbFile) is
   begin
        This.file.deleteOnExit;
   end deleteOnExit;

   function list (This : in out AbFile) return Unbounded_String_Array_Access is
   begin
        return This.file.list;
   end list;

   function listWithFilter (This : in out AbFile; filter : FilenameFilter_Access) return Unbounded_String_Array_Access is
   begin
        return This.file.list (filter);
   end listWithFilter;

   function listFiles (This : in out AbFile) return Java_Object_Access_Array_Access is
   begin
        return Java_Object_Access_Array_Access (This.file.listFiles);
   end listFiles;

   function listFilesFileNameFilter (This : in out AbFile; filter : FilenameFilter_Access) return Java_Object_Access_Array_Access is
   begin
        return Java_Object_Access_Array_Access (This.file.listFiles (filter));
   end listFilesFileNameFilter;

   function listFilesFileFilter (This : in out AbFile; filter : FileFilter_Access) return Java_Object_Access_Array_Access is
   begin
        return Java_Object_Access_Array_Access (This.file.listFiles (filter));
   end listFilesFileFilter;

   function mkdir (This : in out AbFile) return Boolean is
   begin
        return This.file.mkdir;
   end mkdir;

   function mkdirs (This : in out AbFile) return Boolean is
   begin
        return This.file.mkdirs;
   end mkdirs;

   function renameTo (This : in out AbFile; dest : AbFile_Access) return Boolean is
   begin
        return This.file.renameTo (dest.getFile);
   end renameTo;

   function setLastModified (This : in out AbFile; time : Long_Long_Integer) return Boolean is
   begin
        return This.file.setLastModified (time);
   end setLastModified;

   function setReadOnly (This : in out AbFile) return Boolean is
   begin
        return This.file.setReadOnly;
   end setReadOnly;

   function compareTo (This : in out AbFile; pathname : File_Access) return Integer is
   begin
        return This.file.compareTo (pathname);
   end compareTo;

   function equals (This : in out AbFile; obj : Java_Object_Access) return Boolean is
   begin
        return TsUtil_Package.getInstance.equalsNotstring (This.file, obj);
   end equals;

   function hashCode (This : in out AbFile) return Integer is
   begin
        return This.file.hashCode;
   end hashCode;

   function toString (This : in out AbFile) return Unbounded_String is
   begin
        return This.file.toString;
   end toString;

   procedure createAbFileWithChild (file : AbFile_Access; childPathName : Unbounded_String) is
      Java_Result : constant AbFile_Access := createAbFileWithChild (file, childPathName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAbFileWithChild;

   procedure createAbFile (filePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := createAbFile (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAbFile;

   procedure createAbFilePathAndName (filePath : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFile_Access := createAbFilePathAndName (filePath, fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAbFilePathAndName;

   procedure createAbFileFromAbPath (abPath : AbPath_Access) is
      Java_Result : constant AbFile_Access := createAbFileFromAbPath (abPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAbFileFromAbPath;

   procedure createAbFileFromRawPath (filePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := createAbFileFromRawPath (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createAbFileFromRawPath;

   procedure listWithFilter (This : in out AbFile; filter : FilenameFilter_Access) is
      Java_Result : constant Unbounded_String_Array_Access := AbFile'Class (This).listWithFilter (filter);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end listWithFilter;

   procedure listFilesFileNameFilter (This : in out AbFile; filter : FilenameFilter_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := AbFile'Class (This).listFilesFileNameFilter (filter);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end listFilesFileNameFilter;

   procedure listFilesFileFilter (This : in out AbFile; filter : FileFilter_Access) is
      Java_Result : constant Java_Object_Access_Array_Access := AbFile'Class (This).listFilesFileFilter (filter);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end listFilesFileFilter;

   procedure renameTo (This : in out AbFile; dest : AbFile_Access) is
      Java_Result : constant Boolean := AbFile'Class (This).renameTo (dest);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end renameTo;

   procedure setLastModified (This : in out AbFile; time : Long_Long_Integer) is
      Java_Result : constant Boolean := AbFile'Class (This).setLastModified (time);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setLastModified;

   procedure compareTo (This : in out AbFile; pathname : File_Access) is
      Java_Result : constant Integer := AbFile'Class (This).compareTo (pathname);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure equals (This : in out AbFile; obj : Java_Object_Access) is
      Java_Result : constant Boolean := AbFile'Class (This).equals (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equals;

begin
   null;
   NULL_FILE := AbFile_Package.createAbFileFromRawPath (StringUtil_Package.getInstance.EMPTY_STRING);

end org.allbinary.logic.io.file.AbFile_Package;



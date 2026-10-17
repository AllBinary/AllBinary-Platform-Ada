-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.logic.io.file.AbFileSystem_Package is

   procedure Initialize_Fields (This : in out AbFileSystem'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AbFileSystem'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbFileSystem_Access is
      This : constant AbFileSystem_Access := new AbFileSystem;
   begin
      AbFileSystem_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AbFileSystem_Access is
   begin
        return AbFileSystem_Package.instance;
   end getInstance;

   function isDirectoryOrFile (This : in out AbFileSystem; path : Unbounded_String) return Boolean is
   begin
        return False;
   end isDirectoryOrFile;

   function isDirectory (This : in out AbFileSystem; path : Unbounded_String) return Boolean is
   begin
        return False;
   end isDirectory;

   function getFilesAsStringArrayForPath (This : in out AbFileSystem; currentDirPath : Unbounded_String) return Unbounded_String_Array_Access is
   begin
        return StringUtil_Package.getInstance.getArrayInstance;
   end getFilesAsStringArrayForPath;

   function readAsString (This : in out AbFileSystem; fileName : Unbounded_String) return Unbounded_String is
      bytes : Short_Short_Integer_Array_Access;
   begin
        bytes := new Short_Short_Integer_Array'(0 .. (1000000) - 1 => 0);
        return This.readAsString (fileName, bytes);
   end readAsString;

   function readAsString (This : in out AbFileSystem; fileName : Unbounded_String; bytes : Short_Short_Integer_Array_Access) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end readAsString;

   function close (This : in out AbFileSystem; closeable : Java_Object_Access) return Boolean is
      inputStream : InputStream_Access;
   begin
        begin
            if (closeable) /= (null) then
                inputStream := (InputStream_Access (closeable));
                inputStream.close;
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CLOSE, e);
            return False;
                end;
        end;
   end close;

   procedure isDirectoryOrFile (This : in out AbFileSystem; path : Unbounded_String) is
      Java_Result : constant Boolean := AbFileSystem'Class (This).isDirectoryOrFile (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDirectoryOrFile;

   procedure isDirectory (This : in out AbFileSystem; path : Unbounded_String) is
      Java_Result : constant Boolean := AbFileSystem'Class (This).isDirectory (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDirectory;

   procedure getFilesAsStringArrayForPath (This : in out AbFileSystem; currentDirPath : Unbounded_String) is
      Java_Result : constant Unbounded_String_Array_Access := AbFileSystem'Class (This).getFilesAsStringArrayForPath (currentDirPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFilesAsStringArrayForPath;

   procedure readAsString (This : in out AbFileSystem; fileName : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbFileSystem'Class (This).readAsString (fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end readAsString;

   procedure readAsString (This : in out AbFileSystem; fileName : Unbounded_String; bytes : Short_Short_Integer_Array_Access) is
      Java_Result : constant Unbounded_String := AbFileSystem'Class (This).readAsString (fileName, bytes);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end readAsString;

   procedure close (This : in out AbFileSystem; closeable : Java_Object_Access) is
      Java_Result : constant Boolean := AbFileSystem'Class (This).close (closeable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end close;

begin
   null;
   instance := AbFileSystem_Package.Create;

end org.allbinary.logic.io.file.AbFileSystem_Package;



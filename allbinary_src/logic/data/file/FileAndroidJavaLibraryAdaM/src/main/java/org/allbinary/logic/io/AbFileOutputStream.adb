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


with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;

package body org.allbinary.logic.io.AbFileOutputStream_Package is

   package AbFileNativeUtil_Package renames Standard.org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   procedure Initialize_Fields (This : in out AbFileOutputStream'Class) is
   begin
      null;
      
   end Initialize_Fields;


   --  throws FileNotFoundException
   function createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) return AbFileOutputStream_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return AbFileOutputStream_Package.Create (FileOutputStream_Package.Create (AbFileNativeUtil_Package.get (file)));
   end createFromAbFile;

   --  throws FileNotFoundException
   function createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean) return AbFileOutputStream_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return AbFileOutputStream_Package.Create (FileOutputStream_Package.Create (file.getPath));
   end createFromAbFileAppend;

   --  throws FileNotFoundException
   function createFromFilePath (name : Unbounded_String) return AbFileOutputStream_Access is
   begin
        return AbFileOutputStream_Package.Create (FileOutputStream_Package.Create (name));
   end createFromFilePath;

   --  throws FileNotFoundException
   function createFromFilePathAppend (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access is
   begin
        return AbFileOutputStream_Package.Create (FileOutputStream_Package.Create (name));
   end createFromFilePathAppend;

   procedure Initialize (This : in out AbFileOutputStream'Class; fileOutputStream_Param : access FileOutputStream_Package.FileOutputStream'Class) is
      fileOutputStream : constant FileOutputStream_Access := FileOutputStream_Access (fileOutputStream_Param);
   begin
      OutputStream_Package.Initialize (This);
      Initialize_Fields (This);
        This.fileOutputStream := fileOutputStream;
   end Initialize;

   function Create (fileOutputStream_Param : access FileOutputStream_Package.FileOutputStream'Class) return AbFileOutputStream_Access is
      This : constant AbFileOutputStream_Access := new AbFileOutputStream;
   begin
      AbFileOutputStream_Package.Initialize (This.all, fileOutputStream_Param);
      return This;
   end Create;

   --  throws IOException
   procedure close (This : in out AbFileOutputStream) is
   begin
        This.fileOutputStream.close;
   end close;

   function getChannel (This : in out AbFileOutputStream) return FileChannel_Access is
   begin
        return This.fileOutputStream.getChannel;
   end getChannel;

   --  throws IOException
   procedure write (This : in out AbFileOutputStream; buffer : Short_Short_Integer_Array_Access) is
   begin
        This.fileOutputStream.write (buffer);
   end write;

   --  throws IOException
   procedure write (This : in out AbFileOutputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer) is
   begin
        This.fileOutputStream.write (buffer, offset, count);
   end write;

   --  throws IOException
   procedure write (This : in out AbFileOutputStream; b : Integer) is
   begin
        This.fileOutputStream.write (b);
   end write;

   procedure createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant AbFileOutputStream_Access := createFromAbFile (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromAbFile;

   procedure createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean) is
      Java_Result : constant AbFileOutputStream_Access := createFromAbFileAppend (file_Param, append);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromAbFileAppend;

   procedure createFromFilePath (name : Unbounded_String) is
      Java_Result : constant AbFileOutputStream_Access := createFromFilePath (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromFilePath;

   procedure createFromFilePathAppend (name : Unbounded_String; append : Boolean) is
      Java_Result : constant AbFileOutputStream_Access := createFromFilePathAppend (name, append);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromFilePathAppend;

end org.allbinary.logic.io.AbFileOutputStream_Package;



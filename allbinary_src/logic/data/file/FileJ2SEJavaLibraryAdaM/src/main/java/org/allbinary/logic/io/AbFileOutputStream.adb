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



package body org.allbinary.logic.io.AbFileOutputStream_Package is

   procedure Initialize_Fields (This : in out AbFileOutputStream'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws FileNotFoundException
   function createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) return AbFileOutputStream_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return AbFileOutputStream_Package.Create (file.getPath, False);
   end createFromAbFile;

   --  throws FileNotFoundException
   function createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean) return AbFileOutputStream_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return AbFileOutputStream_Package.Create (file.getPath, append);
   end createFromAbFileAppend;

   --  throws FileNotFoundException
   function createFromFilePath (name : Unbounded_String) return AbFileOutputStream_Access is
   begin
        return AbFileOutputStream_Package.Create (name, False);
   end createFromFilePath;

   --  throws FileNotFoundException
   function createFromFilePathAppend (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access is
   begin
        return AbFileOutputStream_Package.Create (name, append);
   end createFromFilePathAppend;

   procedure Initialize (This : in out AbFileOutputStream'Class; name : Unbounded_String; append : Boolean) is
   begin
        FileOutputStream_Package.Initialize (This, name, append);
   end Initialize;

   function Create (name : Unbounded_String; append : Boolean) return AbFileOutputStream_Access is
      This : constant AbFileOutputStream_Access := new AbFileOutputStream;
   begin
      AbFileOutputStream_Package.Initialize (This.all, name, append);
      return This;
   end Create;

   procedure createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant AbFileOutputStream_Access := createFromAbFile (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromAbFile;

   procedure createFromAbFileAppend (file_Param : access AbFile_Package.AbFile'Class; append : Boolean) is
      Java_Result : constant AbFileOutputStream_Access := createFromAbFileAppend (file_Param => file_Param, append => append);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromAbFileAppend;

   procedure createFromFilePath (name : Unbounded_String) is
      Java_Result : constant AbFileOutputStream_Access := createFromFilePath (name => name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromFilePath;

   procedure createFromFilePathAppend (name : Unbounded_String; append : Boolean) is
      Java_Result : constant AbFileOutputStream_Access := createFromFilePathAppend (name => name, append => append);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFromFilePathAppend;

end org.allbinary.logic.io.AbFileOutputStream_Package;



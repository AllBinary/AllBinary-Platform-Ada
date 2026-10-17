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


package body org.allbinary.logic.io.file.FileFactory_Package is

   procedure Initialize_Fields (This : in out FileFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FileFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileFactory_Access is
      This : constant FileFactory_Access := new FileFactory;
   begin
      FileFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FileFactory_Access is
   begin
        return FileFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out FileFactory; filePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.createAbFileFromRawPath (filePath);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out FileFactory; file : AbFile_Access; childFilePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.createAbFileWithChild (file, childFilePath);
   end getInstance;

   --  throws Exception
   function isFile (This : in out FileFactory; path : Unbounded_String) return Boolean is
      file : AbFile_Access;
   begin
        file := AbFile_Package.createAbFile (path);
        if file.exists then
            return True;
        else
            return False;
        end if;
   end isFile;

   procedure getInstance (This : in out FileFactory; filePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := FileFactory'Class (This).getInstance (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out FileFactory; file : AbFile_Access; childFilePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := FileFactory'Class (This).getInstance (file, childFilePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isFile (This : in out FileFactory; path : Unbounded_String) is
      Java_Result : constant Boolean := FileFactory'Class (This).isFile (path);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFile;

begin
   null;
   instance := FileFactory_Package.Create;

end org.allbinary.logic.io.file.FileFactory_Package;



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


   procedure Initialize (This : in out FileFactory'Class; context : Context_Access) is
   begin
      Initialize_Fields (This);
        This.context := context;
   end Initialize;

   function Create (context : Context_Access) return FileFactory_Access is
      This : constant FileFactory_Access := new FileFactory;
   begin
      Initialize (This.all, context);
      return This;
   end Create;

   function getInstance return FileFactory_Access is
   begin
        return FileFactory_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   function isFile (This : in out FileFactory; path : Unbounded_String) return Boolean is
   begin
        begin
            This.context.openFileInput (path);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            return False;
                end;
        end;
   end isFile;

   function getContext (This : in out FileFactory) return Context_Access is
   begin
        return This.context;
   end getContext;

   --  throws Exception
   function getFile (This : in out FileFactory; filePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.createAbFileFromRawPath (filePath);
   end getFile;

   --  throws Exception
   function getInstance (This : in out FileFactory; file : AbFile_Access; childFilePath : Unbounded_String) return AbFile_Access is
   begin
        return AbFile_Package.createAbFileWithChild (file, childFilePath);
   end getInstance;

   procedure getInstance is
      Java_Result : constant FileFactory_Access := getInstance;
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

   procedure getContext (This : in out FileFactory) is
      Java_Result : constant Context_Access := FileFactory'Class (This).getContext;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getContext;

   procedure getFile (This : in out FileFactory; filePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := FileFactory'Class (This).getFile (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFile;

   procedure getInstance (This : in out FileFactory; file : AbFile_Access; childFilePath : Unbounded_String) is
      Java_Result : constant AbFile_Access := FileFactory'Class (This).getInstance (file, childFilePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := FileFactory_Package.Create (ResourceUtil_Package.getInstance.getContext);

end org.allbinary.logic.io.file.FileFactory_Package;



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


package body org.allbinary.logic.io.FileStreamFactory_Package is

   procedure Initialize_Fields (This : in out FileStreamFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   function getInstance return FileStreamFactory_Access is
   begin
        if (FileStreamFactory_Package.SINGLETON) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            FileStreamFactory_Package.SINGLETON := FileStreamFactory_Package.Create (ResourceUtil_Package.getInstance.getContext);
        end if;
        return FileStreamFactory_Access (FileStreamFactory_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out FileStreamFactory'Class; context_Param : access Context_Package.Context'Class) is
      context : constant Context_Access := Context_Access (context_Param);
   begin
      Initialize_Fields (This);
        This.context := context;
   end Initialize;

   function Create (context_Param : access Context_Package.Context'Class) return FileStreamFactory_Access is
      This : constant FileStreamFactory_Access := new FileStreamFactory;
   begin
      FileStreamFactory_Package.Initialize (This.all, context_Param);
      return This;
   end Create;

   --  throws Exception
   function getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileInputStream_Access is
   begin
        return AbFileInputStream_Package.Create (This.getContext.openFileInput (fileName));
   end getFileInputStreamInstance;

   --  throws Exception
   function getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileOutputStream_Access is
      context : Context_Access;
   begin
        context := This.getContext;
        context.deleteFile (fileName);
        return AbFileOutputStream_Package.Create (context.openFileOutput (fileName, 0));
   end getFileOutputStreamInstance;

   --  throws Exception
   procedure delete (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
   begin
        This.getContext.deleteFile (fileName);
   end delete;

   function getContext (This : in out FileStreamFactory) return Context_Access is
   begin
        return Context_Access (This.context);
   end getContext;

   procedure getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFileInputStream_Access := FileStreamFactory'Class (This).getFileInputStreamInstance (path, fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileInputStreamInstance;

   procedure getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFileOutputStream_Access := FileStreamFactory'Class (This).getFileOutputStreamInstance (path, fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileOutputStreamInstance;

begin
   null;
   SINGLETON := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.logic.io.FileStreamFactory_Package;



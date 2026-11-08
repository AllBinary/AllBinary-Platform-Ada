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


with android.content.Context_Package; use android.content.Context_Package;
with android.content.Context_Package_References;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package_References;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package_References;
with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.file.AbFileInterface_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.io.file.FilePathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package;

package body org.allbinary.logic.io.FileStreamFactory_Package is

   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype Context_Access is android.content.Context_Package_References.Context_Access;
   function "=" (Left, Right : Context_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array is android.content.Context_Package_References.Context_Access_Array;
   function "=" (Left, Right : Context_Access_Array) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access;
   function "=" (Left, Right : Context_Access_Array_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access_Array is android.content.Context_Package_References.Context_Access_Array_Access_Array;
   function "=" (Left, Right : Context_Access_Array_Access_Array) return Boolean renames android.content.Context_Package_References."=";
   subtype Context_Access_Array_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Context_Access_Array_Access_Array_Access) return Boolean renames android.content.Context_Package_References."=";
   subtype AbFileInputStream_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access;
   function "=" (Left, Right : AbFileInputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileOutputStream_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access;
   function "=" (Left, Right : AbFileOutputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array;
   function "=" (Left, Right : AbFileOutputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   subtype AbFileOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileOutputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileOutputStream_Package_References."=";
   procedure Initialize_Fields (This : in out FileStreamFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   function getInstance return FileStreamFactory_Access is
   begin
        if (FileStreamFactory_Package.SINGLETON) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            FileStreamFactory_Package.SINGLETON := Java_Object_Access (FileStreamFactory_Package.Create (ResourceUtil_Package.getInstance.getContext));
        end if;
        return FileStreamFactory_Access (FileStreamFactory_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out FileStreamFactory'Class; context_Param : access Context_Package.Context'Class) is
      context : constant Context_Access := Context_Access (context_Param);
   begin
      Initialize_Fields (This);
        This.context := Java_Object_Access (context);
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
        return AbFileInputStream_Package.Create (FileStreamFactory'Class (This).getContext.openFileInput (fileName));
   end getFileInputStreamInstance;

   --  throws Exception
   function getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileOutputStream_Access is
      context : Context_Access;
   begin
        context := FileStreamFactory'Class (This).getContext;
        context.deleteFile (fileName);
        return AbFileOutputStream_Package.Create (context.openFileOutput (fileName, 0));
   end getFileOutputStreamInstance;

   --  throws Exception
   procedure delete (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
   begin
        FileStreamFactory'Class (This).getContext.deleteFile (fileName);
   end delete;

   function getContext (This : in out FileStreamFactory) return Context_Access is
   begin
        return Context_Access (This.context);
   end getContext;

   procedure getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFileInputStream_Access := FileStreamFactory'Class (This).getFileInputStreamInstance (path => path, fileName => fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileInputStreamInstance;

   procedure getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) is
      Java_Result : constant AbFileOutputStream_Access := FileStreamFactory'Class (This).getFileOutputStreamInstance (path => path, fileName => fileName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileOutputStreamInstance;

begin
   null;
   SINGLETON := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.logic.io.FileStreamFactory_Package;



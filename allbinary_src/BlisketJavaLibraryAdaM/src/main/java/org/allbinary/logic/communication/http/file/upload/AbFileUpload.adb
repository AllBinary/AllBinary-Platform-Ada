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


with org.apache.commons.fileupload.FileUploadException_Package; use org.apache.commons.fileupload.FileUploadException_Package;
with org.apache.commons.fileupload.servlet.ServletRequestContext_Package; use org.apache.commons.fileupload.servlet.ServletRequestContext_Package;

package body org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package is

   package FileUploadException_Package renames Standard.org.apache.commons.fileupload.FileUploadException_Package;
   package ServletRequestContext_Package renames Standard.org.apache.commons.fileupload.servlet.ServletRequestContext_Package;
   procedure Initialize_Fields (This : in out AbFileUpload'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileUpload'Class; fileItemFactory_Param : access FileItemFactory_Package.FileItemFactory'Class) is
      fileItemFactory : constant FileItemFactory_Access := FileItemFactory_Access (fileItemFactory_Param);
   begin
        FileUpload_Package.Initialize (This, fileItemFactory);
   end Initialize;

   function Create (fileItemFactory_Param : access FileItemFactory_Package.FileItemFactory'Class) return AbFileUpload_Access is
      This : constant AbFileUpload_Access := new AbFileUpload;
   begin
      AbFileUpload_Package.Initialize (This.all, fileItemFactory_Param);
      return This;
   end Create;

   --  throws FileUploadException, IOException
   function getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return FileItemIterator_Access is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
        return FileUpload (This).getItemIterator (ServletRequestContext_Package.Create (request));
   end getItemIterator;

   procedure getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      Java_Result : constant FileItemIterator_Access := AbFileUpload'Class (This).getItemIterator (request_Param => request_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItemIterator;

end org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package;



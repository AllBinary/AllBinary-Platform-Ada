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


package body org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package is

   procedure Initialize_Fields (This : in out AbFileUpload'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileUpload'Class; fileItemFactory_Param : access FileItemFactory'Class) is
      fileItemFactory : FileItemFactory_Access := FileItemFactory_Access (fileItemFactory_Param);
   begin
        FileUpload_Package.Initialize (This, fileItemFactory);
   end Initialize;

   function Create (fileItemFactory_Param : access FileItemFactory'Class) return AbFileUpload_Access is
      This : constant AbFileUpload_Access := new AbFileUpload;
   begin
      AbFileUpload_Package.Initialize (This.all, fileItemFactory_Param);
      return This;
   end Create;

   --  throws FileUploadException, IOException
   function getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest'Class) return FileItemIterator_Access is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
        return FileUpload (This).getItemIterator (ServletRequestContext_Package.Create (request));
   end getItemIterator;

   procedure getItemIterator (This : in out AbFileUpload; request_Param : access HttpServletRequest'Class) is
      Java_Result : constant FileItemIterator_Access := AbFileUpload'Class (This).getItemIterator (request_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItemIterator;

end org.allbinary.logic.communication.http.file.upload.AbFileUpload_Package;



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



package body org.allbinary.logic.communication.http.file.upload.FileUploadData_Package is

   procedure Initialize_Fields (This : in out FileUploadData'Class) is
   begin
      null;
      This.FILE := To_Unbounded_String ("download_file_permissions.xml");
      This.UPLOAD_TO_FILE_PATH := To_Unbounded_String ("FILE_UPLOAD_UPLOAD_TO_FILE_PATH");
      This.FILE_DATA := To_Unbounded_String ("FILE_UPLOAD_FILE_DATA");
   end Initialize_Fields;

   procedure Initialize (This : in out FileUploadData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FileUploadData_Access is
      This : constant FileUploadData_Access := new FileUploadData;
   begin
      FileUploadData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FileUploadData_Access is
   begin
        return FileUploadData_Package.instance;
   end getInstance;

begin
   null;
   instance := FileUploadData_Package.Create;

end org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;



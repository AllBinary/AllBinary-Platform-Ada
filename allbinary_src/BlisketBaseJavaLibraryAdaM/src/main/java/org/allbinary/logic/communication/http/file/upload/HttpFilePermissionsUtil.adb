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


package body org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package is

   procedure Initialize_Fields (This : in out HttpFilePermissionsUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out HttpFilePermissionsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HttpFilePermissionsUtil_Access is
      This : constant HttpFilePermissionsUtil_Access := new HttpFilePermissionsUtil;
   begin
      HttpFilePermissionsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HttpFilePermissionsUtil_Access is
   begin
        return HttpFilePermissionsUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure create (This : in out HttpFilePermissionsUtil; path_Param : access AbPath'Class) is
      path : AbPath_Access := AbPath_Access (path_Param);
      file : AbFile_Access;
   begin
        file := AbFile_Package.createAbFileFromAbPath (path);
        if not (file.isFile) then
            file.createNewFile;
        end if;
   end create;

begin
   null;
   instance := HttpFilePermissionsUtil_Package.Create;

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissionsUtil_Package;



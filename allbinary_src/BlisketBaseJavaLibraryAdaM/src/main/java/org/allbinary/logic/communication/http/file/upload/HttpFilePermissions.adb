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


package body org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package is

   procedure Initialize_Fields (This : in out HttpFilePermissions'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.userRoles := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out HttpFilePermissions'Class; fullPath : AbPath_Access) is
   begin
      Initialize_Fields (This);
        This.file := AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (fullPath.toFileSystemString, FileUploadData_Package.getInstance.FILE));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
            This.logUtil.putF (To_Unbounded_String ("Loading Privileges: ") & Java_Image (fullPath.toFileSystemString), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        if This.isFile then
            This.userRoles.add (BasicUserRoleFactory_Package.getInstance.ADMINISTRATOR);
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
            This.logUtil.putF (To_Unbounded_String ("User Roles: ") & Java_Image (This.userRoles), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (fullPath : AbPath_Access) return HttpFilePermissions_Access is
      This : constant HttpFilePermissions_Access := new HttpFilePermissions;
   begin
      Initialize (This.all, fullPath);
      return This;
   end Create;

   function isFile (This : in out HttpFilePermissions) return Boolean is
   begin
        return This.file.isFile;
   end isFile;

   function getUserRoles (This : in out HttpFilePermissions) return BasicArrayList_Access is
   begin
        return This.userRoles;
   end getUserRoles;

   procedure isFile (This : in out HttpFilePermissions) is
      Java_Result : constant Boolean := HttpFilePermissions'Class (This).isFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFile;

   procedure getUserRoles (This : in out HttpFilePermissions) is
      Java_Result : constant BasicArrayList_Access := HttpFilePermissions'Class (This).getUserRoles;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserRoles;

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;



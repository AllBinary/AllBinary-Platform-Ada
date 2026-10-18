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


   procedure Initialize (This : in out HttpFilePermissions'Class; fullPath_Param : access AbPath_Package.AbPath'Class) is
      fullPath : constant AbPath_Access := AbPath_Access (fullPath_Param);
   begin
      Initialize_Fields (This);
        This.file := AbFile_Package.createAbFileFromAbPath (AbPath_Package.Create (fullPath.toFileSystemString, FileUploadData_Package.getInstance.FILE));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
            This.logUtil.putF (To_Unbounded_String ("Loading Privileges: ") & Java_Image (fullPath.toFileSystemString), HttpFilePermissions_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        if HttpFilePermissions'Class (This).isFile then
            This.userRoles.add (BasicUserRoleFactory_Package.getInstance.ADMINISTRATOR);
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
            This.logUtil.putF (To_Unbounded_String ("User Roles: ") & Java_Image (This.userRoles), HttpFilePermissions_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (fullPath_Param : access AbPath_Package.AbPath'Class) return HttpFilePermissions_Access is
      This : constant HttpFilePermissions_Access := new HttpFilePermissions;
   begin
      HttpFilePermissions_Package.Initialize (This.all, fullPath_Param);
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

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;



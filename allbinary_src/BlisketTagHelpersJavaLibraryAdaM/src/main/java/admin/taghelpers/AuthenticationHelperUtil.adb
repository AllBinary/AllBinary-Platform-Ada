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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package; use org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;
with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package; use org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body admin.taghelpers.AuthenticationHelperUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package HttpFilePermissions_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;
   package HttpRequestUtil_Package renames Standard.org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out AuthenticationHelperUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out AuthenticationHelperUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AuthenticationHelperUtil_Access is
      This : constant AuthenticationHelperUtil_Access := new AuthenticationHelperUtil;
   begin
      AuthenticationHelperUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AuthenticationHelperUtil_Access is
   begin
        return AuthenticationHelperUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function isAuthorized (This : in out AuthenticationHelperUtil; authenticationHelper_Param : access AuthenticationHelper_Package.AuthenticationHelper'Class; filePath : Unbounded_String) return Boolean is
      authenticationHelper : constant AuthenticationHelper_Access := AuthenticationHelper_Access (authenticationHelper_Param);
      endIndex : Integer;
      fullPath : AbPath_Access;
      downloadFilePermissions : HttpFilePermissions_Access;
      userRoles : BasicArrayList_Access;
      userRole : UserRole_Access;
      basicUserRole : BasicUserRole_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
            This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START) & filePath, AuthenticationHelperUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("isAuthorized()"));
        end if;
        endIndex := HttpRequestUtil_Package.getInstance.getLastSeparatorIndex (filePath);
        fullPath := AbPath_Package.Create (Java_Image (URLGLOBALS_Package.getWebappPath) & Unbounded_Slice (filePath, (0) + 1, endIndex), StringUtil_Package.getInstance.EMPTY_STRING);
        downloadFilePermissions := HttpFilePermissions_Package.Create (fullPath);
        userRoles := downloadFilePermissions.getUserRoles;
        userRole := authenticationHelper.getRole;
        basicUserRole := userRole.getBasicUserRole;
        if userRoles.contains (Java_Object_Access (basicUserRole)) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Authorized"), AuthenticationHelperUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("isAuthorized()"));
            end if;
            return True;
        else
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Not Authorized: ") & basicUserRole.toString, AuthenticationHelperUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("isAuthorized()"));
            end if;
            return False;
        end if;
   end isAuthorized;

   procedure isAuthorized (This : in out AuthenticationHelperUtil; authenticationHelper_Param : access AuthenticationHelper_Package.AuthenticationHelper'Class; filePath : Unbounded_String) is
      Java_Result : constant Boolean := AuthenticationHelperUtil'Class (This).isAuthorized (authenticationHelper_Param => authenticationHelper_Param, filePath => filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAuthorized;

begin
   null;
   instance := AuthenticationHelperUtil_Package.Create;

end admin.taghelpers.AuthenticationHelperUtil_Package;



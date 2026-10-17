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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package; use org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;
with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package; use org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with admin.taghelpers.AuthenticationHelper_Package; use admin.taghelpers.AuthenticationHelper_Package;

package admin.taghelpers.AuthenticationHelperUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package HttpFilePermissions_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;
   package HttpRequestUtil_Package renames Standard.org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type AuthenticationHelperUtil is tagged;
   type AuthenticationHelperUtil_Access is access all AuthenticationHelperUtil'Class;
   type AuthenticationHelperUtil_Access_Array is array (Natural range <>) of AuthenticationHelperUtil_Access;
   type AuthenticationHelperUtil_Access_Array_Access is access all AuthenticationHelperUtil_Access_Array;

   type AuthenticationHelperUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AuthenticationHelperUtil_Access;

   procedure Initialize (This : in out AuthenticationHelperUtil'Class);
   function Create return AuthenticationHelperUtil_Access;
   function getInstance return AuthenticationHelperUtil_Access;
   function isAuthorized (This : in out AuthenticationHelperUtil; authenticationHelper_Param : access AuthenticationHelper_Package.AuthenticationHelper'Class; filePath : Unbounded_String) return Boolean;
   procedure isAuthorized (This : in out AuthenticationHelperUtil; authenticationHelper_Param : access AuthenticationHelper_Package.AuthenticationHelper'Class; filePath : Unbounded_String);

end admin.taghelpers.AuthenticationHelperUtil_Package;



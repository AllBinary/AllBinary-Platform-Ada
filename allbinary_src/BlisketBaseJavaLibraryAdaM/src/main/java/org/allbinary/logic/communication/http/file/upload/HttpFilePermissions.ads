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
with org.allbinary.business.user.role.BasicUserRoleFactory_Package; use org.allbinary.business.user.role.BasicUserRoleFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package BasicUserRoleFactory_Package renames org.allbinary.business.user.role.BasicUserRoleFactory_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type HttpFilePermissions is tagged;
   type HttpFilePermissions_Access is access all HttpFilePermissions'Class;
   type HttpFilePermissions_Access_Array is array (Natural range <>) of HttpFilePermissions_Access;
   type HttpFilePermissions_Access_Array_Access is access all HttpFilePermissions_Access_Array;

   type HttpFilePermissions is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      file : AbFile_Access;
      userRoles : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HttpFilePermissions'Class; fullPath : AbPath_Access);
   function Create (fullPath : AbPath_Access) return HttpFilePermissions_Access;
   function isFile (This : in out HttpFilePermissions) return Boolean;
   procedure isFile (This : in out HttpFilePermissions);
   function getUserRoles (This : in out HttpFilePermissions) return BasicArrayList_Access;
   procedure getUserRoles (This : in out HttpFilePermissions);

end org.allbinary.logic.communication.http.file.upload.HttpFilePermissions_Package;



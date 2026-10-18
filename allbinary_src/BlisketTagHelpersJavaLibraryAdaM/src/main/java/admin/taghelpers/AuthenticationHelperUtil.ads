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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.AuthenticationHelper_Package; use admin.taghelpers.AuthenticationHelper_Package;

package admin.taghelpers.AuthenticationHelperUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AuthenticationHelperUtil is tagged;
   type AuthenticationHelperUtil_Access is access all AuthenticationHelperUtil'Class;
   type AuthenticationHelperUtil_Access_Array is array (Natural range <>) of AuthenticationHelperUtil_Access;
   type AuthenticationHelperUtil_Access_Array_Access is access all AuthenticationHelperUtil_Access_Array;
   type AuthenticationHelperUtil_Access_Array_Access_Array is array (Natural range <>) of AuthenticationHelperUtil_Access_Array_Access;
   type AuthenticationHelperUtil_Access_Array_Access_Array_Access is access all AuthenticationHelperUtil_Access_Array_Access_Array;

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



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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.AuthenticationRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type AuthenticationRequestHelper is tagged;
   type AuthenticationRequestHelper_Access is access all AuthenticationRequestHelper'Class;
   type AuthenticationRequestHelper_Access_Array is array (Natural range <>) of AuthenticationRequestHelper_Access;
   type AuthenticationRequestHelper_Access_Array_Access is access all AuthenticationRequestHelper_Access_Array;
   type AuthenticationRequestHelper_Access_Array_Access_Array is array (Natural range <>) of AuthenticationRequestHelper_Access_Array_Access;
   type AuthenticationRequestHelper_Access_Array_Access_Array_Access is access all AuthenticationRequestHelper_Access_Array_Access_Array;

   type AuthenticationRequestHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      weblisketSession : WeblisketSession_Access;
      request : HttpServletRequest_Access;
   end record;

   procedure Initialize (This : in out AuthenticationRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return AuthenticationRequestHelper_Access;
   procedure Initialize (This : in out AuthenticationRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AuthenticationRequestHelper_Access;
   function generateNewPassword (This : in out AuthenticationRequestHelper) return Unbounded_String;
   function newPassword (This : in out AuthenticationRequestHelper) return Boolean;
   function changePassword (This : in out AuthenticationRequestHelper) return Boolean;
   function isRoleValid (This : in out AuthenticationRequestHelper; userName : Unbounded_String; password : Unbounded_String; roles_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure isRoleValid (This : in out AuthenticationRequestHelper; userName : Unbounded_String; password : Unbounded_String; roles_Param : access BasicArrayList_Package.BasicArrayList'Class);

end admin.taghelpers.AuthenticationRequestHelper_Package;



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
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.AuthenticationHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AuthenticationHelper is tagged;
   type AuthenticationHelper_Access is access all AuthenticationHelper'Class;
   type AuthenticationHelper_Access_Array is array (Natural range <>) of AuthenticationHelper_Access;
   type AuthenticationHelper_Access_Array_Access is access all AuthenticationHelper_Access_Array;
   type AuthenticationHelper_Access_Array_Access_Array is array (Natural range <>) of AuthenticationHelper_Access_Array_Access;
   type AuthenticationHelper_Access_Array_Access_Array_Access is access all AuthenticationHelper_Access_Array_Access_Array;

   type AuthenticationHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      authenticated : Unbounded_String;
      sessionUserName : Unbounded_String;
      role : UserRole_Access;
      timeout : Unbounded_String;
      attemptsInteger : Integer;
   end record;

   procedure Initialize (This : in out AuthenticationHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return AuthenticationHelper_Access;
   procedure Initialize (This : in out AuthenticationHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AuthenticationHelper_Access;
   procedure getFormData (This : in out AuthenticationHelper);
   function invalidateSession (This : in out AuthenticationHelper) return Integer;
   function isSessionOld (This : in out AuthenticationHelper) return Boolean;
   function isRarelyUsedSession (This : in out AuthenticationHelper) return Boolean;
   function validRole (This : in out AuthenticationHelper) return Unbounded_String;
   function invalidRole (This : in out AuthenticationHelper) return Unbounded_String;
   function isAuthenticated (This : in out AuthenticationHelper) return Boolean;
   function isAuthenticationSessionValid (This : in out AuthenticationHelper; roles_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean;
   procedure isAuthenticationSessionValid (This : in out AuthenticationHelper; roles_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure nextAttempt (This : in out AuthenticationHelper);
   function processIfNewLogin (This : in out AuthenticationHelper; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure processIfNewLogin (This : in out AuthenticationHelper; userName : Unbounded_String; password : Unbounded_String);
   function processInvalidation (This : in out AuthenticationHelper) return Boolean;
   function outputSessionInfo (This : in out AuthenticationHelper) return Unbounded_String;
   function getRole (This : in out AuthenticationHelper) return UserRole_Access;

end admin.taghelpers.AuthenticationHelper_Package;



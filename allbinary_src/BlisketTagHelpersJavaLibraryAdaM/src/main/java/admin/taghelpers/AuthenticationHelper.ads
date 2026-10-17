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
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRoleFactory_Package; use org.allbinary.business.user.role.UserRoleFactory_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.data.tables.user.UserEntityInterface_Package; use org.allbinary.data.tables.user.UserEntityInterface_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.AuthenticationHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package UserRoleFactory_Package renames Standard.org.allbinary.business.user.role.UserRoleFactory_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package UserEntityInterface_Package renames Standard.org.allbinary.data.tables.user.UserEntityInterface_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type AuthenticationHelper is tagged;
   type AuthenticationHelper_Access is access all AuthenticationHelper'Class;
   type AuthenticationHelper_Access_Array is array (Natural range <>) of AuthenticationHelper_Access;
   type AuthenticationHelper_Access_Array_Access is access all AuthenticationHelper_Access_Array;

   type AuthenticationHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      authenticated : Unbounded_String;
      sessionUserName : Unbounded_String;
      role : UserRole_Access;
      timeout : Unbounded_String;
      attemptsInteger : Integer;
   end record;

   procedure Initialize (This : in out AuthenticationHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return AuthenticationHelper_Access;
   procedure getFormData (This : in out AuthenticationHelper);
   function invalidateSession (This : in out AuthenticationHelper) return Integer;
   procedure invalidateSession (This : in out AuthenticationHelper);
   function isSessionOld (This : in out AuthenticationHelper) return Boolean;
   procedure isSessionOld (This : in out AuthenticationHelper);
   function isRarelyUsedSession (This : in out AuthenticationHelper) return Boolean;
   procedure isRarelyUsedSession (This : in out AuthenticationHelper);
   function validRole (This : in out AuthenticationHelper) return Unbounded_String;
   procedure validRole (This : in out AuthenticationHelper);
   function invalidRole (This : in out AuthenticationHelper) return Unbounded_String;
   procedure invalidRole (This : in out AuthenticationHelper);
   function isAuthenticated (This : in out AuthenticationHelper) return Boolean;
   procedure isAuthenticated (This : in out AuthenticationHelper);
   function isAuthenticationSessionValid (This : in out AuthenticationHelper; roles : BasicArrayList_Access) return Boolean;
   procedure isAuthenticationSessionValid (This : in out AuthenticationHelper; roles : BasicArrayList_Access);
   procedure nextAttempt (This : in out AuthenticationHelper);
   function processIfNewLogin (This : in out AuthenticationHelper; userName : Unbounded_String; password : Unbounded_String) return Boolean;
   procedure processIfNewLogin (This : in out AuthenticationHelper; userName : Unbounded_String; password : Unbounded_String);
   function processInvalidation (This : in out AuthenticationHelper) return Boolean;
   procedure processInvalidation (This : in out AuthenticationHelper);
   function outputSessionInfo (This : in out AuthenticationHelper) return Unbounded_String;
   procedure outputSessionInfo (This : in out AuthenticationHelper);
   function getRole (This : in out AuthenticationHelper) return UserRole_Access;
   procedure getRole (This : in out AuthenticationHelper);

end admin.taghelpers.AuthenticationHelper_Package;



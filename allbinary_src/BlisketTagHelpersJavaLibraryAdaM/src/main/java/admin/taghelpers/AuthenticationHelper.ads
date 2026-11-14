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

with AllBinary_Java;
limited with admin.taghelpers.AuthenticationHelper_Package;
package admin.taghelpers.AuthenticationHelper_Package_References is
   type AuthenticationHelper_Access is access all admin.taghelpers.AuthenticationHelper_Package.AuthenticationHelper'Class;
   type AuthenticationHelper_Access_Array is array (Natural range <>) of AuthenticationHelper_Access;
   type AuthenticationHelper_Access_Array_Access is access all AuthenticationHelper_Access_Array;
   type AuthenticationHelper_Access_Array_Access_Array is array (Natural range <>) of AuthenticationHelper_Access_Array_Access;
   type AuthenticationHelper_Access_Array_Access_Array_Access is access all AuthenticationHelper_Access_Array_Access_Array;
   type AuthenticationHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationHelper_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationHelper_Access_Array_Object'Class then AuthenticationHelper_Access_Array_Object'Class (Value.all).Value else null);
   type AuthenticationHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationHelper_Access_Array_Access_Array_Object'Class then AuthenticationHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.AuthenticationHelper_Package_References;

with admin.taghelpers.AuthenticationHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.AuthenticationHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   use type UserRole_Access;
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   use type UserRole_Access_Array;
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   use type UserRole_Access_Array_Access;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   use type UserRole_Access_Array_Access_Array;
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   use type UserRole_Access_Array_Access_Array_Access;
   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   use type WeblisketSession_Access;
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   use type WeblisketSession_Access_Array;
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access;
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   use type WeblisketSession_Access_Array_Access_Array;
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AuthenticationHelper_Access is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access;
   function "=" (Left, Right : AuthenticationHelper_Access) return Boolean renames admin.taghelpers.AuthenticationHelper_Package_References."=";
   subtype AuthenticationHelper_Access_Array is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array;
   function "=" (Left, Right : AuthenticationHelper_Access_Array) return Boolean renames admin.taghelpers.AuthenticationHelper_Package_References."=";
   subtype AuthenticationHelper_Access_Array_Access is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array_Access;
   function "=" (Left, Right : AuthenticationHelper_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationHelper_Package_References."=";
   function Java_Box (Value : AuthenticationHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AuthenticationHelper_Package_References.Java_Box;
   function Java_Unbox_AuthenticationHelper_Access_Array (Value : access Java_Object'Class) return AuthenticationHelper_Access_Array_Access renames admin.taghelpers.AuthenticationHelper_Package_References.Java_Unbox_AuthenticationHelper_Access_Array;
   subtype AuthenticationHelper_Access_Array_Access_Array is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array_Access_Array;
   function "=" (Left, Right : AuthenticationHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.AuthenticationHelper_Package_References."=";
   subtype AuthenticationHelper_Access_Array_Access_Array_Access is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthenticationHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationHelper_Package_References."=";
   function Java_Box (Value : AuthenticationHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AuthenticationHelper_Package_References.Java_Box;
   function Java_Unbox_AuthenticationHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthenticationHelper_Access_Array_Access_Array_Access renames admin.taghelpers.AuthenticationHelper_Package_References.Java_Unbox_AuthenticationHelper_Access_Array_Access_Array;

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



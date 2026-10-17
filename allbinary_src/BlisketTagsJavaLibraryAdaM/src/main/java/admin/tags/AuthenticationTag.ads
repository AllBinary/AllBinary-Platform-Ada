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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
with admin.taghelpers.AuthenticationHelperFactory_Package; use admin.taghelpers.AuthenticationHelperFactory_Package;
with admin.taghelpers.AuthenticationRequestHelperFactory_Package; use admin.taghelpers.AuthenticationRequestHelperFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.AuthenticationTag_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package AuthenticationHelperFactory_Package renames admin.taghelpers.AuthenticationHelperFactory_Package;
   package AuthenticationRequestHelperFactory_Package renames admin.taghelpers.AuthenticationRequestHelperFactory_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package WeblisketSessionData_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CustomTagSupport_Package renames tags.CustomTagSupport_Package;

   type AuthenticationTag is tagged;
   type AuthenticationTag_Access is access all AuthenticationTag'Class;
   type AuthenticationTag_Access_Array is array (Natural range <>) of AuthenticationTag_Access;
   type AuthenticationTag_Access_Array_Access is access all AuthenticationTag_Access_Array;

   type AuthenticationTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      newPassword : Unbounded_String;
      roles : BasicArrayList_Access;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out AuthenticationTag'Class);
   function Create return AuthenticationTag_Access;
   procedure setCommand (This : in out AuthenticationTag; command : Unbounded_String);
   procedure setUserName (This : in out AuthenticationTag; userName : Unbounded_String);
   procedure setPassword (This : in out AuthenticationTag; value : Unbounded_String);
   procedure setNewPassword (This : in out AuthenticationTag; value : Unbounded_String);
   procedure setRoles (This : in out AuthenticationTag; values : BasicArrayList_Access);
   function changePassword (This : in out AuthenticationTag) return Boolean;
   procedure changePassword (This : in out AuthenticationTag);
   function newPassword (This : in out AuthenticationTag) return Boolean;
   procedure newPassword (This : in out AuthenticationTag);
   function invalidateSession (This : in out AuthenticationTag) return Integer;
   procedure invalidateSession (This : in out AuthenticationTag);
   function isSessionOld (This : in out AuthenticationTag) return Boolean;
   procedure isSessionOld (This : in out AuthenticationTag);
   function isRoleValid (This : in out AuthenticationTag) return Boolean;
   procedure isRoleValid (This : in out AuthenticationTag);
   function validRole (This : in out AuthenticationTag) return Unbounded_String;
   procedure validRole (This : in out AuthenticationTag);
   function invalidRole (This : in out AuthenticationTag) return Unbounded_String;
   procedure invalidRole (This : in out AuthenticationTag);
   function isAuthenticationSessionValid (This : in out AuthenticationTag) return Boolean;
   procedure isAuthenticationSessionValid (This : in out AuthenticationTag);
   function processIfNewLogin (This : in out AuthenticationTag) return Boolean;
   procedure processIfNewLogin (This : in out AuthenticationTag);
   function processInvalidation (This : in out AuthenticationTag) return Boolean;
   procedure processInvalidation (This : in out AuthenticationTag);
   function doStartTag (This : in out AuthenticationTag) return Integer;
   procedure doStartTag (This : in out AuthenticationTag);

end admin.tags.AuthenticationTag_Package;



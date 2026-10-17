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
with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
with org.allbinary.business.init.InstallerInfo_Package; use org.allbinary.business.init.InstallerInfo_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRoleFactory_Package; use org.allbinary.business.user.role.BasicUserRoleFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.FileAuthenticationTag_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package InstallerInfo_Package renames Standard.org.allbinary.business.init.InstallerInfo_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package BasicUserRoleFactory_Package renames Standard.org.allbinary.business.user.role.BasicUserRoleFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package BasicWeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;
   package WeblisketSessionData_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;

   type FileAuthenticationTag is tagged;
   type FileAuthenticationTag_Access is access all FileAuthenticationTag'Class;
   type FileAuthenticationTag_Access_Array is array (Natural range <>) of FileAuthenticationTag_Access;
   type FileAuthenticationTag_Access_Array_Access is access all FileAuthenticationTag_Access_Array;

   type FileAuthenticationTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      attemptsInteger : Integer;
      weblisketSession : BasicWeblisketSession_Access;
      request : HttpServletRequest_Access;
      command : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      newPassword : Unbounded_String;
      authenticated : Unbounded_String;
      sessionUserName : Unbounded_String;
      role : BasicUserRole_Access;
      timeout : Unbounded_String;
      roles : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out FileAuthenticationTag'Class);
   function Create return FileAuthenticationTag_Access;
   procedure setCommand (This : in out FileAuthenticationTag; command : Unbounded_String);
   procedure setUserName (This : in out FileAuthenticationTag; userName : Unbounded_String);
   procedure setPassword (This : in out FileAuthenticationTag; value : Unbounded_String);
   procedure setNewPassword (This : in out FileAuthenticationTag; value : Unbounded_String);
   procedure setRoles (This : in out FileAuthenticationTag; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure makeSessionValid (This : in out FileAuthenticationTag; storedRole_Param : access BasicUserRole_Package.BasicUserRole'Class; userName : Unbounded_String);
   procedure getFormData (This : in out FileAuthenticationTag);
   procedure nextAttempt (This : in out FileAuthenticationTag);
   function changePassword (This : in out FileAuthenticationTag) return Boolean;
   function invalidateSession (This : in out FileAuthenticationTag) return Integer;
   function isSessionOld (This : in out FileAuthenticationTag) return Boolean;
   function isRarelyUsedSession (This : in out FileAuthenticationTag) return Boolean;
   function isRoleValid (This : in out FileAuthenticationTag) return Boolean;
   function validRole (This : in out FileAuthenticationTag) return Unbounded_String;
   function invalidRole (This : in out FileAuthenticationTag) return Unbounded_String;
   function isAuthenticationSessionValid (This : in out FileAuthenticationTag) return Boolean;
   function processIfNewLogin (This : in out FileAuthenticationTag) return Boolean;
   function processInvalidation (This : in out FileAuthenticationTag) return Boolean;
   function doStartTag (This : in out FileAuthenticationTag) return Integer;

end admin.tags.FileAuthenticationTag_Package;



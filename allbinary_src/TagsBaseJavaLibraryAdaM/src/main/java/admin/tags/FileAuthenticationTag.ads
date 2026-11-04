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

limited with admin.tags.FileAuthenticationTag_Package;
package admin.tags.FileAuthenticationTag_Package_References is
   type FileAuthenticationTag_Access is access all admin.tags.FileAuthenticationTag_Package.FileAuthenticationTag'Class;
   type FileAuthenticationTag_Access_Array is array (Natural range <>) of FileAuthenticationTag_Access;
   type FileAuthenticationTag_Access_Array_Access is access all FileAuthenticationTag_Access_Array;
   type FileAuthenticationTag_Access_Array_Access_Array is array (Natural range <>) of FileAuthenticationTag_Access_Array_Access;
   type FileAuthenticationTag_Access_Array_Access_Array_Access is access all FileAuthenticationTag_Access_Array_Access_Array;
end admin.tags.FileAuthenticationTag_Package_References;

with admin.tags.FileAuthenticationTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;
limited with org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.FileAuthenticationTag_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package BasicWeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;
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
   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   use type BasicUserRole_Access;
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   use type BasicUserRole_Access_Array;
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access;
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   use type BasicUserRole_Access_Array_Access_Array;
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   use type BasicUserRole_Access_Array_Access_Array_Access;
   subtype BasicWeblisketSession_Access is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access;
   use type BasicWeblisketSession_Access;
   subtype BasicWeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array;
   use type BasicWeblisketSession_Access_Array;
   subtype BasicWeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array_Access;
   use type BasicWeblisketSession_Access_Array_Access;
   subtype BasicWeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array_Access_Array;
   use type BasicWeblisketSession_Access_Array_Access_Array;
   subtype BasicWeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array_Access_Array_Access;
   use type BasicWeblisketSession_Access_Array_Access_Array_Access;
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


   subtype FileAuthenticationTag_Access is admin.tags.FileAuthenticationTag_Package_References.FileAuthenticationTag_Access;
   function "=" (Left, Right : FileAuthenticationTag_Access) return Boolean renames admin.tags.FileAuthenticationTag_Package_References."=";
   subtype FileAuthenticationTag_Access_Array is admin.tags.FileAuthenticationTag_Package_References.FileAuthenticationTag_Access_Array;
   function "=" (Left, Right : FileAuthenticationTag_Access_Array) return Boolean renames admin.tags.FileAuthenticationTag_Package_References."=";
   subtype FileAuthenticationTag_Access_Array_Access is admin.tags.FileAuthenticationTag_Package_References.FileAuthenticationTag_Access_Array_Access;
   function "=" (Left, Right : FileAuthenticationTag_Access_Array_Access) return Boolean renames admin.tags.FileAuthenticationTag_Package_References."=";
   subtype FileAuthenticationTag_Access_Array_Access_Array is admin.tags.FileAuthenticationTag_Package_References.FileAuthenticationTag_Access_Array_Access_Array;
   function "=" (Left, Right : FileAuthenticationTag_Access_Array_Access_Array) return Boolean renames admin.tags.FileAuthenticationTag_Package_References."=";
   subtype FileAuthenticationTag_Access_Array_Access_Array_Access is admin.tags.FileAuthenticationTag_Package_References.FileAuthenticationTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileAuthenticationTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.FileAuthenticationTag_Package_References."=";

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



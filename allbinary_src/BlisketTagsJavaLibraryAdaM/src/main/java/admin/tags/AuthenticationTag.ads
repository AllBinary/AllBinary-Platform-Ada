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
limited with admin.tags.AuthenticationTag_Package;
package admin.tags.AuthenticationTag_Package_References is
   type AuthenticationTag_Access is access all admin.tags.AuthenticationTag_Package.AuthenticationTag'Class;
   type AuthenticationTag_Access_Array is array (Natural range <>) of AuthenticationTag_Access;
   type AuthenticationTag_Access_Array_Access is access all AuthenticationTag_Access_Array;
   type AuthenticationTag_Access_Array_Access_Array is array (Natural range <>) of AuthenticationTag_Access_Array_Access;
   type AuthenticationTag_Access_Array_Access_Array_Access is access all AuthenticationTag_Access_Array_Access_Array;
   type AuthenticationTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationTag_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationTag_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationTag_Access_Array_Object'Class then AuthenticationTag_Access_Array_Object'Class (Value.all).Value else null);
   type AuthenticationTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationTag_Access_Array_Access_Array_Object'Class then AuthenticationTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.AuthenticationTag_Package_References;

with admin.tags.AuthenticationTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.AuthenticationTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   subtype AuthenticationTag_Access is admin.tags.AuthenticationTag_Package_References.AuthenticationTag_Access;
   function "=" (Left, Right : AuthenticationTag_Access) return Boolean renames admin.tags.AuthenticationTag_Package_References."=";
   subtype AuthenticationTag_Access_Array is admin.tags.AuthenticationTag_Package_References.AuthenticationTag_Access_Array;
   function "=" (Left, Right : AuthenticationTag_Access_Array) return Boolean renames admin.tags.AuthenticationTag_Package_References."=";
   subtype AuthenticationTag_Access_Array_Access is admin.tags.AuthenticationTag_Package_References.AuthenticationTag_Access_Array_Access;
   function "=" (Left, Right : AuthenticationTag_Access_Array_Access) return Boolean renames admin.tags.AuthenticationTag_Package_References."=";
   function Java_Box (Value : AuthenticationTag_Access_Array_Access) return Java_Object_Access renames admin.tags.AuthenticationTag_Package_References.Java_Box;
   function Java_Unbox_AuthenticationTag_Access_Array (Value : access Java_Object'Class) return AuthenticationTag_Access_Array_Access renames admin.tags.AuthenticationTag_Package_References.Java_Unbox_AuthenticationTag_Access_Array;
   subtype AuthenticationTag_Access_Array_Access_Array is admin.tags.AuthenticationTag_Package_References.AuthenticationTag_Access_Array_Access_Array;
   function "=" (Left, Right : AuthenticationTag_Access_Array_Access_Array) return Boolean renames admin.tags.AuthenticationTag_Package_References."=";
   subtype AuthenticationTag_Access_Array_Access_Array_Access is admin.tags.AuthenticationTag_Package_References.AuthenticationTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthenticationTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.AuthenticationTag_Package_References."=";
   function Java_Box (Value : AuthenticationTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.AuthenticationTag_Package_References.Java_Box;
   function Java_Unbox_AuthenticationTag_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthenticationTag_Access_Array_Access_Array_Access renames admin.tags.AuthenticationTag_Package_References.Java_Unbox_AuthenticationTag_Access_Array_Access_Array;

   type AuthenticationTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      newPassword_Field : Unbounded_String;
      roles : BasicArrayList_Access;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out AuthenticationTag'Class);
   function Create return AuthenticationTag_Access;
   procedure setCommand (This : in out AuthenticationTag; command : Unbounded_String);
   procedure setUserName (This : in out AuthenticationTag; userName : Unbounded_String);
   procedure setPassword (This : in out AuthenticationTag; value : Unbounded_String);
   procedure setNewPassword (This : in out AuthenticationTag; value : Unbounded_String);
   procedure setRoles (This : in out AuthenticationTag; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function changePassword (This : in out AuthenticationTag) return Boolean;
   function newPassword (This : in out AuthenticationTag) return Boolean;
   function invalidateSession (This : in out AuthenticationTag) return Integer;
   function isSessionOld (This : in out AuthenticationTag) return Boolean;
   function isRoleValid (This : in out AuthenticationTag) return Boolean;
   function validRole (This : in out AuthenticationTag) return Unbounded_String;
   function invalidRole (This : in out AuthenticationTag) return Unbounded_String;
   function isAuthenticationSessionValid (This : in out AuthenticationTag) return Boolean;
   function processIfNewLogin (This : in out AuthenticationTag) return Boolean;
   function processInvalidation (This : in out AuthenticationTag) return Boolean;
   function doStartTag (This : in out AuthenticationTag) return Integer;

end admin.tags.AuthenticationTag_Package;



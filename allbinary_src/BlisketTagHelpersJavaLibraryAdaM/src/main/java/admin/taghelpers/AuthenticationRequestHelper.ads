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
limited with admin.taghelpers.AuthenticationRequestHelper_Package;
package admin.taghelpers.AuthenticationRequestHelper_Package_References is
   type AuthenticationRequestHelper_Access is access all admin.taghelpers.AuthenticationRequestHelper_Package.AuthenticationRequestHelper'Class;
   type AuthenticationRequestHelper_Access_Array is array (Natural range <>) of AuthenticationRequestHelper_Access;
   type AuthenticationRequestHelper_Access_Array_Access is access all AuthenticationRequestHelper_Access_Array;
   type AuthenticationRequestHelper_Access_Array_Access_Array is array (Natural range <>) of AuthenticationRequestHelper_Access_Array_Access;
   type AuthenticationRequestHelper_Access_Array_Access_Array_Access is access all AuthenticationRequestHelper_Access_Array_Access_Array;
   type AuthenticationRequestHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationRequestHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationRequestHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationRequestHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationRequestHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationRequestHelper_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationRequestHelper_Access_Array_Object'Class then AuthenticationRequestHelper_Access_Array_Object'Class (Value.all).Value else null);
   type AuthenticationRequestHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationRequestHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationRequestHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationRequestHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationRequestHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationRequestHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationRequestHelper_Access_Array_Access_Array_Object'Class then AuthenticationRequestHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.AuthenticationRequestHelper_Package_References;

with admin.taghelpers.AuthenticationRequestHelper_Package_References;
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
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.AuthenticationRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AuthenticationRequestHelper_Access is admin.taghelpers.AuthenticationRequestHelper_Package_References.AuthenticationRequestHelper_Access;
   function "=" (Left, Right : AuthenticationRequestHelper_Access) return Boolean renames admin.taghelpers.AuthenticationRequestHelper_Package_References."=";
   subtype AuthenticationRequestHelper_Access_Array is admin.taghelpers.AuthenticationRequestHelper_Package_References.AuthenticationRequestHelper_Access_Array;
   function "=" (Left, Right : AuthenticationRequestHelper_Access_Array) return Boolean renames admin.taghelpers.AuthenticationRequestHelper_Package_References."=";
   subtype AuthenticationRequestHelper_Access_Array_Access is admin.taghelpers.AuthenticationRequestHelper_Package_References.AuthenticationRequestHelper_Access_Array_Access;
   function "=" (Left, Right : AuthenticationRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationRequestHelper_Package_References."=";
   function Java_Box (Value : AuthenticationRequestHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AuthenticationRequestHelper_Package_References.Java_Box;
   function Java_Unbox_AuthenticationRequestHelper_Access_Array (Value : access Java_Object'Class) return AuthenticationRequestHelper_Access_Array_Access renames admin.taghelpers.AuthenticationRequestHelper_Package_References.Java_Unbox_AuthenticationRequestHelper_Access_Array;
   subtype AuthenticationRequestHelper_Access_Array_Access_Array is admin.taghelpers.AuthenticationRequestHelper_Package_References.AuthenticationRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : AuthenticationRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.AuthenticationRequestHelper_Package_References."=";
   subtype AuthenticationRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.AuthenticationRequestHelper_Package_References.AuthenticationRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthenticationRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationRequestHelper_Package_References."=";
   function Java_Box (Value : AuthenticationRequestHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AuthenticationRequestHelper_Package_References.Java_Box;
   function Java_Unbox_AuthenticationRequestHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthenticationRequestHelper_Access_Array_Access_Array_Access renames admin.taghelpers.AuthenticationRequestHelper_Package_References.Java_Unbox_AuthenticationRequestHelper_Access_Array_Access_Array;

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



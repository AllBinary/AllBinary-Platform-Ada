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
limited with org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;
package org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References is
   type BasicWeblisketSession_Access is access all org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package.BasicWeblisketSession'Class;
   type BasicWeblisketSession_Access_Array is array (Natural range <>) of BasicWeblisketSession_Access;
   type BasicWeblisketSession_Access_Array_Access is access all BasicWeblisketSession_Access_Array;
   type BasicWeblisketSession_Access_Array_Access_Array is array (Natural range <>) of BasicWeblisketSession_Access_Array_Access;
   type BasicWeblisketSession_Access_Array_Access_Array_Access is access all BasicWeblisketSession_Access_Array_Access_Array;
   type BasicWeblisketSession_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicWeblisketSession_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicWeblisketSession_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicWeblisketSession_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicWeblisketSession_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicWeblisketSession_Access_Array_Access is (if Value /= null and then Value.all in BasicWeblisketSession_Access_Array_Object'Class then BasicWeblisketSession_Access_Array_Object'Class (Value.all).Value else null);
   type BasicWeblisketSession_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicWeblisketSession_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicWeblisketSession_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicWeblisketSession_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicWeblisketSession_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicWeblisketSession_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicWeblisketSession_Access_Array_Access_Array_Object'Class then BasicWeblisketSession_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References;

with org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpSession_Package; use javax.servlet.http.HttpSession_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRole_Package_References;

package org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package is

   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicWeblisketSession_Access is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access;
   function "=" (Left, Right : BasicWeblisketSession_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References."=";
   subtype BasicWeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array;
   function "=" (Left, Right : BasicWeblisketSession_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References."=";
   subtype BasicWeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array_Access;
   function "=" (Left, Right : BasicWeblisketSession_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References."=";
   function Java_Box (Value : BasicWeblisketSession_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.Java_Box;
   function Java_Unbox_BasicWeblisketSession_Access_Array (Value : access Java_Object'Class) return BasicWeblisketSession_Access_Array_Access renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.Java_Unbox_BasicWeblisketSession_Access_Array;
   subtype BasicWeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWeblisketSession_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References."=";
   subtype BasicWeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.BasicWeblisketSession_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWeblisketSession_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References."=";
   function Java_Box (Value : BasicWeblisketSession_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.Java_Box;
   function Java_Unbox_BasicWeblisketSession_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicWeblisketSession_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package_References.Java_Unbox_BasicWeblisketSession_Access_Array_Access_Array;

   type BasicWeblisketSession is new Java_Object with record
      session : HttpSession_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out BasicWeblisketSession'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return BasicWeblisketSession_Access;
   procedure setRole (This : in out BasicWeblisketSession; aRole_Param : access BasicUserRole_Package.BasicUserRole'Class);
   function getRole (This : in out BasicWeblisketSession) return BasicUserRole_Access;
   procedure setPassword (This : in out BasicWeblisketSession; password : Unbounded_String);
   procedure setUserName (This : in out BasicWeblisketSession; userName : Unbounded_String);
   procedure setPaymentMethod (This : in out BasicWeblisketSession; value : Unbounded_String);
   procedure setAuthenticated (This : in out BasicWeblisketSession);
   procedure setAttempts (This : in out BasicWeblisketSession; value : Integer);
   procedure setTimeout (This : in out BasicWeblisketSession; value : Unbounded_String);
   procedure setStoreName (This : in out BasicWeblisketSession; value : Unbounded_String);
   function getWebAppPath (This : in out BasicWeblisketSession) return Unbounded_String;
   function getUserName (This : in out BasicWeblisketSession) return Unbounded_String;
   function getPassword (This : in out BasicWeblisketSession) return Unbounded_String;
   function getPaymentMethod (This : in out BasicWeblisketSession) return Unbounded_String;
   function getAuthentication (This : in out BasicWeblisketSession) return Unbounded_String;
   function getAttempts (This : in out BasicWeblisketSession) return Integer;
   function getTimeout (This : in out BasicWeblisketSession) return Unbounded_String;
   function getStoreName (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure setAuthenticated (This : in out BasicWeblisketSession; value : Boolean);
   procedure clear (This : in out BasicWeblisketSession);
   function getCreationTime (This : in out BasicWeblisketSession) return Long_Long_Integer;
   function getLastAccessedTime (This : in out BasicWeblisketSession) return Long_Long_Integer;

end org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;



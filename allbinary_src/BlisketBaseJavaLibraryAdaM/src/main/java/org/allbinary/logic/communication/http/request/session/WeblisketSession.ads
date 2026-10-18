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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpSession_Package; use javax.servlet.http.HttpSession_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package org.allbinary.logic.communication.http.request.session.WeblisketSession_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;

   type WeblisketSession is tagged;
   type WeblisketSession_Access is access all WeblisketSession'Class;
   type WeblisketSession_Access_Array is array (Natural range <>) of WeblisketSession_Access;
   type WeblisketSession_Access_Array_Access is access all WeblisketSession_Access_Array;
   type WeblisketSession_Access_Array_Access_Array is array (Natural range <>) of WeblisketSession_Access_Array_Access;
   type WeblisketSession_Access_Array_Access_Array_Access is access all WeblisketSession_Access_Array_Access_Array;

   type WeblisketSession is new Java_Object and WeblisketSessionInterface with record
      session : HttpSession_Access;
   end record;

   procedure Initialize (This : in out WeblisketSession'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WeblisketSession_Access;
   procedure Initialize (This : in out WeblisketSession'Class; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return WeblisketSession_Access;
   function getId (This : in out WeblisketSession) return Unbounded_String;
   procedure setPassword (This : in out WeblisketSession; password : Unbounded_String);
   procedure setUserName (This : in out WeblisketSession; userName : Unbounded_String);
   procedure setPaymentMethod (This : in out WeblisketSession; value : Unbounded_String);
   procedure setAuthenticated (This : in out WeblisketSession);
   procedure setRole (This : in out WeblisketSession; aRole_Param : access UserRole_Package.UserRole'Class);
   procedure setAttempts (This : in out WeblisketSession; value : Integer);
   procedure setTimeout (This : in out WeblisketSession; value : Unbounded_String);
   procedure setStoreName (This : in out WeblisketSession; value : Unbounded_String);
   function getWebAppPath (This : in out WeblisketSession) return Unbounded_String;
   function getUserName (This : in out WeblisketSession) return Unbounded_String;
   function getPassword (This : in out WeblisketSession) return Unbounded_String;
   function getPaymentMethod (This : in out WeblisketSession) return Unbounded_String;
   function getAuthentication (This : in out WeblisketSession) return Unbounded_String;
   function getAttempts (This : in out WeblisketSession) return Integer;
   function getTimeout (This : in out WeblisketSession) return Unbounded_String;
   function getStoreName (This : in out WeblisketSession) return Unbounded_String;
   function getRole (This : in out WeblisketSession) return UserRole_Access;
   function getOrder (This : in out WeblisketSession) return OrderInterface_Access;
   procedure setAuthenticated (This : in out WeblisketSession; value : Boolean);
   procedure clear (This : in out WeblisketSession);
   function getCreationTime (This : in out WeblisketSession) return Long_Long_Integer;
   function getLastAccessedTime (This : in out WeblisketSession) return Long_Long_Integer;
   procedure removeBasket (This : in out WeblisketSession);

end org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;



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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpSession_Package; use javax.servlet.http.HttpSession_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.role.BasicUserRole_Package; use org.allbinary.business.user.role.BasicUserRole_Package;
with org.allbinary.business.user.role.BasicUserRoleData_Package; use org.allbinary.business.user.role.BasicUserRoleData_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;

package org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package is

   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package UserData_Package renames org.allbinary.business.user.UserData_Package;
   package PaymentGatewayData_Package renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package BasicUserRole_Package renames org.allbinary.business.user.role.BasicUserRole_Package;
   package BasicUserRoleData_Package renames org.allbinary.business.user.role.BasicUserRoleData_Package;
   package BooleanFactory_Package renames org.allbinary.logic.java.bool.BooleanFactory_Package;

   type BasicWeblisketSession is tagged;
   type BasicWeblisketSession_Access is access all BasicWeblisketSession'Class;
   type BasicWeblisketSession_Access_Array is array (Natural range <>) of BasicWeblisketSession_Access;
   type BasicWeblisketSession_Access_Array_Access is access all BasicWeblisketSession_Access_Array;

   type BasicWeblisketSession is new Java_Object with record
      session : HttpSession_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out BasicWeblisketSession'Class; pageContext : PageContext_Access);
   function Create (pageContext : PageContext_Access) return BasicWeblisketSession_Access;
   procedure setRole (This : in out BasicWeblisketSession; aRole : BasicUserRole_Access);
   function getRole (This : in out BasicWeblisketSession) return BasicUserRole_Access;
   procedure getRole (This : in out BasicWeblisketSession);
   procedure setPassword (This : in out BasicWeblisketSession; password : Unbounded_String);
   procedure setUserName (This : in out BasicWeblisketSession; userName : Unbounded_String);
   procedure setPaymentMethod (This : in out BasicWeblisketSession; value : Unbounded_String);
   procedure setAuthenticated (This : in out BasicWeblisketSession);
   procedure setAttempts (This : in out BasicWeblisketSession; value : Integer);
   procedure setTimeout (This : in out BasicWeblisketSession; value : Unbounded_String);
   procedure setStoreName (This : in out BasicWeblisketSession; value : Unbounded_String);
   function getWebAppPath (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getWebAppPath (This : in out BasicWeblisketSession);
   function getUserName (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getUserName (This : in out BasicWeblisketSession);
   function getPassword (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getPassword (This : in out BasicWeblisketSession);
   function getPaymentMethod (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getPaymentMethod (This : in out BasicWeblisketSession);
   function getAuthentication (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getAuthentication (This : in out BasicWeblisketSession);
   function getAttempts (This : in out BasicWeblisketSession) return Integer;
   procedure getAttempts (This : in out BasicWeblisketSession);
   function getTimeout (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getTimeout (This : in out BasicWeblisketSession);
   function getStoreName (This : in out BasicWeblisketSession) return Unbounded_String;
   procedure getStoreName (This : in out BasicWeblisketSession);
   procedure setAuthenticated (This : in out BasicWeblisketSession; value : Boolean);
   procedure clear (This : in out BasicWeblisketSession);
   function getCreationTime (This : in out BasicWeblisketSession) return Long_Long_Integer;
   procedure getCreationTime (This : in out BasicWeblisketSession);
   function getLastAccessedTime (This : in out BasicWeblisketSession) return Long_Long_Integer;
   procedure getLastAccessedTime (This : in out BasicWeblisketSession);

end org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;



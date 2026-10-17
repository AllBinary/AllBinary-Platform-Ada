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
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;

package org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package BasicUserRole_Package renames Standard.org.allbinary.business.user.role.BasicUserRole_Package;
   package BasicUserRoleData_Package renames Standard.org.allbinary.business.user.role.BasicUserRoleData_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;

   type BasicWeblisketSession is tagged;
   type BasicWeblisketSession_Access is access all BasicWeblisketSession'Class;
   type BasicWeblisketSession_Access_Array is array (Natural range <>) of BasicWeblisketSession_Access;
   type BasicWeblisketSession_Access_Array_Access is access all BasicWeblisketSession_Access_Array;

   type BasicWeblisketSession is new Java_Object with record
      session : HttpSession_Access;
      pageContext : PageContext_Access;
   end record;

   procedure Initialize (This : in out BasicWeblisketSession'Class; pageContext_Param : access PageContext'Class);
   function Create (pageContext_Param : access PageContext'Class) return BasicWeblisketSession_Access;
   procedure setRole (This : in out BasicWeblisketSession; aRole_Param : access BasicUserRole'Class);
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



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


with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.role.BasicUserRoleData_Package; use org.allbinary.business.user.role.BasicUserRoleData_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;

package body org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package BasicUserRoleData_Package renames Standard.org.allbinary.business.user.role.BasicUserRoleData_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   procedure Initialize_Fields (This : in out BasicWeblisketSession'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWeblisketSession'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      request : HttpServletRequest_Access;
   begin
      Initialize_Fields (This);
        This.pageContext := pageContext;
        request := HttpServletRequest_Access (pageContext.getRequest);
        This.session := request.getSession (True);
   end Initialize;

   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return BasicWeblisketSession_Access is
      This : constant BasicWeblisketSession_Access := new BasicWeblisketSession;
   begin
      BasicWeblisketSession_Package.Initialize (This.all, pageContext_Param);
      return This;
   end Create;

   procedure setRole (This : in out BasicWeblisketSession; aRole_Param : access BasicUserRole_Package.BasicUserRole'Class) is
      aRole : constant BasicUserRole_Access := BasicUserRole_Access (aRole_Param);
   begin
        This.session.setAttribute (BasicUserRoleData_Package.NAME.toString, aRole);
   end setRole;

   function getRole (This : in out BasicWeblisketSession) return BasicUserRole_Access is
   begin
        return BasicUserRole_Access (This.session.getAttribute (BasicUserRoleData_Package.NAME.toString));
   end getRole;

   procedure setPassword (This : in out BasicWeblisketSession; password : Unbounded_String) is
   begin
        This.session.setAttribute (UserData_Package.PASSWORD, password);
   end setPassword;

   procedure setUserName (This : in out BasicWeblisketSession; userName : Unbounded_String) is
   begin
        This.session.setAttribute (UserData_Package.USERNAME, userName);
   end setUserName;

   procedure setPaymentMethod (This : in out BasicWeblisketSession; value : Unbounded_String) is
   begin
        This.session.setAttribute (PaymentGatewayData_Package.NAME.toString, value);
   end setPaymentMethod;

   procedure setAuthenticated (This : in out BasicWeblisketSession) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.AUTHENTICATED, BooleanFactory_Package.getInstance.TRUE_STRING);
   end setAuthenticated;

   procedure setAttempts (This : in out BasicWeblisketSession; value : Integer) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.ATTEMPTS, value);
   end setAttempts;

   procedure setTimeout (This : in out BasicWeblisketSession; value : Unbounded_String) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.TIMEOUT, value);
   end setTimeout;

   procedure setStoreName (This : in out BasicWeblisketSession; value : Unbounded_String) is
   begin
        This.session.setAttribute (StoreFrontData_Package.getInstance.NAME, value);
   end setStoreName;

   function getWebAppPath (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (org_Package.allbinary.globals.GLOBALS2.WEBAPPPATH));
   end getWebAppPath;

   function getUserName (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (UserData_Package.USERNAME));
   end getUserName;

   function getPassword (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (UserData_Package.PASSWORD));
   end getPassword;

   function getPaymentMethod (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (PaymentGatewayData_Package.NAME.toString));
   end getPaymentMethod;

   function getAuthentication (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (WeblisketSessionData_Package.AUTHENTICATED));
   end getAuthentication;

   function getAttempts (This : in out BasicWeblisketSession) return Integer is
   begin
        return Java_Unbox_Integer (This.session.getAttribute (WeblisketSessionData_Package.ATTEMPTS));
   end getAttempts;

   function getTimeout (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (WeblisketSessionData_Package.TIMEOUT));
   end getTimeout;

   function getStoreName (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (StoreFrontData_Package.getInstance.NAME));
   end getStoreName;

   procedure setAuthenticated (This : in out BasicWeblisketSession; value : Boolean) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.AUTHENTICATED, BooleanFactory_Package.getInstance.FALSE_STRING);
   end setAuthenticated;

   procedure clear (This : in out BasicWeblisketSession) is
   begin
        This.session.removeAttribute (WeblisketSessionData_Package.AUTHENTICATED);
        This.session.removeAttribute (WeblisketSessionData_Package.TIMEOUT);
        This.session.removeAttribute (BasicUserRoleData_Package.NAME.toString);
        This.session.removeAttribute (UserData_Package.USERNAME);
   end clear;

   function getCreationTime (This : in out BasicWeblisketSession) return Long_Long_Integer is
   begin
        return This.session.getCreationTime;
   end getCreationTime;

   function getLastAccessedTime (This : in out BasicWeblisketSession) return Long_Long_Integer is
      lastAccessedTime : Long_Long_Integer;
   begin
        lastAccessedTime := This.session.getLastAccessedTime;
        return lastAccessedTime;
   end getLastAccessedTime;

end org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;



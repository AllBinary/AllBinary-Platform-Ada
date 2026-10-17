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


package body org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package is

   procedure Initialize_Fields (This : in out BasicWeblisketSession'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicWeblisketSession'Class; pageContext : PageContext_Access) is
      request : HttpServletRequest_Access;
   begin
      Initialize_Fields (This);
        This.pageContext := pageContext;
        request := HttpServletRequest_Access (pageContext.getRequest);
        This.session := request.getSession (True);
   end Initialize;

   function Create (pageContext : PageContext_Access) return BasicWeblisketSession_Access is
      This : constant BasicWeblisketSession_Access := new BasicWeblisketSession;
   begin
      Initialize (This.all, pageContext);
      return This;
   end Create;

   procedure setRole (This : in out BasicWeblisketSession; aRole : BasicUserRole_Access) is
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
        return Unbounded_String (This.session.getAttribute (org_Package.allbinary.globals.GLOBALS2.WEBAPPPATH));
   end getWebAppPath;

   function getUserName (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (UserData_Package.USERNAME));
   end getUserName;

   function getPassword (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (UserData_Package.PASSWORD));
   end getPassword;

   function getPaymentMethod (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (PaymentGatewayData_Package.NAME.toString));
   end getPaymentMethod;

   function getAuthentication (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (WeblisketSessionData_Package.AUTHENTICATED));
   end getAuthentication;

   function getAttempts (This : in out BasicWeblisketSession) return Integer is
   begin
        return Integer (This.session.getAttribute (WeblisketSessionData_Package.ATTEMPTS));
   end getAttempts;

   function getTimeout (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (WeblisketSessionData_Package.TIMEOUT));
   end getTimeout;

   function getStoreName (This : in out BasicWeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (StoreFrontData_Package.getInstance.NAME));
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

   procedure getRole (This : in out BasicWeblisketSession) is
      Java_Result : constant BasicUserRole_Access := BasicWeblisketSession'Class (This).getRole;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRole;

   procedure getWebAppPath (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getWebAppPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWebAppPath;

   procedure getUserName (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getUserName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserName;

   procedure getPassword (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getPassword;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPassword;

   procedure getPaymentMethod (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getPaymentMethod;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentMethod;

   procedure getAuthentication (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getAuthentication;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAuthentication;

   procedure getAttempts (This : in out BasicWeblisketSession) is
      Java_Result : constant Integer := BasicWeblisketSession'Class (This).getAttempts;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAttempts;

   procedure getTimeout (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getTimeout;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeout;

   procedure getStoreName (This : in out BasicWeblisketSession) is
      Java_Result : constant Unbounded_String := BasicWeblisketSession'Class (This).getStoreName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreName;

   procedure getCreationTime (This : in out BasicWeblisketSession) is
      Java_Result : constant Long_Long_Integer := BasicWeblisketSession'Class (This).getCreationTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCreationTime;

   procedure getLastAccessedTime (This : in out BasicWeblisketSession) is
      Java_Result : constant Long_Long_Integer := BasicWeblisketSession'Class (This).getLastAccessedTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastAccessedTime;

end org.allbinary.logic.communication.http.request.session.BasicWeblisketSession_Package;



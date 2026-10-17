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


package body org.allbinary.logic.communication.http.request.session.WeblisketSession_Package is

   procedure Initialize_Fields (This : in out WeblisketSession'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out WeblisketSession'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        Initialize (This, hashMap, HttpServletRequest_Access (pageContext.getRequest));
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return WeblisketSession_Access is
      This : constant WeblisketSession_Access := new WeblisketSession;
   begin
      WeblisketSession_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out WeblisketSession'Class; hashMap : HashMap_Access; httpServletRequest : HttpServletRequest_Access) is
      propertiesHashMap : HashMap_Access;
      request : HttpServletRequest_Access;
   begin
      Initialize_Fields (This);
        propertiesHashMap := hashMap;
        request := httpServletRequest;
        This.session := request.getSession (True);
        if (This.getStoreName) = (null) then
            This.setStoreName (Unbounded_String (propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME)));
        end if;
   end Initialize;

   function Create (hashMap : HashMap_Access; httpServletRequest : HttpServletRequest_Access) return WeblisketSession_Access is
      This : constant WeblisketSession_Access := new WeblisketSession;
   begin
      WeblisketSession_Package.Initialize (This.all, hashMap, httpServletRequest);
      return This;
   end Create;

   function getId (This : in out WeblisketSession) return Unbounded_String is
   begin
        return This.session.getId;
   end getId;

   procedure setPassword (This : in out WeblisketSession; password : Unbounded_String) is
   begin
        This.session.setAttribute (UserData_Package.PASSWORD, password);
   end setPassword;

   procedure setUserName (This : in out WeblisketSession; userName : Unbounded_String) is
   begin
        This.session.setAttribute (UserData_Package.USERNAME, userName);
   end setUserName;

   procedure setPaymentMethod (This : in out WeblisketSession; value : Unbounded_String) is
   begin
        This.session.setAttribute (PaymentGatewayData_Package.NAME.toString, value);
   end setPaymentMethod;

   procedure setAuthenticated (This : in out WeblisketSession) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.AUTHENTICATED, BooleanFactory_Package.getInstance.TRUE_STRING);
   end setAuthenticated;

   procedure setRole (This : in out WeblisketSession; aRole : UserRole_Access) is
   begin
        This.session.setAttribute (UserRoleData_Package.NAME.toString, aRole);
   end setRole;

   procedure setAttempts (This : in out WeblisketSession; value : Integer) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.ATTEMPTS, value);
   end setAttempts;

   procedure setTimeout (This : in out WeblisketSession; value : Unbounded_String) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.TIMEOUT, value);
   end setTimeout;

   procedure setStoreName (This : in out WeblisketSession; value : Unbounded_String) is
   begin
        This.session.setAttribute (StoreFrontData_Package.getInstance.NAME, value);
   end setStoreName;

   function getWebAppPath (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (org_Package.allbinary.globals.GLOBALS2.WEBAPPPATH));
   end getWebAppPath;

   function getUserName (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (UserData_Package.USERNAME));
   end getUserName;

   function getPassword (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (UserData_Package.PASSWORD));
   end getPassword;

   function getPaymentMethod (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (PaymentGatewayData_Package.NAME.toString));
   end getPaymentMethod;

   function getAuthentication (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (WeblisketSessionData_Package.AUTHENTICATED));
   end getAuthentication;

   function getAttempts (This : in out WeblisketSession) return Integer is
   begin
        return Integer (This.session.getAttribute (WeblisketSessionData_Package.ATTEMPTS));
   end getAttempts;

   function getTimeout (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (WeblisketSessionData_Package.TIMEOUT));
   end getTimeout;

   function getStoreName (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Unbounded_String (This.session.getAttribute (StoreFrontData_Package.getInstance.NAME));
   end getStoreName;

   --  throws Exception
   function getRole (This : in out WeblisketSession) return UserRole_Access is
      userRole : UserRole_Access;
   begin
        userRole := UserRole_Access (This.session.getAttribute (UserRoleData_Package.NAME.toString));
        if (userRole) /= (null) then
            return UserRoleB_Package.getRole (userRole.getBasicUserRole.getRole);
        else
            return null;
        end if;
   end getRole;

   --  throws Exception
   function getOrder (This : in out WeblisketSession) return OrderInterface_Access is
      storeFrontInterface : StoreFrontInterface_Access;
      basketName : Unbounded_String;
      orderInterface : OrderInterface_Access;
   begin
        storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getStoreName);
        basketName := storeFrontInterface.getBasketName;
        if not (StringValidationUtil_Package.getInstance.isEmpty (basketName)) then
            orderInterface := OrderInterface_Access (This.session.getAttribute (basketName));
            if (orderInterface) = (null) then
                orderInterface := OrderInterface_Access (Order_Package.Create (Basket_Package.Create));
            end if;
            This.session.setAttribute (basketName, orderInterface);
            return orderInterface;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Basket Name Not Found")));
        end if;
   end getOrder;

   procedure setAuthenticated (This : in out WeblisketSession; value : Boolean) is
   begin
        This.session.setAttribute (WeblisketSessionData_Package.AUTHENTICATED, BooleanFactory_Package.getInstance.FALSE_STRING);
   end setAuthenticated;

   procedure clear (This : in out WeblisketSession) is
   begin
        This.session.removeAttribute (WeblisketSessionData_Package.AUTHENTICATED);
        This.session.removeAttribute (WeblisketSessionData_Package.TIMEOUT);
        This.session.removeAttribute (UserRoleData_Package.NAME.toString);
        This.session.removeAttribute (UserData_Package.USERNAME);
   end clear;

   function getCreationTime (This : in out WeblisketSession) return Long_Long_Integer is
   begin
        return This.session.getCreationTime;
   end getCreationTime;

   function getLastAccessedTime (This : in out WeblisketSession) return Long_Long_Integer is
   begin
        return This.session.getLastAccessedTime;
   end getLastAccessedTime;

   procedure removeBasket (This : in out WeblisketSession) is
      storeFrontInterface : StoreFrontInterface_Access;
      basketName : Unbounded_String;
   begin
        storeFrontInterface := StoreFrontFactory_Package.getInstance (This.getStoreName);
        basketName := storeFrontInterface.getBasketName;
        if not (StringValidationUtil_Package.getInstance.isEmpty (basketName)) then
            This.session.removeAttribute (basketName);
        end if;
   end removeBasket;

end org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;



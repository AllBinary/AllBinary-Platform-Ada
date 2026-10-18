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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.inventory.basket.Basket_Package; use org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.role.UserRoleB_Package; use org.allbinary.business.user.role.UserRoleB_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;

package body org.allbinary.logic.communication.http.request.session.WeblisketSession_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package Basket_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
   package Order_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package UserRoleB_Package renames Standard.org.allbinary.business.user.role.UserRoleB_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out WeblisketSession'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out WeblisketSession'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        Initialize (This, hashMap, HttpServletRequest_Access (pageContext.getRequest));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WeblisketSession_Access is
      This : constant WeblisketSession_Access := new WeblisketSession;
   begin
      WeblisketSession_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure Initialize (This : in out WeblisketSession'Class; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      propertiesHashMap : HashMap_Access;
      request : HttpServletRequest_Access;
   begin
      Initialize_Fields (This);
        propertiesHashMap := hashMap;
        request := httpServletRequest;
        This.session := request.getSession (True);
        if (WeblisketSession'Class (This).getStoreName) = (null) then
            WeblisketSession'Class (This).setStoreName (Java_Unbox (propertiesHashMap.get (StoreFrontData_Package.getInstance.NAME)));
        end if;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return WeblisketSession_Access is
      This : constant WeblisketSession_Access := new WeblisketSession;
   begin
      WeblisketSession_Package.Initialize (This.all, hashMap_Param, httpServletRequest_Param);
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

   procedure setRole (This : in out WeblisketSession; aRole_Param : access UserRole_Package.UserRole'Class) is
      aRole : constant UserRole_Access := UserRole_Access (aRole_Param);
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
        return Java_Unbox (This.session.getAttribute (org_Package.allbinary.globals.GLOBALS2.WEBAPPPATH));
   end getWebAppPath;

   function getUserName (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (UserData_Package.USERNAME));
   end getUserName;

   function getPassword (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (UserData_Package.PASSWORD));
   end getPassword;

   function getPaymentMethod (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (PaymentGatewayData_Package.NAME.toString));
   end getPaymentMethod;

   function getAuthentication (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (WeblisketSessionData_Package.AUTHENTICATED));
   end getAuthentication;

   function getAttempts (This : in out WeblisketSession) return Integer is
   begin
        return Integer (This.session.getAttribute (WeblisketSessionData_Package.ATTEMPTS));
   end getAttempts;

   function getTimeout (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (WeblisketSessionData_Package.TIMEOUT));
   end getTimeout;

   function getStoreName (This : in out WeblisketSession) return Unbounded_String is
   begin
        return Java_Unbox (This.session.getAttribute (StoreFrontData_Package.getInstance.NAME));
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
        storeFrontInterface := StoreFrontFactory_Package.getInstance (WeblisketSession'Class (This).getStoreName);
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
        storeFrontInterface := StoreFrontFactory_Package.getInstance (WeblisketSession'Class (This).getStoreName);
        basketName := storeFrontInterface.getBasketName;
        if not (StringValidationUtil_Package.getInstance.isEmpty (basketName)) then
            This.session.removeAttribute (basketName);
        end if;
   end removeBasket;

end org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;



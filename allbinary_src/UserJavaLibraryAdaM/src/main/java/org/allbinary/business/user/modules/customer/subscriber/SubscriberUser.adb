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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.business.user.subscription.Subscription_Package; use org.allbinary.business.user.subscription.Subscription_Package;
with org.allbinary.business.user.subscription.Subscription_Package_References;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;

package body org.allbinary.business.user.modules.customer.subscriber.SubscriberUser_Package is

   subtype Subscription_Access is org.allbinary.business.user.subscription.Subscription_Package_References.Subscription_Access;
   function "=" (Left, Right : Subscription_Access) return Boolean renames org.allbinary.business.user.subscription.Subscription_Package_References."=";
   subtype Subscription_Access_Array is org.allbinary.business.user.subscription.Subscription_Package_References.Subscription_Access_Array;
   function "=" (Left, Right : Subscription_Access_Array) return Boolean renames org.allbinary.business.user.subscription.Subscription_Package_References."=";
   subtype Subscription_Access_Array_Access is org.allbinary.business.user.subscription.Subscription_Package_References.Subscription_Access_Array_Access;
   function "=" (Left, Right : Subscription_Access_Array_Access) return Boolean renames org.allbinary.business.user.subscription.Subscription_Package_References."=";
   subtype Subscription_Access_Array_Access_Array is org.allbinary.business.user.subscription.Subscription_Package_References.Subscription_Access_Array_Access_Array;
   function "=" (Left, Right : Subscription_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.subscription.Subscription_Package_References."=";
   subtype Subscription_Access_Array_Access_Array_Access is org.allbinary.business.user.subscription.Subscription_Package_References.Subscription_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Subscription_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.subscription.Subscription_Package_References."=";
   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   procedure Initialize_Fields (This : in out SubscriberUser'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SubscriberUser'Class) is
   begin
        User_Package.Initialize (This);
        Initialize_Fields (This);
        This.subscription := Subscription_Package.Create;
   end Initialize;

   function Create return SubscriberUser_Access is
      This : constant SubscriberUser_Access := new SubscriberUser;
   begin
      SubscriberUser_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out SubscriberUser'Class; userHashMap_Param : access HashMap_Package.HashMap'Class) is
      userHashMap : constant HashMap_Access := HashMap_Access (userHashMap_Param);
   begin
        User_Package.Initialize (This, userHashMap);
        Initialize_Fields (This);
        This.subscription := Subscription_Package.Create;
   end Initialize;

   function Create (userHashMap_Param : access HashMap_Package.HashMap'Class) return SubscriberUser_Access is
      This : constant SubscriberUser_Access := new SubscriberUser;
   begin
      SubscriberUser_Package.Initialize (This.all, userHashMap_Param);
      return This;
   end Create;

   procedure validateSession (This : in out SubscriberUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        User_Package.User (This).validateSession (weblisketSession);
        SubscriberUser'Class (This).updateSession (weblisketSession);
   end validateSession;

   procedure updateSession (This : in out SubscriberUser; weblisketSession_Param : access WeblisketSessionInterface_Package.WeblisketSessionInterface'Class) is
      weblisketSession : constant WeblisketSessionInterface_Access := WeblisketSessionInterface_Access (weblisketSession_Param);
   begin
        weblisketSession.setStoreName (SubscriberUser'Class (This).getPermissions);
   end updateSession;

   function isSessionValid (This : in out SubscriberUser) return Boolean is
   begin
        return This.subscription.isSubscribed;
   end isSessionValid;

end org.allbinary.business.user.modules.customer.subscriber.SubscriberUser_Package;



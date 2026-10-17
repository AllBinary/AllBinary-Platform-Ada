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


package body org.allbinary.business.user.modules.customer.subscriber.SubscriberUser_Package is

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

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out SubscriberUser'Class; userHashMap : HashMap_Access) is
   begin
        User_Package.Initialize (This, userHashMap);
        Initialize_Fields (This);
        This.subscription := Subscription_Package.Create;
   end Initialize;

   function Create (userHashMap : HashMap_Access) return SubscriberUser_Access is
      This : constant SubscriberUser_Access := new SubscriberUser;
   begin
      SubscriberUser_Package.Initialize (This.all, userHashMap);
      return This;
   end Create;

   procedure validateSession (This : in out SubscriberUser; weblisketSession : WeblisketSessionInterface_Access) is
   begin
        User (This).validateSession (weblisketSession);
        This.updateSession (weblisketSession);
   end validateSession;

   procedure updateSession (This : in out SubscriberUser; weblisketSession : WeblisketSessionInterface_Access) is
   begin
        weblisketSession.setStoreName (This.getPermissions);
   end updateSession;

   function isSessionValid (This : in out SubscriberUser) return Boolean is
   begin
        return This.subscription.isSubscribed;
   end isSessionValid;

end org.allbinary.business.user.modules.customer.subscriber.SubscriberUser_Package;



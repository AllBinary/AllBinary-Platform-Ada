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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.business.user.subscription.Subscription_Package; use org.allbinary.business.user.subscription.Subscription_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package org.allbinary.business.user.modules.customer.subscriber.SubscriberUser_Package is

   package User_Package renames org.allbinary.business.user.modules.User_Package;
   package Subscription_Package renames org.allbinary.business.user.subscription.Subscription_Package;
   package WeblisketSessionInterface_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

   type SubscriberUser is tagged;
   type SubscriberUser_Access is access all SubscriberUser'Class;
   type SubscriberUser_Access_Array is array (Natural range <>) of SubscriberUser_Access;
   type SubscriberUser_Access_Array_Access is access all SubscriberUser_Access_Array;

   type SubscriberUser is new User with record
      subscription : Subscription_Access;
   end record;

   procedure Initialize (This : in out SubscriberUser'Class);
   function Create return SubscriberUser_Access;
   procedure validateSession (This : in out SubscriberUser; weblisketSession : WeblisketSessionInterface_Access);
   procedure updateSession (This : in out SubscriberUser; weblisketSession : WeblisketSessionInterface_Access);
   function isSessionValid (This : in out SubscriberUser) return Boolean;
   procedure isSessionValid (This : in out SubscriberUser);

end org.allbinary.business.user.modules.customer.subscriber.SubscriberUser_Package;



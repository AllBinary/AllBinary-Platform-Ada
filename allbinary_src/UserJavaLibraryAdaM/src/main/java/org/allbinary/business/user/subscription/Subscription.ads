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

package org.allbinary.business.user.subscription.Subscription_Package is


   type Subscription is tagged;
   type Subscription_Access is access all Subscription'Class;
   type Subscription_Access_Array is array (Natural range <>) of Subscription_Access;
   type Subscription_Access_Array_Access is access all Subscription_Access_Array;

   type Subscription is new Java_Object with null record;

   procedure Initialize (This : in out Subscription'Class);
   function Create return Subscription_Access;
   function isSubscribed (This : in out Subscription) return Boolean;

end org.allbinary.business.user.subscription.Subscription_Package;



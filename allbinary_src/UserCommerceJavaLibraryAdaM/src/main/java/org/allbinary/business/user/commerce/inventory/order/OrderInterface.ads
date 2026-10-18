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
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;

package org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package is

   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;

   type OrderInterface is interface;
   type OrderInterface_Access is access all OrderInterface'Class;
   type OrderInterface_Access_Array is array (Natural range <>) of OrderInterface_Access;
   type OrderInterface_Access_Array_Access is access all OrderInterface_Access_Array;
   type OrderInterface_Access_Array_Access_Array is array (Natural range <>) of OrderInterface_Access_Array_Access;
   type OrderInterface_Access_Array_Access_Array_Access is access all OrderInterface_Access_Array_Access_Array;
   procedure setShippingMethod (This : in out OrderInterface; shippingType : Unbounded_String) is abstract;
   procedure setPaymentMethod (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setSpecial (This : in out OrderInterface; special : Unbounded_String) is abstract;
   procedure setStoreName (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setUserComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setUserCancelComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setStoreComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setStoreCancelComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   function getBasket (This : in out OrderInterface) return BasketInterface_Access is abstract;
   function getShippingMethod (This : in out OrderInterface) return Unbounded_String is abstract;
   function getPaymentMethod (This : in out OrderInterface) return Unbounded_String is abstract;
   function getSpecial (This : in out OrderInterface) return Unbounded_String is abstract;
   function getId (This : in out OrderInterface) return Unbounded_String is abstract;
   function getStoreName (This : in out OrderInterface) return Unbounded_String is abstract;
   function getUserComments (This : in out OrderInterface) return Unbounded_String is abstract;
   function getUserCancelComments (This : in out OrderInterface) return Unbounded_String is abstract;
   function getStoreComments (This : in out OrderInterface) return Unbounded_String is abstract;
   function getStoreCancelComments (This : in out OrderInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;



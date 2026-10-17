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
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;

package org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package is

   package Money_Package renames org.allbinary.business.user.commerce.money.Money_Package;
   package MoneyException_Package renames org.allbinary.business.user.commerce.money.MoneyException_Package;

   type BasketInterface is interface;
   type BasketInterface_Access is access all BasketInterface'Class;
   type BasketInterface_Access_Array is array (Natural range <>) of BasketInterface_Access;
   type BasketInterface_Access_Array_Access is access all BasketInterface_Access_Array;
   procedure addItem (This : in out BasketInterface; id : Unbounded_String; num : Unbounded_String) is abstract;
   procedure removeItem (This : in out BasketInterface; id : Unbounded_String) is abstract;
   procedure adjustItem (This : in out BasketInterface; id : Unbounded_String; num : Unbounded_String) is abstract;
   function getTotalWeight (This : in out BasketInterface) return Unbounded_String is abstract;
   function getNumberOfItems (This : in out BasketInterface) return Integer is abstract;
   function getIds (This : in out BasketInterface) return Set_Access is abstract;
   function getItems (This : in out BasketInterface) return HashMap_Access is abstract;
   function getNumberOf (This : in out BasketInterface; product : Unbounded_String) return Integer is abstract;
   function getSubTotal (This : in out BasketInterface) return Money_Access is abstract;

end org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;



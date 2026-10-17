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
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;

package org.allbinary.business.user.commerce.inventory.basket.Basket_Package is

   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type Basket is tagged;
   type Basket_Access is access all Basket'Class;
   type Basket_Access_Array is array (Natural range <>) of Basket_Access;
   type Basket_Access_Array_Access is access all Basket_Access_Array;

   type Basket is new BasketInterface and Serializable with record
      items : HashMap_Access;
   end record;

   procedure Initialize (This : in out Basket'Class);
   function Create return Basket_Access;
   procedure addItem (This : in out Basket; id : Unbounded_String; num : Unbounded_String);
   procedure removeItem (This : in out Basket; id : Unbounded_String);
   procedure adjustItem (This : in out Basket; id : Unbounded_String; num : Unbounded_String);
   function getTotalWeight (This : in out Basket) return Unbounded_String;
   procedure getTotalWeight (This : in out Basket);
   function getNumberOfItems (This : in out Basket) return Integer;
   procedure getNumberOfItems (This : in out Basket);
   function getIds (This : in out Basket) return Set_Access;
   procedure getIds (This : in out Basket);
   function getItems (This : in out Basket) return HashMap_Access;
   procedure getItems (This : in out Basket);
   function getNumberOf (This : in out Basket; product : Unbounded_String) return Integer;
   procedure getNumberOf (This : in out Basket; product : Unbounded_String);
   function getSubTotal (This : in out Basket) return Money_Access;
   procedure getSubTotal (This : in out Basket);

end org.allbinary.business.user.commerce.inventory.basket.Basket_Package;



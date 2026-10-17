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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.money.MoneyException_Package; use org.allbinary.business.user.commerce.money.MoneyException_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package MoneyException_Package renames Standard.org.allbinary.business.user.commerce.money.MoneyException_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type InventoryEntityInterface is interface and BasicDataTableInterface;
   type InventoryEntityInterface_Access is access all InventoryEntityInterface'Class;
   type InventoryEntityInterface_Access_Array is array (Natural range <>) of InventoryEntityInterface_Access;
   type InventoryEntityInterface_Access_Array_Access is access all InventoryEntityInterface_Access_Array;
   function getItem (This : in out InventoryEntityInterface; id : Unbounded_String) return ItemInterface_Access is abstract;
   function getItems (This : in out InventoryEntityInterface; storeFrontInterface_Param : access StoreFrontInterface'Class) return BasicArrayList_Access is abstract;
   function getWeight (This : in out InventoryEntityInterface; id : Unbounded_String) return Unbounded_String is abstract;
   procedure deleteWhere (This : in out InventoryEntityInterface; key : Unbounded_String; value : Unbounded_String) is abstract;
   procedure insert (This : in out InventoryEntityInterface; values_Param : access BasicArrayList'Class) is abstract;
   procedure update (This : in out InventoryEntityInterface; updatedValues_Param : access HashMap'Class) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;



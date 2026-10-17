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
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package InventoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type StoreFrontInventoryStatistics is tagged;
   type StoreFrontInventoryStatistics_Access is access all StoreFrontInventoryStatistics'Class;
   type StoreFrontInventoryStatistics_Access_Array is array (Natural range <>) of StoreFrontInventoryStatistics_Access;
   type StoreFrontInventoryStatistics_Access_Array_Access is access all StoreFrontInventoryStatistics_Access_Array;

   type StoreFrontInventoryStatistics is new StoreFrontInventoryStatisticsInterface with record
      totalNumberOfItems : Long_Long_Integer;
      totalInventorySaleValueMoney : Money_Access;
   end record;

   procedure Initialize (This : in out StoreFrontInventoryStatistics'Class; storeFrontInterface : StoreFrontInterface_Access);
   function Create (storeFrontInterface : StoreFrontInterface_Access) return StoreFrontInventoryStatistics_Access;
   function getNumber (This : in out StoreFrontInventoryStatistics) return Long_Long_Integer;
   procedure getNumber (This : in out StoreFrontInventoryStatistics);
   function getTotal (This : in out StoreFrontInventoryStatistics) return Money_Access;
   procedure getTotal (This : in out StoreFrontInventoryStatistics);
   function toHashMap (This : in out StoreFrontInventoryStatistics) return HashMap_Access;
   procedure toHashMap (This : in out StoreFrontInventoryStatistics);
   function toVector (This : in out StoreFrontInventoryStatistics) return BasicArrayList_Access;
   procedure toVector (This : in out StoreFrontInventoryStatistics);
   function getKey (This : in out StoreFrontInventoryStatistics) return Java_Object_Access;
   procedure getKey (This : in out StoreFrontInventoryStatistics);

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package;



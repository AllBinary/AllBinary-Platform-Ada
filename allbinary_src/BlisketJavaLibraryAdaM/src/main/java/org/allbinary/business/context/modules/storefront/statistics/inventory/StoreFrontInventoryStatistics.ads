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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;

   type StoreFrontInventoryStatistics is tagged;
   type StoreFrontInventoryStatistics_Access is access all StoreFrontInventoryStatistics'Class;
   type StoreFrontInventoryStatistics_Access_Array is array (Natural range <>) of StoreFrontInventoryStatistics_Access;
   type StoreFrontInventoryStatistics_Access_Array_Access is access all StoreFrontInventoryStatistics_Access_Array;
   type StoreFrontInventoryStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontInventoryStatistics_Access_Array_Access;
   type StoreFrontInventoryStatistics_Access_Array_Access_Array_Access is access all StoreFrontInventoryStatistics_Access_Array_Access_Array;

   type StoreFrontInventoryStatistics is new Java_Object and StoreFrontInventoryStatisticsInterface with record
      totalNumberOfItems : Long_Long_Integer;
      totalInventorySaleValueMoney : Money_Access;
   end record;

   procedure Initialize (This : in out StoreFrontInventoryStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontInventoryStatistics_Access;
   function getNumber (This : in out StoreFrontInventoryStatistics) return Long_Long_Integer;
   function getTotal (This : in out StoreFrontInventoryStatistics) return Money_Access;
   function toHashMap (This : in out StoreFrontInventoryStatistics) return HashMap_Access;
   function toVector (This : in out StoreFrontInventoryStatistics) return BasicArrayList_Access;
   function getKey (This : in out StoreFrontInventoryStatistics) return Java_Object_Access;

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package;



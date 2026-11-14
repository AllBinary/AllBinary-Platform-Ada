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

with AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package;
package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References is
   type StoreFrontInventoryStatistics_Access is access all org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package.StoreFrontInventoryStatistics'Class;
   type StoreFrontInventoryStatistics_Access_Array is array (Natural range <>) of StoreFrontInventoryStatistics_Access;
   type StoreFrontInventoryStatistics_Access_Array_Access is access all StoreFrontInventoryStatistics_Access_Array;
   type StoreFrontInventoryStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontInventoryStatistics_Access_Array_Access;
   type StoreFrontInventoryStatistics_Access_Array_Access_Array_Access is access all StoreFrontInventoryStatistics_Access_Array_Access_Array;
   type StoreFrontInventoryStatistics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontInventoryStatistics_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontInventoryStatistics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontInventoryStatistics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontInventoryStatistics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontInventoryStatistics_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontInventoryStatistics_Access_Array_Object'Class then StoreFrontInventoryStatistics_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontInventoryStatistics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontInventoryStatistics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontInventoryStatistics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontInventoryStatistics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontInventoryStatistics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontInventoryStatistics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontInventoryStatistics_Access_Array_Access_Array_Object'Class then StoreFrontInventoryStatistics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontInventoryStatistics_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.StoreFrontInventoryStatistics_Access;
   function "=" (Left, Right : StoreFrontInventoryStatistics_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References."=";
   subtype StoreFrontInventoryStatistics_Access_Array is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.StoreFrontInventoryStatistics_Access_Array;
   function "=" (Left, Right : StoreFrontInventoryStatistics_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References."=";
   subtype StoreFrontInventoryStatistics_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.StoreFrontInventoryStatistics_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInventoryStatistics_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References."=";
   function Java_Box (Value : StoreFrontInventoryStatistics_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.Java_Box;
   function Java_Unbox_StoreFrontInventoryStatistics_Access_Array (Value : access Java_Object'Class) return StoreFrontInventoryStatistics_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.Java_Unbox_StoreFrontInventoryStatistics_Access_Array;
   subtype StoreFrontInventoryStatistics_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.StoreFrontInventoryStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontInventoryStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References."=";
   subtype StoreFrontInventoryStatistics_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.StoreFrontInventoryStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInventoryStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References."=";
   function Java_Box (Value : StoreFrontInventoryStatistics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.Java_Box;
   function Java_Unbox_StoreFrontInventoryStatistics_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontInventoryStatistics_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package_References.Java_Unbox_StoreFrontInventoryStatistics_Access_Array_Access_Array;

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



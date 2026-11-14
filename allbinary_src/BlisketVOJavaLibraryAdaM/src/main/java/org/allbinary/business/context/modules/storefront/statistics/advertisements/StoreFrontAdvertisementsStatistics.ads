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
limited with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;
package org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References is
   type StoreFrontAdvertisementsStatistics_Access is access all org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package.StoreFrontAdvertisementsStatistics'Class;
   type StoreFrontAdvertisementsStatistics_Access_Array is array (Natural range <>) of StoreFrontAdvertisementsStatistics_Access;
   type StoreFrontAdvertisementsStatistics_Access_Array_Access is access all StoreFrontAdvertisementsStatistics_Access_Array;
   type StoreFrontAdvertisementsStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontAdvertisementsStatistics_Access_Array_Access;
   type StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access is access all StoreFrontAdvertisementsStatistics_Access_Array_Access_Array;
   type StoreFrontAdvertisementsStatistics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontAdvertisementsStatistics_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontAdvertisementsStatistics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontAdvertisementsStatistics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontAdvertisementsStatistics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontAdvertisementsStatistics_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontAdvertisementsStatistics_Access_Array_Object'Class then StoreFrontAdvertisementsStatistics_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontAdvertisementsStatistics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Object'Class then StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References;
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
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontAdvertisementsStatistics_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.StoreFrontAdvertisementsStatistics_Access;
   function "=" (Left, Right : StoreFrontAdvertisementsStatistics_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References."=";
   subtype StoreFrontAdvertisementsStatistics_Access_Array is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.StoreFrontAdvertisementsStatistics_Access_Array;
   function "=" (Left, Right : StoreFrontAdvertisementsStatistics_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References."=";
   subtype StoreFrontAdvertisementsStatistics_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.StoreFrontAdvertisementsStatistics_Access_Array_Access;
   function "=" (Left, Right : StoreFrontAdvertisementsStatistics_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References."=";
   function Java_Box (Value : StoreFrontAdvertisementsStatistics_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.Java_Box;
   function Java_Unbox_StoreFrontAdvertisementsStatistics_Access_Array (Value : access Java_Object'Class) return StoreFrontAdvertisementsStatistics_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.Java_Unbox_StoreFrontAdvertisementsStatistics_Access_Array;
   subtype StoreFrontAdvertisementsStatistics_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.StoreFrontAdvertisementsStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontAdvertisementsStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References."=";
   subtype StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References."=";
   function Java_Box (Value : StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.Java_Box;
   function Java_Unbox_StoreFrontAdvertisementsStatistics_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontAdvertisementsStatistics_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package_References.Java_Unbox_StoreFrontAdvertisementsStatistics_Access_Array_Access_Array;

   type StoreFrontAdvertisementsStatistics is new Java_Object and StoreFrontAdvertisementsStatisticsInterface with null record;

   procedure Initialize (This : in out StoreFrontAdvertisementsStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontAdvertisementsStatistics_Access;
   function toHashMap (This : in out StoreFrontAdvertisementsStatistics) return HashMap_Access;
   function toVector (This : in out StoreFrontAdvertisementsStatistics) return BasicArrayList_Access;
   function getKey (This : in out StoreFrontAdvertisementsStatistics) return Java_Object_Access;

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;



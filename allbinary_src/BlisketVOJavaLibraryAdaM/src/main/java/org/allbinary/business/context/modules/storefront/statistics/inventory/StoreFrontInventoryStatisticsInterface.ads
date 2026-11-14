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
limited with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References is
   type StoreFrontInventoryStatisticsInterface_Access is access all org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package.StoreFrontInventoryStatisticsInterface'Class;
   type StoreFrontInventoryStatisticsInterface_Access_Array is array (Natural range <>) of StoreFrontInventoryStatisticsInterface_Access;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access is access all StoreFrontInventoryStatisticsInterface_Access_Array;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontInventoryStatisticsInterface_Access_Array_Access;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access is access all StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontInventoryStatisticsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontInventoryStatisticsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontInventoryStatisticsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontInventoryStatisticsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontInventoryStatisticsInterface_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontInventoryStatisticsInterface_Access_Array_Object'Class then StoreFrontInventoryStatisticsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Object'Class then StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package is

   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
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


   type StoreFrontInventoryStatisticsInterface is interface and TableMappingInterface;
   subtype StoreFrontInventoryStatisticsInterface_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.StoreFrontInventoryStatisticsInterface_Access;
   function "=" (Left, Right : StoreFrontInventoryStatisticsInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References."=";
   subtype StoreFrontInventoryStatisticsInterface_Access_Array is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.StoreFrontInventoryStatisticsInterface_Access_Array;
   function "=" (Left, Right : StoreFrontInventoryStatisticsInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References."=";
   subtype StoreFrontInventoryStatisticsInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.StoreFrontInventoryStatisticsInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInventoryStatisticsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References."=";
   function Java_Box (Value : StoreFrontInventoryStatisticsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.Java_Box;
   function Java_Unbox_StoreFrontInventoryStatisticsInterface_Access_Array (Value : access Java_Object'Class) return StoreFrontInventoryStatisticsInterface_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.Java_Unbox_StoreFrontInventoryStatisticsInterface_Access_Array;
   subtype StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References."=";
   subtype StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References."=";
   function Java_Box (Value : StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.Java_Box;
   function Java_Unbox_StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package_References.Java_Unbox_StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_StoreFrontInventoryStatisticsInterface (Value : StoreFrontInventoryStatisticsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getNumber (This : in out StoreFrontInventoryStatisticsInterface) return Long_Long_Integer is abstract;
   function getTotal (This : in out StoreFrontInventoryStatisticsInterface) return Money_Access is abstract;

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;



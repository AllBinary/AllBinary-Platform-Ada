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

limited with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package;
package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References is
   type StoreFrontInventoryStatisticsData_Access is access all org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package.StoreFrontInventoryStatisticsData'Class;
   type StoreFrontInventoryStatisticsData_Access_Array is array (Natural range <>) of StoreFrontInventoryStatisticsData_Access;
   type StoreFrontInventoryStatisticsData_Access_Array_Access is access all StoreFrontInventoryStatisticsData_Access_Array;
   type StoreFrontInventoryStatisticsData_Access_Array_Access_Array is array (Natural range <>) of StoreFrontInventoryStatisticsData_Access_Array_Access;
   type StoreFrontInventoryStatisticsData_Access_Array_Access_Array_Access is access all StoreFrontInventoryStatisticsData_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontInventoryStatisticsData_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References.StoreFrontInventoryStatisticsData_Access;
   function "=" (Left, Right : StoreFrontInventoryStatisticsData_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References."=";
   subtype StoreFrontInventoryStatisticsData_Access_Array is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References.StoreFrontInventoryStatisticsData_Access_Array;
   function "=" (Left, Right : StoreFrontInventoryStatisticsData_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References."=";
   subtype StoreFrontInventoryStatisticsData_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References.StoreFrontInventoryStatisticsData_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInventoryStatisticsData_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References."=";
   subtype StoreFrontInventoryStatisticsData_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References.StoreFrontInventoryStatisticsData_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontInventoryStatisticsData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References."=";
   subtype StoreFrontInventoryStatisticsData_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References.StoreFrontInventoryStatisticsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInventoryStatisticsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package_References."=";

   type StoreFrontInventoryStatisticsData is new Java_Object with record
      NAME : Unbounded_String;
      NUMBEROFITEMS : Unbounded_String;
      TOTALVALUE : Unbounded_String;
   end record;
   instance : StoreFrontInventoryStatisticsData_Access;

   procedure Initialize (This : in out StoreFrontInventoryStatisticsData'Class);
   function Create return StoreFrontInventoryStatisticsData_Access;
   function getInstance return StoreFrontInventoryStatisticsData_Access;

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package;



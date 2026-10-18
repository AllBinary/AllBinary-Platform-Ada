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
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package is

   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;

   type StoreFrontInventoryStatisticsInterface is interface and TableMappingInterface;
   type StoreFrontInventoryStatisticsInterface_Access is access all StoreFrontInventoryStatisticsInterface'Class;
   type StoreFrontInventoryStatisticsInterface_Access_Array is array (Natural range <>) of StoreFrontInventoryStatisticsInterface_Access;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access is access all StoreFrontInventoryStatisticsInterface_Access_Array;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontInventoryStatisticsInterface_Access_Array_Access;
   type StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array_Access is access all StoreFrontInventoryStatisticsInterface_Access_Array_Access_Array;
   function getNumber (This : in out StoreFrontInventoryStatisticsInterface) return Long_Long_Integer is abstract;
   function getTotal (This : in out StoreFrontInventoryStatisticsInterface) return Money_Access is abstract;

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;



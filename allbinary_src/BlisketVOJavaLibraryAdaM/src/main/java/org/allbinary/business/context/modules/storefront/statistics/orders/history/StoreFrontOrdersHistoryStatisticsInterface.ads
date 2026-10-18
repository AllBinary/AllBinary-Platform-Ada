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

package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package is

   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;

   type StoreFrontOrdersHistoryStatisticsInterface is interface and TableMappingInterface;
   type StoreFrontOrdersHistoryStatisticsInterface_Access is access all StoreFrontOrdersHistoryStatisticsInterface'Class;
   type StoreFrontOrdersHistoryStatisticsInterface_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatisticsInterface_Access;
   type StoreFrontOrdersHistoryStatisticsInterface_Access_Array_Access is access all StoreFrontOrdersHistoryStatisticsInterface_Access_Array;
   type StoreFrontOrdersHistoryStatisticsInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatisticsInterface_Access_Array_Access;
   type StoreFrontOrdersHistoryStatisticsInterface_Access_Array_Access_Array_Access is access all StoreFrontOrdersHistoryStatisticsInterface_Access_Array_Access_Array;
   function getNumberOfOrders (This : in out StoreFrontOrdersHistoryStatisticsInterface) return Long_Long_Integer is abstract;
   function getSubTotal (This : in out StoreFrontOrdersHistoryStatisticsInterface) return Money_Access is abstract;
   function getShippingCost (This : in out StoreFrontOrdersHistoryStatisticsInterface) return Money_Access is abstract;
   function getTaxes (This : in out StoreFrontOrdersHistoryStatisticsInterface) return Money_Access is abstract;
   function getTotal (This : in out StoreFrontOrdersHistoryStatisticsInterface) return Money_Access is abstract;

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;



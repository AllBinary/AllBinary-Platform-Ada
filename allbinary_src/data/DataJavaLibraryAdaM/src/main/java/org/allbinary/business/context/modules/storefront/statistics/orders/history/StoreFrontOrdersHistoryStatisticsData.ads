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

package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package is


   type StoreFrontOrdersHistoryStatisticsData is tagged;
   type StoreFrontOrdersHistoryStatisticsData_Access is access all StoreFrontOrdersHistoryStatisticsData'Class;
   type StoreFrontOrdersHistoryStatisticsData_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatisticsData_Access;
   type StoreFrontOrdersHistoryStatisticsData_Access_Array_Access is access all StoreFrontOrdersHistoryStatisticsData_Access_Array;

   type StoreFrontOrdersHistoryStatisticsData is new Java_Object with record
      NAME : Unbounded_String;
      NUMBEROFORDERS : Unbounded_String;
      SUBTOTAL : Unbounded_String;
      SHIPPINGCOST : Unbounded_String;
      TAXES : Unbounded_String;
      TOTAL : Unbounded_String;
   end record;
   instance : StoreFrontOrdersHistoryStatisticsData_Access;

   procedure Initialize (This : in out StoreFrontOrdersHistoryStatisticsData'Class);
   function Create return StoreFrontOrdersHistoryStatisticsData_Access;
   function getInstance return StoreFrontOrdersHistoryStatisticsData_Access;

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package;



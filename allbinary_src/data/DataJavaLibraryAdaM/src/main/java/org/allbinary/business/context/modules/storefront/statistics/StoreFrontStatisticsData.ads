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

package org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package is


   type StoreFrontStatisticsData is tagged;
   type StoreFrontStatisticsData_Access is access all StoreFrontStatisticsData'Class;
   type StoreFrontStatisticsData_Access_Array is array (Natural range <>) of StoreFrontStatisticsData_Access;
   type StoreFrontStatisticsData_Access_Array_Access is access all StoreFrontStatisticsData_Access_Array;
   type StoreFrontStatisticsData_Access_Array_Access_Array is array (Natural range <>) of StoreFrontStatisticsData_Access_Array_Access;
   type StoreFrontStatisticsData_Access_Array_Access_Array_Access is access all StoreFrontStatisticsData_Access_Array_Access_Array;

   type StoreFrontStatisticsData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : StoreFrontStatisticsData_Access;

   procedure Initialize (This : in out StoreFrontStatisticsData'Class);
   function Create return StoreFrontStatisticsData_Access;
   function getInstance return StoreFrontStatisticsData_Access;

end org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package;



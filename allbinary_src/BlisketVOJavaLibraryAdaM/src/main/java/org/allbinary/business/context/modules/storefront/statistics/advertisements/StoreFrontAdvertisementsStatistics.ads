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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;

   type StoreFrontAdvertisementsStatistics is tagged;
   type StoreFrontAdvertisementsStatistics_Access is access all StoreFrontAdvertisementsStatistics'Class;
   type StoreFrontAdvertisementsStatistics_Access_Array is array (Natural range <>) of StoreFrontAdvertisementsStatistics_Access;
   type StoreFrontAdvertisementsStatistics_Access_Array_Access is access all StoreFrontAdvertisementsStatistics_Access_Array;

   type StoreFrontAdvertisementsStatistics is new StoreFrontAdvertisementsStatisticsInterface with null record;

   procedure Initialize (This : in out StoreFrontAdvertisementsStatistics'Class; storeFrontInterface : StoreFrontInterface_Access);
   function Create (storeFrontInterface : StoreFrontInterface_Access) return StoreFrontAdvertisementsStatistics_Access;
   function toHashMap (This : in out StoreFrontAdvertisementsStatistics) return HashMap_Access;
   procedure toHashMap (This : in out StoreFrontAdvertisementsStatistics);
   function toVector (This : in out StoreFrontAdvertisementsStatistics) return BasicArrayList_Access;
   procedure toVector (This : in out StoreFrontAdvertisementsStatistics);
   function getKey (This : in out StoreFrontAdvertisementsStatistics) return Java_Object_Access;
   procedure getKey (This : in out StoreFrontAdvertisementsStatistics);

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;



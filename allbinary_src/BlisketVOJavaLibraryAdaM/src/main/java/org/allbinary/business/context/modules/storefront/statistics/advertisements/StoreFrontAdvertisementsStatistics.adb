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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out StoreFrontAdvertisementsStatistics'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontAdvertisementsStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontAdvertisementsStatistics_Access is
      This : constant StoreFrontAdvertisementsStatistics_Access := new StoreFrontAdvertisementsStatistics;
   begin
      StoreFrontAdvertisementsStatistics_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   function toHashMap (This : in out StoreFrontAdvertisementsStatistics) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        return hashMap;
   end toHashMap;

   function toVector (This : in out StoreFrontAdvertisementsStatistics) return BasicArrayList_Access is
   begin
        return null;
   end toVector;

   function getKey (This : in out StoreFrontAdvertisementsStatistics) return Java_Object_Access is
   begin
        return null;
   end getKey;

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;



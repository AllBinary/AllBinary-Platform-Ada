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


package body org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package is

   procedure Initialize_Fields (This : in out StoreFrontAdvertisementsStatistics'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontAdvertisementsStatistics'Class; storeFrontInterface : StoreFrontInterface_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (storeFrontInterface : StoreFrontInterface_Access) return StoreFrontAdvertisementsStatistics_Access is
      This : constant StoreFrontAdvertisementsStatistics_Access := new StoreFrontAdvertisementsStatistics;
   begin
      Initialize (This.all, storeFrontInterface);
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

   procedure toHashMap (This : in out StoreFrontAdvertisementsStatistics) is
      Java_Result : constant HashMap_Access := StoreFrontAdvertisementsStatistics'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toVector (This : in out StoreFrontAdvertisementsStatistics) is
      Java_Result : constant BasicArrayList_Access := StoreFrontAdvertisementsStatistics'Class (This).toVector;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure getKey (This : in out StoreFrontAdvertisementsStatistics) is
      Java_Result : constant Java_Object_Access := StoreFrontAdvertisementsStatistics'Class (This).getKey;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;



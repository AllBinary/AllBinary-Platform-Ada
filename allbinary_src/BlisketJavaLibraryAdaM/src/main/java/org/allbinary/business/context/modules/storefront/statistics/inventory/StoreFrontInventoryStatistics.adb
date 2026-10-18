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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package;

package body org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package InventoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out StoreFrontInventoryStatistics'Class) is
   begin
      null;
      This.totalNumberOfItems := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontInventoryStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      inventoryEntityInterface : InventoryEntityInterface_Access;
      itemVector : BasicArrayList_Access;
      size : Integer;
      itemInterface : ItemInterface_Access;
      numberInStock : Integer;
      itemPriceMoney : Money_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.totalInventorySaleValueMoney := Money_Package.Create;
        inventoryEntityInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
        itemVector := inventoryEntityInterface.getItems (storeFrontInterface);
        size := itemVector.size;
        for index in 0 .. (size) - 1 loop
            itemInterface := ItemInterface_Access (itemVector.get (index));
            numberInStock := To_Unbounded_String (Java_Image (itemInterface.getNumber)).intValue;
            This.totalNumberOfItems := (This.totalNumberOfItems) + (Long_Long_Integer (numberInStock));
            itemPriceMoney := itemInterface.getPrice;
            itemPriceMoney.multiply (numberInStock);
            This.totalInventorySaleValueMoney.add (itemPriceMoney.toString);
        end loop;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontInventoryStatistics_Access is
      This : constant StoreFrontInventoryStatistics_Access := new StoreFrontInventoryStatistics;
   begin
      StoreFrontInventoryStatistics_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   function getNumber (This : in out StoreFrontInventoryStatistics) return Long_Long_Integer is
   begin
        return This.totalNumberOfItems;
   end getNumber;

   function getTotal (This : in out StoreFrontInventoryStatistics) return Money_Access is
   begin
        return This.totalInventorySaleValueMoney;
   end getTotal;

   function toHashMap (This : in out StoreFrontInventoryStatistics) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (StoreFrontInventoryStatisticsData_Package.getInstance.NUMBEROFITEMS, Java_Box (StoreFrontInventoryStatistics'Class (This).getNumber.toString));
        hashMap.put (StoreFrontInventoryStatisticsData_Package.getInstance.TOTALVALUE, Java_Box (StoreFrontInventoryStatistics'Class (This).getTotal.toString));
        return hashMap;
   end toHashMap;

   function toVector (This : in out StoreFrontInventoryStatistics) return BasicArrayList_Access is
   begin
        return null;
   end toVector;

   function getKey (This : in out StoreFrontInventoryStatistics) return Java_Object_Access is
   begin
        return null;
   end getKey;

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package;



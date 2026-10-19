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


with org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package;

package body org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package is

   package OrderHistoryInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderHistoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out StoreFrontOrdersHistoryStatistics'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontOrdersHistoryStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      orderHistoryEntityInterface : OrderHistoryEntityInterface_Access;
      orderHistoryInterfaceVector : BasicArrayList_Access;
      numberOfOrders : Long_Long_Integer;
      orderHistoryInterface : OrderHistoryInterface_Access;
      size : Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.subTotalMoney := Money_Package.Create;
        This.shippingCostMoney := Money_Package.Create;
        This.taxesMoney := Money_Package.Create;
        This.totalMoney := Money_Package.Create;
        orderHistoryEntityInterface := OrderHistoryEntityInterface_Access (OrderHistoryEntityFactory_Package.getInstance);
        orderHistoryInterfaceVector := orderHistoryEntityInterface.getStoreOrders (storeFrontInterface);
        numberOfOrders := 0;
        orderHistoryInterface := null;
        size := orderHistoryInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            orderHistoryInterface := OrderHistoryInterface_Access (orderHistoryInterfaceVector.get (index));
            numberOfOrders := (numberOfOrders) + (1);
            This.subTotalMoney.add (orderHistoryInterface.getSubTotal);
            This.shippingCostMoney.add (orderHistoryInterface.getShippingCost);
            This.taxesMoney.add (orderHistoryInterface.getTaxes);
            This.totalMoney.add (orderHistoryInterface.getTotal);
        end loop;
        This.numberOfOrdersLong := numberOfOrders;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontOrdersHistoryStatistics_Access is
      This : constant StoreFrontOrdersHistoryStatistics_Access := new StoreFrontOrdersHistoryStatistics;
   begin
      StoreFrontOrdersHistoryStatistics_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   function getNumberOfOrders (This : in out StoreFrontOrdersHistoryStatistics) return Long_Long_Integer is
   begin
        return This.numberOfOrdersLong;
   end getNumberOfOrders;

   function getSubTotal (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access is
   begin
        return This.subTotalMoney;
   end getSubTotal;

   function getShippingCost (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access is
   begin
        return This.shippingCostMoney;
   end getShippingCost;

   function getTaxes (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access is
   begin
        return This.taxesMoney;
   end getTaxes;

   function getTotal (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access is
   begin
        return This.totalMoney;
   end getTotal;

   function toHashMap (This : in out StoreFrontOrdersHistoryStatistics) return HashMap_Access is
      hashMap : HashMap_Access;
      storeFrontOrdersHistoryStatisticsData : StoreFrontOrdersHistoryStatisticsData_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        storeFrontOrdersHistoryStatisticsData := StoreFrontOrdersHistoryStatisticsData_Package.getInstance;
        hashMap.put (storeFrontOrdersHistoryStatisticsData.NUMBEROFORDERS, Java_Box (StoreFrontOrdersHistoryStatistics'Class (This).getNumberOfOrders.toString));
        hashMap.put (storeFrontOrdersHistoryStatisticsData.SUBTOTAL, Java_Box (StoreFrontOrdersHistoryStatistics'Class (This).getSubTotal.toString));
        hashMap.put (storeFrontOrdersHistoryStatisticsData.SHIPPINGCOST, Java_Box (StoreFrontOrdersHistoryStatistics'Class (This).getShippingCost.toString));
        hashMap.put (storeFrontOrdersHistoryStatisticsData.TAXES, Java_Box (StoreFrontOrdersHistoryStatistics'Class (This).getTaxes.toString));
        hashMap.put (storeFrontOrdersHistoryStatisticsData.TOTAL, Java_Box (StoreFrontOrdersHistoryStatistics'Class (This).getTotal.toString));
        return hashMap;
   end toHashMap;

   function toVector (This : in out StoreFrontOrdersHistoryStatistics) return BasicArrayList_Access is
   begin
        return null;
   end toVector;

   function getKey (This : in out StoreFrontOrdersHistoryStatistics) return Java_Object_Access is
   begin
        return null;
   end getKey;

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package;



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


package body org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package is

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
        orderHistoryEntityInterface := OrderHistoryEntityFactory_Package.getInstance;
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
        hashMap.put (storeFrontOrdersHistoryStatisticsData.NUMBEROFORDERS, This.getNumberOfOrders.toString);
        hashMap.put (storeFrontOrdersHistoryStatisticsData.SUBTOTAL, This.getSubTotal.toString);
        hashMap.put (storeFrontOrdersHistoryStatisticsData.SHIPPINGCOST, This.getShippingCost.toString);
        hashMap.put (storeFrontOrdersHistoryStatisticsData.TAXES, This.getTaxes.toString);
        hashMap.put (storeFrontOrdersHistoryStatisticsData.TOTAL, This.getTotal.toString);
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



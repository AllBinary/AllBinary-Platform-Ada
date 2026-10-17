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


package body org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package is

   procedure Initialize_Fields (This : in out OrderProcessorUtil'Class) is
   begin
      null;
      This.ORDER_PROCESSED := To_Unbounded_String ("Order Processed");
   end Initialize_Fields;

   procedure Initialize (This : in out OrderProcessorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OrderProcessorUtil_Access is
      This : constant OrderProcessorUtil_Access := new OrderProcessorUtil;
   begin
      OrderProcessorUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return OrderProcessorUtil_Access is
   begin
        return OrderProcessorUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function process (This : in out OrderProcessorUtil; userName : Unbounded_String; order : Order_Access) return Unbounded_String is
      orderItems : OrderItemsEntity_Access;
      orderHistory : OrderHistoryEntity_Access;
   begin
        orderItems := OrderItemsEntity_Package.Create;
        orderHistory := OrderHistoryEntity_Package.Create;
        order.setId (OrderIdGenerator_Package.Create.getNext);
        orderItems.insert (userName, order);
        orderHistory.insert (userName, order);
        return This.ORDER_PROCESSED;
   end process;

   procedure process (This : in out OrderProcessorUtil; userName : Unbounded_String; order : Order_Access) is
      Java_Result : constant Unbounded_String := OrderProcessorUtil'Class (This).process (userName, order);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

begin
   null;
   instance := OrderProcessorUtil_Package.Create;

end org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package;



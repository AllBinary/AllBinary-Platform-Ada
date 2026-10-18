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



package body org.allbinary.business.user.commerce.inventory.order.OrderData_Package is

   procedure Initialize_Fields (This : in out OrderData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OrderData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OrderData_Access is
      This : constant OrderData_Access := new OrderData;
   begin
      OrderData_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   ORDERS := To_Unbounded_String ("ORDERS");
   ORDER := To_Unbounded_String ("ORDER");
   ID := To_Unbounded_String ("ORDER_ID");
   CUSTOMERCOMMENT := To_Unbounded_String ("ORDER_CUSTOMER_COMMENT");
   CUSTOMERCANCELCOMMENT := To_Unbounded_String ("ORDER_CUSTOMER_CANCEL_COMMENT");
   STORECOMMENT := To_Unbounded_String ("ORDER_STORE_COMMENT");
   STORECANCELCOMMENT := To_Unbounded_String ("ORDER_STORE_CANCEL_COMMENT");

end org.allbinary.business.user.commerce.inventory.order.OrderData_Package;



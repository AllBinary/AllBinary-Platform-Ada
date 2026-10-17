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


package body org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package is

   procedure Initialize_Fields (This : in out OrderHistoryData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OrderHistoryData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OrderHistoryData_Access is
      This : constant OrderHistoryData_Access := new OrderHistoryData;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   MAXIDLEN := 19;
   DATEDELTA := To_Unbounded_String ("DATE_DELTA");
   DATETYPE := To_Unbounded_String ("DATE_TYPE");
   TYPELONG := To_Unbounded_String ("TYPE_LONG");
   TYPECAESAR := To_Unbounded_String ("TYPE_CAESAR");
   TODATE := To_Unbounded_String ("TO_DATE");
   FROMHOUR := To_Unbounded_String ("FROM_HOUR");
   FROMDAY := To_Unbounded_String ("FROM_DAY");
   FROMMONTH := To_Unbounded_String ("FROM_MONTH");
   FROMYEAR := To_Unbounded_String ("FROM_YEAR");
   TOHOUR := To_Unbounded_String ("TO_HOUR");
   TODAY := To_Unbounded_String ("TO_DAY");
   TOMONTH := To_Unbounded_String ("TO_MONTH");
   TOYEAR := To_Unbounded_String ("TO_YEAR");
   ORDERHISTORY := To_Unbounded_String ("ORDERHISTORY");
   SHIPPEDDATE := To_Unbounded_String ("ORDERHISTORY_SHIPPED_DATE");
   ORDERDATE := To_Unbounded_String ("ORDERHISTORY_ORDER_DATE");
   TRANSDATE := To_Unbounded_String ("ORDERHISTORY_TRANS_DATE");
   CANCELDATE := To_Unbounded_String ("ORDERHISTORY_CANCEL_DATE");
   SHIPPEDDATEFORMATTED := To_Unbounded_String ("ORDERHISTORY_SHIPPED_DATE_FORMATTED");
   ORDERDATEFORMATTED := To_Unbounded_String ("ORDERHISTORY_ORDER_DATE_FORMATTED");
   TRANSDATEFORMATTED := To_Unbounded_String ("ORDERHISTORY_TRANS_DATE_FORMATTED");
   CANCELDATEFORMATTED := To_Unbounded_String ("ORDERHISTORY_CANCEL_DATE_FORMATTED");
   SUBTOTAL := To_Unbounded_String ("ORDERHISTORY_SUB_TOTAL");
   SHIPPINGCOST := To_Unbounded_String ("ORDERHISTORY_SHIPPING_COST");
   TAX := To_Unbounded_String ("ORDERHISTORY_TAX");
   TOTAL := To_Unbounded_String ("ORDERHISTORY_TOTAL");
   CANCELINFO := To_Unbounded_String ("ORDERHISTORY_CANCEL_INFO");
   CANCELTYPE := To_Unbounded_String ("ORDERHISTORY_CANCEL_TYPE");
   STATUS := To_Unbounded_String ("ORDERHISTORY_STATUS");
   PREPROCESSINGNAME := To_Unbounded_String ("PREPROCESSING");
   PROCESSINGNAME := To_Unbounded_String ("PROCESSING");
   CANCELLEDNAME := To_Unbounded_String ("CANCELLED");
   PARTIALLYSHIPPEDNAME := To_Unbounded_String ("PARTIALLYSHIPPED");
   SHIPPEDNAME := To_Unbounded_String ("SHIPPED");
   PREPROCESSING := To_Unbounded_String ("Order Preprocessing");
   PROCESSING := To_Unbounded_String ("Order Processing");
   CANCELLED := To_Unbounded_String ("Order Cancelled");
   PARTIALLYSHIPPED := To_Unbounded_String ("Order Partially Shipped");
   SHIPPED := To_Unbounded_String ("Order Shipped");
   SETSTATUS := To_Unbounded_String ("Set Status");

end org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;



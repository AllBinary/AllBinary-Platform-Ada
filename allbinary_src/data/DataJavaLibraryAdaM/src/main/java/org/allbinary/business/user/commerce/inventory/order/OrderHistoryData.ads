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

package org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package is


   type OrderHistoryData is tagged;
   type OrderHistoryData_Access is access all OrderHistoryData'Class;
   type OrderHistoryData_Access_Array is array (Natural range <>) of OrderHistoryData_Access;
   type OrderHistoryData_Access_Array_Access is access all OrderHistoryData_Access_Array;
   type OrderHistoryData_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryData_Access_Array_Access;
   type OrderHistoryData_Access_Array_Access_Array_Access is access all OrderHistoryData_Access_Array_Access_Array;

   type OrderHistoryData is new Java_Object with null record;
   MAXIDLEN : Integer;
   DATEDELTA : Unbounded_String;
   DATETYPE : Unbounded_String;
   TYPELONG : Unbounded_String;
   TYPECAESAR : Unbounded_String;
   TODATE : Unbounded_String;
   FROMHOUR : Unbounded_String;
   FROMDAY : Unbounded_String;
   FROMMONTH : Unbounded_String;
   FROMYEAR : Unbounded_String;
   TOHOUR : Unbounded_String;
   TODAY : Unbounded_String;
   TOMONTH : Unbounded_String;
   TOYEAR : Unbounded_String;
   ORDERHISTORY : Unbounded_String;
   SHIPPEDDATE : Unbounded_String;
   ORDERDATE : Unbounded_String;
   TRANSDATE : Unbounded_String;
   CANCELDATE : Unbounded_String;
   SHIPPEDDATEFORMATTED : Unbounded_String;
   ORDERDATEFORMATTED : Unbounded_String;
   TRANSDATEFORMATTED : Unbounded_String;
   CANCELDATEFORMATTED : Unbounded_String;
   SUBTOTAL : Unbounded_String;
   SHIPPINGCOST : Unbounded_String;
   TAX : Unbounded_String;
   TOTAL : Unbounded_String;
   CANCELINFO : Unbounded_String;
   CANCELTYPE : Unbounded_String;
   STATUS : Unbounded_String;
   PREPROCESSINGNAME : Unbounded_String;
   PROCESSINGNAME : Unbounded_String;
   CANCELLEDNAME : Unbounded_String;
   PARTIALLYSHIPPEDNAME : Unbounded_String;
   SHIPPEDNAME : Unbounded_String;
   PREPROCESSING : Unbounded_String;
   PROCESSING : Unbounded_String;
   CANCELLED : Unbounded_String;
   PARTIALLYSHIPPED : Unbounded_String;
   SHIPPED : Unbounded_String;
   SETSTATUS : Unbounded_String;

   procedure Initialize (This : in out OrderHistoryData'Class);
   function Create return OrderHistoryData_Access;

end org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;



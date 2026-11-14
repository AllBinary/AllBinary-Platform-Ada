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

with AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
package org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References is
   type OrderHistoryData_Access is access all org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package.OrderHistoryData'Class;
   type OrderHistoryData_Access_Array is array (Natural range <>) of OrderHistoryData_Access;
   type OrderHistoryData_Access_Array_Access is access all OrderHistoryData_Access_Array;
   type OrderHistoryData_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryData_Access_Array_Access;
   type OrderHistoryData_Access_Array_Access_Array_Access is access all OrderHistoryData_Access_Array_Access_Array;
   type OrderHistoryData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryData_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryData_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryData_Access_Array_Object'Class then OrderHistoryData_Access_Array_Object'Class (Value.all).Value else null);
   type OrderHistoryData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryData_Access_Array_Access_Array_Object'Class then OrderHistoryData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References;

with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OrderHistoryData_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.OrderHistoryData_Access;
   function "=" (Left, Right : OrderHistoryData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References."=";
   subtype OrderHistoryData_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.OrderHistoryData_Access_Array;
   function "=" (Left, Right : OrderHistoryData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References."=";
   subtype OrderHistoryData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.OrderHistoryData_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References."=";
   function Java_Box (Value : OrderHistoryData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryData_Access_Array (Value : access Java_Object'Class) return OrderHistoryData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.Java_Unbox_OrderHistoryData_Access_Array;
   subtype OrderHistoryData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.OrderHistoryData_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References."=";
   subtype OrderHistoryData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.OrderHistoryData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References."=";
   function Java_Box (Value : OrderHistoryData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryData_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderHistoryData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package_References.Java_Unbox_OrderHistoryData_Access_Array_Access_Array;

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



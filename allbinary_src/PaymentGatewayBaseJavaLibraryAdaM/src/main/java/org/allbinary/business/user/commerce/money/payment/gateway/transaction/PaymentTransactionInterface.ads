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

limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References is
   type PaymentTransactionInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package.PaymentTransactionInterface'Class;
   type PaymentTransactionInterface_Access_Array is array (Natural range <>) of PaymentTransactionInterface_Access;
   type PaymentTransactionInterface_Access_Array_Access is access all PaymentTransactionInterface_Access_Array;
   type PaymentTransactionInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionInterface_Access_Array_Access;
   type PaymentTransactionInterface_Access_Array_Access_Array_Access is access all PaymentTransactionInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package is

   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Reference_Types is
   subtype OrderHistory_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access;
   use type OrderHistory_Access;
   subtype OrderHistory_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array;
   use type OrderHistory_Access_Array;
   subtype OrderHistory_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access;
   use type OrderHistory_Access_Array_Access;
   subtype OrderHistory_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array;
   use type OrderHistory_Access_Array_Access_Array;
   subtype OrderHistory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array_Access;
   use type OrderHistory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PaymentTransactionInterface is interface and TableMappingInterface and DomNodeInterface;
   subtype PaymentTransactionInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access;
   function "=" (Left, Right : PaymentTransactionInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   subtype PaymentTransactionInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References."=";
   function Java_Object_Access_From_PaymentTransactionInterface (Value : PaymentTransactionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getOrderHistory (This : in out PaymentTransactionInterface) return OrderHistory_Access is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;



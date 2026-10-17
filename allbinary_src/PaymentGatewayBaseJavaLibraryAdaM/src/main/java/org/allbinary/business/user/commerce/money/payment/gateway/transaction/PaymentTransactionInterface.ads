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
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package is

   package OrderHistory_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package TableMappingInterface_Package renames org.allbinary.data.tables.TableMappingInterface_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;

   type PaymentTransactionInterface is interface and TableMappingInterface and DomNodeInterface;
   type PaymentTransactionInterface_Access is access all PaymentTransactionInterface'Class;
   type PaymentTransactionInterface_Access_Array is array (Natural range <>) of PaymentTransactionInterface_Access;
   type PaymentTransactionInterface_Access_Array_Access is access all PaymentTransactionInterface_Access_Array;
   function getOrderHistory (This : in out PaymentTransactionInterface) return OrderHistory_Access is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;



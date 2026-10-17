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
with org.allbinary.data.generator.OrderIdGenerator_Package; use org.allbinary.data.generator.OrderIdGenerator_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;

package org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package is

   package OrderIdGenerator_Package renames org.allbinary.data.generator.OrderIdGenerator_Package;
   package OrderHistoryEntity_Package renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
   package OrderItemsEntity_Package renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;

   type OrderProcessorUtil is tagged;
   type OrderProcessorUtil_Access is access all OrderProcessorUtil'Class;
   type OrderProcessorUtil_Access_Array is array (Natural range <>) of OrderProcessorUtil_Access;
   type OrderProcessorUtil_Access_Array_Access is access all OrderProcessorUtil_Access_Array;

   type OrderProcessorUtil is new Java_Object with record
      ORDER_PROCESSED : Unbounded_String;
   end record;
   instance : OrderProcessorUtil_Access;

   procedure Initialize (This : in out OrderProcessorUtil'Class);
   function Create return OrderProcessorUtil_Access;
   function getInstance return OrderProcessorUtil_Access;
   procedure getInstance;
   function process (This : in out OrderProcessorUtil; userName : Unbounded_String; order : Order_Access) return Unbounded_String;
   procedure process (This : in out OrderProcessorUtil; userName : Unbounded_String; order : Order_Access);

end org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package;


